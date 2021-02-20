import React, { useState } from "react";
import Issue_Form from "./Issue_Form";
import Top_NavBar_Tenant from "./Top_Nav_Bar_Tenant";

export default function Dashboard_Tenant(props) {
  const [maintenanceType, setMaintenanceType] = useState("");

  return (
    <>
      <div className="dashboard-interface">
        <div>
          <Top_NavBar_Tenant />
        </div>
        <section className="Tenant_View">
          <h1 className="Text--address-header">
            42 Wallaby Way Toronto, ON M1P 3R9
          </h1>
          <Issue_Form />
        </section>
      </div>
    </>
  );
}
