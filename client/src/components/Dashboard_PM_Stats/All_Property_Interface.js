import React from "react";
// import Button from "./Button";
import Comparison_Chart from "./Comparison_Chart";

export default function All_Property_Interface(props) {

  //const {specificStats} = props; 
  console.log("This is props:")
  console.log(props);

  return (
    <main className="stats__view">
      <section className="ticket__info">
        <h2 className="Text--semi-bold">Total Unsolved Tickets:</h2>
        <h1 className="Text--big-bold">{props.specificStats.totalUnsolved}</h1>
        <h2 className="Text--semi-bold">Pending:</h2>
        <h1 className="Text--big-bold">{props.specificStats.pending}</h1>
        <h2 className="Text--semi-bold">In Progress:</h2>
        <h1 className="Text--big-bold">{props.specificStats.in_Progress}</h1>
      </section>
      <section className="expenses__info">
        <h2 className="Text--semi-bold">Total Expenses:</h2>
        <h1 className="Text--big-bold">$12,432</h1>
      </section>
      <Comparison_Chart />
    </main>
  );
}
