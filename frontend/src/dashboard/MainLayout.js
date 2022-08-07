import React from "react";
import { Outlet, NavLink } from "react-router-dom";
const navigation = [
  { name: "dashboard", href: "/" },
  { name: "", href: "" },
];

export default function MainLayout() {
  return (
    <div>
      <div>
        <div>
          <span>Code Id</span>
          {navigation.map((item, index) => (
            <NavLink key={index} to={item.href}>
              {item.name}
            </NavLink>
          ))}
        </div>
      </div>
      <div>
        <main>
          {/* Page title & actions */}
          <Outlet />
        </main>
      </div>
    </div>
  );
}
