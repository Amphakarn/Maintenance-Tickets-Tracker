import React, { useState } from "react";
import Button from "./Button";
// import Ticket_List_PM from "./Ticket_List_PM_Pending";
import Employee_List_PM from "./Employee_List_PM";
import MyVerticallyCenteredModal from "./specificTicket_Modal";
import "./Ticket_List_Item_PM.scss";

export default function Ticket_List_Item_PM(props) {
  const [modalShow, setModalShow] = React.useState(false);

  console.log("***Ticket_List_Item_PM --props: ", props);
  const {
    ticketID,
    ticketStatus,
    createdAt,
    unit,
    property_id,
    employees,
    maintenanceType,
    description,
  } = props;

  const hideModal = function (ticket_id, employee_id) {
    setModalShow(false);
    assignEmployeeToTicket(ticket_id, employee_id);
  };

  const employees2 = [
    {
      id: 24,
      name: "Tim",
      role_id: 3,
    },
    {
      id: 25,
      name: "Mike",
      role_id: 4,
    },
    {
      id: 26,
      name: "Rogers",
      role_id: 5,
    },
  ];

  const getEmployeeName = function (employee_id) {
    for (let employee of employees2) {
      if (employee.id === employee_id) {
        return employee.name;
      }
    }
  };

  const [ticketItemState, setState] = useState("employee-unassigned");
  const { assignEmployeeToTicket, employee_id } = props;
  return (
    <main className="ticket__cards">
      <section className="ticket__card-left">
        {/* <div>{unit}</div> */}
        <div>Maintenance type: {maintenanceType}</div>
        <div>Description: {description}</div>
      </section>
      {/*
      <section className="ticket__validation">
        <Employee_List_PM employeeList={employees} />
      </section>
      */}
      <section className="ticket__card-right">
        <div>{ticketStatus}</div>
        <div>Ticket ID: {ticketID}</div>
        <div>Created at: {createdAt}</div>
      </section>
      <>
        {employee_id === null ? (
          <Button variant="success" onClick={() => setModalShow(true)}>
            Assign Employee
          </Button>
        ) : (
          <Button variant="secondary" onClick={() => setModalShow(true)}>
            Assigned to: {getEmployeeName(employee_id)}
          </Button>
        )}
        <MyVerticallyCenteredModal
          employeeList={employees}
          description={description}
          employee_id={employee_id}
          show={modalShow}
          onHide={hideModal}
          ticket_id={ticketID}
          assignEmployeeToTicket={assignEmployeeToTicket}
        />
      </>
      {/*onHide={() => setModalShow(false)}*/}
      <section className="ticket__actions">
        {/* <Button danger onClick={cancel}>
          Cancel
        </Button>
        <Button onClick={validate}>Save</Button> */}
      </section>
    </main>
  );
}
