import "./App.css";
import DashboardHeader from "./dashboard/MainLayout";
import { Navigate, useRoutes } from "react-router-dom";

function App() {
  return useRoutes([
    {
      path: "/",
      element: <DashboardHeader />,
    },
    {
      path: "*",
      element: <Navigate to="/404" replace />,
    },
  ]);
}

export default App;
