
import Employees from "./views/Employees/Employees";
import Customers from "./views/Customer/Customer";
import Services from "./views/Services/Services";
import Material from "./components/materials/Material";
import Invoices from "components/Invoices/Invoices";
import { Equalizer, People, PeopleOutline, Build, BusinessCenter , Dashboard} from "@material-ui/icons";




const dashboardRoutes = [
  {
    path: "/dashboard",
    name: "Tổng Quan",
    icon: Dashboard,
    component: '',
    layout: "/admin",
  },
  {
    path: "/employees",
    name: "Nhân viên",
    icon: PeopleOutline,
    component: Employees,
    layout: "/admin",
    
  },
  {
    path: "/customers",
    name: "Phương tiện",
    icon: People,
    component: Customers,
    layout: "/admin",
  },
  {
    path: "/services",
    name: "Dịch vụ",
    icon: Build,
    component: Services,
    layout: "/admin",
  },
  {
    path: "/materials",
    name: "Phụ tùng",
    icon: BusinessCenter,
    component: Material,
    layout: "/admin",
  },
  {
    path: "/invoices",
    name: "Phiếu sửa chữa",
    icon: "content_paste",
    component: Invoices,
    layout: "/admin",
  },
  {
    path: "/statistics",
    name: "Thống kê",
    icon: Equalizer,
    component: '',
    layout: "/admin"
  },
];

export default dashboardRoutes;
