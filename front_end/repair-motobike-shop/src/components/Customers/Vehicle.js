/* eslint-disable no-empty */
/* eslint-disable no-undef */
import React, { useState, useEffect } from "react";
import Pagination from "components/Pagination/pagination";
import "../../assets/css/customers/vehicle.css";
import FiltersForm from "../FiltersForm/VehicleSearch.js";
import LimitPagination from 'components/Pagination/limitPagination.js';

// @material-ui/core components
import { makeStyles } from "@material-ui/core/styles";
// material-ui icons
import CustomerService from "../../services/CustomerService";
import Snackbars from 'components/Snackbar/Snackbar.js';
import Vehicles from "services/VehicleService";
import VehicleCustomerService from "../../services/VehicleCustomerService.js";
import { Add, Create } from "@material-ui/icons";

const styles = {
  cardCategoryWhite: {
    "&,& a,& a:hover,& a:focus": {
      color: "rgba(255,255,255,.62)",
      margin: "0",
      fontSize: "14px",
      marginTop: "0",
      marginBottom: "0",
    },
    "& a,& a:hover,& a:focus": {
      color: "#FFFFFF",
    },
  },
  cardTitleWhite: {
    color: "#FFFFFF",
    marginTop: "0px",
    minHeight: "auto",
    fontWeight: "300",
    fontFamily: "'Roboto', 'Helvetica', 'Arial', sans-serif",
    marginBottom: "3px",
    textDecoration: "none",
    "& small": {
      color: "#777",
      fontSize: "65%",
      fontWeight: "400",
      lineHeight: "1",
    },
  },
};


const useStyles = makeStyles(styles);

export default function (props) {
  React.useEffect(() => {
    // Specify how to clean up after this effect:
    return function cleanup() {
      // to stop the warning of calling setTl of unmounted component
      var id = window.setTimeout(null, 0);
      while (id--) {
        window.clearTimeout(id);
      }
    };
  });

  const [message, setMessage] = useState('');
  const [tl, setTl] = React.useState(false);
  const [vehicles, setVehicles] = useState([]);
  const [error, setError] = useState(null);
  const [isLoaded, setIsLoaded] = useState(false);
  const [modalVehicleClass, setModalVehicleClass] = useState('');
  const [modalCustomerClass, setModalCustomerClass] = useState('');
  const [modalListCustomerClass, setModalListCustomerClass] = useState('');
  const [listCustomers, setListCustomers] = useState([]);

  const [name, setName] = useState("");
  const [phone, setPhone] = useState("");
  const [licensePlate, setLicensePlate] = useState("");
  const [vehicleLicensePlate, setVehicleLicensePlate] = useState("");


  const changeName = (event) => {
    setName(event.target.value);
  };
  const changePhone = (event) => {
    setPhone(event.target.value);
  };
  const changeLicensePlate = (event) => {
    setLicensePlate(event.target.value);
  };

  const [pagination, setPagination] = useState({
    page: 1,
    limit: 10,
    totalRows: 12,
  });
  const [filters, setFilters] = useState({
    page: 1,
    limit: 10,
    keyword: ""
  });

  function handlePageChange(newPage) {
    // console.log("new page: ", newPage);
    setFilters({
      ...filters,
      page: newPage,
    });
  }
  function handleFiltersChange(newFilters) {
    // console.log("New filters: ", newFilters);
    setFilters({
      ...filters,
      _page: 1,
      keyword: newFilters.keyword,
    });
  }
  function handleChangeLimit(newLimit) {
    // console.log("New Month: ", newLimit);
    setFilters({
      ...filters,
      _page: 1,
      limit: newLimit.limit,
    });
  }


  useEffect(() => {
    async function fetchvehicleList() {
      try {
        Vehicles.listVehiclePagination(filters).then((res) => {
          const data = res.data.vehicleDTOResponses;
          const pagination = res.data.pagination;

          setVehicles(
            data.map((vehicle) => {
              return {
                select: false,
                id: vehicle.id,
                code: vehicle.code,
                licensePlate: vehicle.licensePlate,
              }
            }))
          setPagination(pagination);
          console.log(data);
          console.log(pagination);
          setIsLoaded(true);
        }).catch(function (error) {
          console.log("ERROR: " + error.response.data.status)
          if (error.response.data.status == 403) {
            alert("Kh??ng c?? quy???n truy c???p!")
          }
        })
      } catch (error) {
        console.log("Failed to fetch vehicle list: ", error.message);
        setError(error);
      }
    }
    fetchvehicleList();
  }, [filters]);

  //t???o kh??ch h??ng m???i
  const saveVehicleCustomer = (e) => {
    e.preventDefault();

    let customer = { name, phone, licensePlate };
    console.log("vehicle-customer => " + JSON.stringify(customer));
    VehicleCustomerService.addNewVehicleCustomer(customer)
      .then(() => {
        window.location.reload();
      })
      .catch(function (error) {
        if (error.response.data.errors) {
          setMessage(error.response.data.errors[0].defaultMessage)
          setTl(true);
          // use this to make the notification autoclose
          setTimeout(
            function () {
              setTl(false)
            },
            3000
          );
        } else {
          setMessage(error.response.data.message)
          setTl(true);
          // use this to make the notification autoclose
          setTimeout(
            function () {
              setTl(false)
            },
            3000
          );
        }
      });
  };

  //T???o kh??ch h??ng m???i c?? s???n bi???n s???
  const saveCustomerByVehicle = (e) =>{
    e.preventDefault();
    let customerVehicleDTO = { name, phone, licensePlate};
        console.log("Customer => " + customerVehicleDTO)

        CustomerService.postCustomerByVehicle(customerVehicleDTO)
            .then(() => {
                setModalCustomerClass('')
                
            }).catch(function (error) {
                console.log(error.response)
                if (error.response.data.errors) {
                    setMessageError(error.response.data.errors[0].defaultMessage)
                    setFail(true);
                    // use this to make the notification autoclose
                    setTimeout(
                        function () {
                            setFail(false)
                        },
                        3000
                    );
                } else {
                    setMessageError(error.response.data.message)
                    setFail(true);
                    // use this to make the notification autoclose
                    setTimeout(
                        function () {
                            setFail(false)
                        },
                        3000
                    );
                }
            });
  }

  const addVehicleCustomer = () => {
    if (modalVehicleClass == '') {
      setModalVehicleClass('modal-vehicle')
    }
  };

  const hiddenFormVehicle = () => {
    setModalVehicleClass('')
  }

  const getAllCustomer = () => {
    props.history.push(`/admin/customers/get-all-customers`);
  };

  const getListCustomerByVehicleId = (vehicle) => {
    setVehicleLicensePlate(vehicle.licensePlate)
    if (modalListCustomerClass == '') {
      setModalListCustomerClass('modal-list-customer')
    }
      async function fetchvehicleList() {
        try {
          VehicleCustomerService.getListCustomerByVehicleId(vehicle.id).then((res) => {
            const data = res.data.customerDTOResponses;
  
            setListCustomers(
              data.map((customer) => {
                return {
                  select: false,
                  id: customer.id,
                  code: customer.code,
                  name: customer.name,
                  phone: customer.phone
                }
              }))
            setIsLoaded(true);
          }).catch(function (error) {
            console.log("ERROR: " + error.response.data.status)
            if (error.response.data.status == 403) {
              alert("Kh??ng c?? quy???n truy c???p!")
            }
          })
        } catch (error) {
          console.log("Failed to fetch vehicle list: ", error.message);
          setError(error);
        }
      } fetchvehicleList();
  
  }


  const hiddenListCustomerVehicle = () => {
    setModalListCustomerClass('')
  }


  const showFormCreateCustomer = (licensePlate) =>{
    setModalCustomerClass('modal-customer')
    setLicensePlate(licensePlate);
  }
  const hiddenFormCustomer = () =>{
    setModalCustomerClass('');
  }


  const classes = useStyles();


  if (error) {
    return <div>Error: {error.message}</div>;
  } else if (!isLoaded) {
    return <div>Loading....</div>;
  } else {
    return (
      <div className="list-vehicle">
        <div className="title-vehicle">
          <div className="name-title"><span>Danh s??ch xe</span></div>
          <div className="add-new-vehicle"><button className="button-add" onClick={addVehicleCustomer}>Th??m m???i</button></div>
        </div>
        <div className="content-vehicle">
          <Snackbars
            place="tc"
            color="warning"
            message={message}
            open={tl}
            closeNotification={() => setTl(false)}
            close
          />
          <div id="modal-vehicle" className={modalVehicleClass}>
            <div className="create-vehicle">
              <div className="title-add-vehicle"><div className="title-vehicle"><span >Th??m kh??ch h??ng m???i</span></div> <div className="close"><span onClick={hiddenFormVehicle}>&times;</span></div></div>
              <div className="content-vehicle">
                <div className="form-group">
                  <label>T??n kh??ch h??ng</label>
                  <br />
                  <input
                    placeholder="T??n kh??ch h??ng"
                    name="name"
                    type="text"
                    className="form-control"
                    value={name}
                    onChange={changeName}
                  />
                </div>
                <div className="form-group">
                  <label>S??? ??i???n tho???i<span style={{ color: "red" }}>*</span></label>
                  <br />
                  <input
                    placeholder="??i???n s??? ??i???n tho???i c???a kh??ch h??ng"
                    name="phone"
                    className="form-control"
                    value={phone}
                    onChange={changePhone}
                  />
                </div>
                <div className="form-group">
                  <label>Bi???n s??? xe<span style={{ color: "red" }}>*</span></label>
                  <br />
                  <input
                    placeholder="??i???n bi???n s??? xe c???a kh??ch h??ng"
                    name="licensePlate"
                    className="form-control"
                    value={licensePlate}
                    onChange={changeLicensePlate}
                  />
                </div>
              </div>
              <button onClick={saveVehicleCustomer}>T???o</button>
            </div>
          </div>

          <div id="modal-customer" className={modalCustomerClass}>
            <div className="create-vehicle">
              <div className="title-add-vehicle"><div className="title-vehicle"><span >Th??m kh??ch h??ng</span></div> <div className="close"><span onClick={hiddenFormCustomer}>&times;</span></div></div>
              <div className="content-vehicle">
                <div className="form-group">
                  <label>T??n kh??ch h??ng</label>
                  <br />
                  <input
                    placeholder="T??n kh??ch h??ng"
                    name="name"
                    type="text"
                    className="form-control"
                    value={name}
                    onChange={changeName}
                  />
                </div>
                <div className="form-group">
                  <label>S??? ??i???n tho???i<span style={{ color: "red" }}>*</span></label>
                  <br />
                  <input
                    placeholder="??i???n s??? ??i???n tho???i c???a kh??ch h??ng"
                    name="phone"
                    className="form-control"
                    value={phone}
                    onChange={changePhone}
                  />
                </div>
                <div className="form-group">
                  <label>Bi???n s??? xe<span style={{ color: "red" }}>*</span></label>
                  <br />
                  <input
                    placeholder="??i???n bi???n s??? xe c???a kh??ch h??ng"
                    name="licensePlate"
                    className="form-control"
                    value={licensePlate}
                    disabled
                    onChange={changeLicensePlate}
                  />
                </div>
              </div>
              <button onClick={saveCustomerByVehicle}>T???o</button>
            </div>
          </div>

          <div id="modal-list-customer" className={modalListCustomerClass}>
            <div className="create-list-customer">
                <div className="title-add-list-customer"><div className="title-list-customer"><span >Danh s??ch ch??? xe</span><span style={{ color: "red" }}>{vehicleLicensePlate}</span></div> <div className="close"><span onClick={hiddenListCustomerVehicle}>&times;</span></div></div>
                <div className="content-list-customer">
                  <div className="hight-table">
                    <table className="table">
                      <thead>
                        <tr>
                          <th className="th-1">
                            <span>#</span>
                          </th>
                          <th className="th-2">
                            <span>M?? kh??ch h??ng</span>
                          </th>
                          <th className="th-3">
                            <span>H??? v?? t??n</span>
                          </th>
                          <th className="th-4">
                            <span>S??? ??i???n tho???i</span>
                          </th>
                        </tr>
                      </thead>
                      <tbody>
                        {listCustomers.map((customer) => (
                          <tr key={customer.id}>
                            <td className="td-1">
                              <span>{customer.id}</span>
                            </td>
                            <td className="td-2">
                              <span>{customer.code}</span>
                            </td>
                            <td className="td-3">
                              <span>{customer.name}</span>
                            </td>
                            <td className="td-4">
                              <span>{customer.phone}</span>
                            </td>
                          </tr>
                        ))}
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
         

          <div className="filter">
            <FiltersForm onSubmit={handleFiltersChange} />
            <div className="action">
              <div className="add-vehicle">
                <button className="button-action" onClick={getAllCustomer}>Danh s??ch kh??ch h??ng</button>

              </div>
            </div>

          </div>
          <div className="hight-table">
            <table className="table">
              <thead>
                <tr>
                  <th>
                    <span>#</span>
                  </th>
                  <th className="th-1">
                    <span>M?? xe</span>
                  </th>
                  <th className="th-2">
                    <span>Bi???n s??? xe</span>
                  </th>
                  <th className="th-3">
                    <span>Ch??? xe</span>
                  </th>
                  <th className="th-7">
                    <span></span>
                  </th>
                </tr>
              </thead>
              <tbody>
                {vehicles.map((vehicle) => (
                  <tr key={vehicle.id}>
                    <td className="td-2">
                      <span>{vehicle.id}</span>
                    </td>
                    <td className="td-3">
                      <span>{vehicle.code}</span>
                    </td>
                    <td className="td-3">
                      <span>{vehicle.licensePlate}</span>
                    </td>
                    <td className="td-6">
                      <button className="button-icon-customer" onClick={() => getListCustomerByVehicleId(vehicle)}>
                        Th??ng tin chi ti???t
                        <div  className="info-button-customer"><span>B???m ????? xem danh s??ch ch??? xe</span></div>
                      </button>
                      
                    </td>
                    <td className="td-7">
                      <button
                        className="button-icon"
                        onClick={() => showFormCreateCustomer(vehicle.licensePlate)}
                      >
                        <Add style={{ width: "15px" }} /><div className="info-button"><span>Th??m ch??? xe</span></div>
                      </button>
                    </td>

                  </tr>
                ))}
              </tbody>
            </table>
          </div>
          <div className="pagination-limit">
            <div className="limit">
              <span>Hi???n th??? </span><LimitPagination onSubmit={handleChangeLimit} /> <span style={{ marginTop: "21px" }}> k???t qu???</span>
            </div>
            <div className="pagination">
              <Pagination
                pagination={pagination}
                onPageChange={handlePageChange}
              />
            </div>
          </div>
        </div>
      </div>
    );
  }
}
