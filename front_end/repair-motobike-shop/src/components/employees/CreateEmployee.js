/* eslint-disable react/prop-types */
import React, { useState, useEffect } from "react";
import EmployeesService from "../../services/employees.js";
import "../../assets/css/employees/createEmployee.css";
import RolesService from "services/RoleService.js";
import { ArrowDropDown, NavigateBefore, NavigateBeforeSharp, NavigateNext, NextWeek, People, SkipNext } from "@material-ui/icons";
import Snackbars from 'components/Snackbar/Snackbar.js';

function CreateEmployee(props) {
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
  
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [name, setName] = useState("");
  const [address, setAddress] = useState("");
  const [phone, setPhone] = useState("");
  const [email, setEmail] = useState("");
  const [sex, setSex] = useState("");
  const [roles, setRoles] = useState([]);
  const [roleName, setRoleName] = useState("");
  const [roleDescription, setRoleDescription] = useState("");
  const [roleClass, setRoleClass] = useState('');
  const [modalClass, setModalClass] = useState('');


  const changeUsername = (event) => {
    setUsername(event.target.value);
  };
  const changePassword = (event) => {
    setPassword(event.target.value);
  };
  const changeName = (event) => {
    setName(event.target.value);
  };
  const changeAddress = (event) => {
    setAddress(event.target.value);
  };
  const changePhone = (event) => {
    setPhone(event.target.value);
  };
  const changeEmail = (event) => {
    setEmail(event.target.value);
  };
  const changeSex = (event) => {
    setSex(event.target.value);
  };
  const changeRoleName = (event) => {
    setRoleName(event.target.value);
  };
  const changeRoleDescription = (event) => {
    setRoleDescription(event.target.value);
  };

  const displayCreateRole = () => {
    if (roleClass == '') {
      setRoleClass('display-role');
      setModalClass('display-modal');
      console.log("ROLE : " + roleClass);
    } else {
      setRoleClass('');
    }
  }

  const hiddenFormRole = () => {
    if (roleClass == '') {
      setRoleClass('hidden-role');
      setModalClass('hidden-modal');
      console.log("ROLE : " + roleClass);
    } else {
      setRoleClass('');
      setModalClass('');
    }
  }

  useEffect(() => {
    async function fetchRole() {
      RolesService.getRoleUsing()
        .then((res) => {
          console.log("List Role : " + res.data);
          let roles = res.data;
          setRoles(
            roles.map((role) => {
              return {
                select: false,
                id: role.id,
                code: role.code,
                name: role.name,
                description: role.description,
                status: role.status
              }
            }));
        })
    }
    fetchRole();
  }, []);

  //T???o role m???i
  const saveRole = (e) => {
    e.preventDefault();
    let role = { roleName, roleDescription };
    console.log("role => " + JSON.stringify(role));
    RolesService.postRoles(role)
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
  }

  //t???o nh??n vi??n m???i
  const saveEmployee = (e) => {
    e.preventDefault();
    const roleId = [];
    roles.forEach(role => {
      if (role.select) {
        roleId.push(role.id);
      }
    });

    if (roleId.length != 0) {
      console.log("ID: " + roleId);
      let employee = { username, password, name, address, email, phone, sex, roleId };
      console.log("employee => " + JSON.stringify(employee));
      EmployeesService.postEmployee(employee)
        .then(() => {
          props.history.push("/admin/employees");
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
    } else {
      setMessage("Role kh??ng ???????c ????? tr???ng!")
      setTl(true);
      // use this to make the notification autoclose
      setTimeout(
        function () {
          setTl(false)
        },
        3000
      );
    }

  };



  const cancel = () => {
    props.history.push("/admin/employees");
  };

  return (
    <div className="body">
      <Snackbars
        place="tc"
        color="warning"
        message={message}
        open={tl}
        closeNotification={() => setTl(false)}
        close
      />

      <div className="title-employees">
        <div
          className="button-cancel"
          onClick={cancel}
        >
          <NavigateBefore style={{ width: "15px" }} /> <span>Quay l???i</span>
        </div>
        <button className="button-add" onClick={saveEmployee}>
          L??u
        </button>
      </div>
      <div className="add-new-employees">
        <div className="title">
          <span>Th??m m???i nh??n vi??n</span>
        </div>
        <div className="card-body">
          <form>
            <div className="group">
              <div className="group-left">
                <div className="form-group">
                  <label>T??n ????ng nh???p<span style={{ color: "red" }}>*</span>: </label>
                  <br />
                  <input
                    placeholder="??i???n t??n ????ng nh???p"
                    name="username"
                    type="text"
                    className="form-control"
                    value={username}
                    onChange={changeUsername}
                  />
                </div>
                <div className="form-group">
                  <label>M???t kh???u<span style={{ color: "red" }}>*</span>: </label>
                  <br />
                  <input
                    placeholder="??i???n M???t kh???u"
                    name="password"
                    type="password"
                    className="form-control"
                    value={password}
                    onChange={changePassword}
                  />
                </div>
                <div className="form-group-1">
                  <label>Gi???i t??nh<span style={{ color: "red" }}>*</span>: </label>
                  <input
                    name="sex"
                    type="radio"
                    className="form-control"
                    value="true"
                    onChange={changeSex}
                  />
                  <label>Nam </label>
                  <input
                    name="sex"
                    type="radio"
                    className="form-control"
                    value="false"
                    onChange={changeSex}
                  />
                  <label>N??? </label>
                </div>
                <div className="form-group-2">
                  <div className="add-role">
                    <div className="button-add-role" onClick={displayCreateRole}>
                      <span>+ Th??m ch???c v??? m???i</span>
                    </div>
                    <div id="modal" className={modalClass}>
                      <div id="create-role" className={roleClass}>
                        <div className="title-add-role"><div className="title-role"><span >Th??m m???i ch???c v???</span></div> <div className="close"><span onClick={hiddenFormRole}>&times;</span></div></div>
                        <div className="form-group-role">
                          <label>T??n Ch???c v???<span style={{ color: "red" }}>*</span> </label>
                          <br />
                          <input
                            placeholder="??i???n t??n ch???c v??? m???i"
                            name="roleName"
                            className="form-control"
                            value={roleName}
                            onChange={changeRoleName}
                          />
                        </div>
                        <div className="form-group-role">
                          <label>M?? t??? </label>
                          <br />
                          <textarea
                            placeholder="M?? t???"
                            name="roleDescription"
                            className="form-control-2"
                            value={roleDescription}
                            onChange={changeRoleDescription}
                          />
                        </div>
                        <button onClick={saveRole}>T???o</button>
                      </div>
                    </div>
                  </div>
                </div>
                <div className="form-group-role-list">
                  {roles.map((role) => (
                    <div key={role.id} className="role-list">
                      <input
                        type="checkbox"
                        checked={role.select}
                        onChange={e => {
                          let value = e.target.checked;
                          setRoles(
                            roles.map(roleCheck => {
                              if (roleCheck.id === role.id) {
                                roleCheck.select = value;
                              }
                              return roleCheck;
                            })
                          );
                        }} />
                      <label>{role.description}</label>
                    </div>
                  ))}
                </div>
              </div>
              <div className="group-right">
                <div className="form-group">
                  <label>T??n nh??n vi??n<span style={{ color: "red" }}>*</span>: </label>
                  <br />
                  <input
                    placeholder="T??n nh??n vi??n"
                    name="name"
                    type="text"
                    className="form-control"
                    value={name}
                    onChange={changeName}
                  />
                </div>
                <div className="form-group">
                  <label>?????a ch???: </label>
                  <br />
                  <input
                    placeholder="??i???n ?????a ch??? ??? hi???n t???i c???a nh??n vi??n"
                    name="address"
                    className="form-control"
                    value={address}
                    onChange={changeAddress}
                  />
                </div>
                <div className="form-group">
                  <label>S??? ??i???n tho???i<span style={{ color: "red" }}>*</span>: </label>
                  <br />
                  <input
                    placeholder="??i???n s??? ??i???n tho???i c???a nh??n vi??n"
                    name="phone"
                    className="form-control"
                    value={phone}
                    onChange={changePhone}
                  />
                </div>
                <div className="form-group">
                  <label>Email: </label>
                  <br />
                  <input
                    placeholder="??i???n ?????a ch??? email c???a nh??n vi??n"
                    name="email"
                    className="form-control"
                    value={email}
                    onChange={changeEmail}
                  />
                </div>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  );
}
export default CreateEmployee;
