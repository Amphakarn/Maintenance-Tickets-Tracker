import React from "react";
import Pie_Chart from "./Pie_Chart";
import Bar_Chart from "./Bar_Chart";

import prop1 from "./prop1.jpg";
import prop2 from "./prop2.jpg";
import prop3 from "./prop3.jpg";
import money from "./money_logo.png";

import { Card, Button, Badge } from 'react-bootstrap';
// import { Button } from 'react-bootstrap';
import "./Individual_Property_Interface.scss";

export default function Individual_Property_Interface(props) {
  console.log("***Inside Individual_Property_Interface: ", props);
  
  /*
    (3,'Brando Gateway','3116 Brando Gateway','APT 4604','Toronto','Ontario','56465','Condominium','http://placeimg.com/640/480/business'),
    (3,'Amanda Loaf','536 Amanda Loaf','APT 5214','Toronto','Ontario','93432','Condominium','http://placeimg.com/640/480/business'),
    (3,'12 University St.','12 University St.','APT 5214','Toronto','Ontario','93432','Condominium','http://placeimg.com/640/480/business');
  */
  const properties2 = [
    {
      id: 11,
      address: '3116 Brando Gateway'
    },
    {
      id: 12,
      address: '536 Amanda Loaf'
    },
    {
      id: 13,
      address: '12 University St.'
    }
  ];

  const {selectedProperty, ticketsForSelectedProperty} = props;

  const getTotalPropertyCosts = function (ticketsForSelectedProperty) {

    let totalActualCosts = 0;

    for (let ticket of ticketsForSelectedProperty) {
      if(ticket.ticket_status_id === 3){
        totalActualCosts += ticket.actual_cost;
      }
    }
    return totalActualCosts;
  }

  let totalPropertyCosts = getTotalPropertyCosts(ticketsForSelectedProperty);

  const getPropertyAddress = function (selectedProperty, properties) {
    let propertyAddress = "";
    if(properties){
      for (let property of properties) {
        if(property.id === selectedProperty){
          propertyAddress = property.address;
        } 
      }
    }
    return propertyAddress;
  }


  const getTotalCostsByType = function (ticketsForSelectedProperty) {
    let result = {
      plumbingCosts : 0,
      electricalCosts : 0,
      general : 0
    }

    for (let ticket of ticketsForSelectedProperty) {

      if(ticket.maintenance_type_id === 1 && ticket.ticket_status_id === 3){
        result.plumbingCosts += ticket.actual_cost;
      } 
      if(ticket.maintenance_type_id === 2 && ticket.ticket_status_id === 3){
        result.electricalCosts += ticket.actual_cost;
      } 
      if(ticket.maintenance_type_id === 3 && ticket.ticket_status_id === 3){
        result.general += ticket.actual_cost;
      } 
    }
    return result;
  }
  let costsByType = getTotalCostsByType (ticketsForSelectedProperty);

  let propertyAddress = getPropertyAddress(selectedProperty, properties2);

  return (
    <main className="stats__view">
      <section className="top">
        <section className="address__title">
          <Card className="bg-dark text-white">

            { selectedProperty === 11 &&
                <Card.Img src={prop1} alt="Card image" />
            }
            { selectedProperty === 12 &&
                <Card.Img src={prop2} alt="Card image" />
            }
            { selectedProperty === 13 &&
                <Card.Img src={prop3} alt="Card image" />
            }
            <Card.ImgOverlay>
              <Card.Title>Condominium</Card.Title>
              <Card.Text>
                {propertyAddress}
              </Card.Text>
            </Card.ImgOverlay>
          </Card>
        </section>
        <section className="property__cards__ind">
          <Card>
            <Card.Img variant="top" src={money} style={{ height: '200px', width: '400px', paddingLeft: '90px', paddingRight: '90px', paddingTop: '30px', paddingBottom: '5px' }} />
            <Card.Body>
              <Card.Text>
                <b>Total Expenses</b>
            </Card.Text>
            <Card.Text>
                January 2020 - 2021
            </Card.Text>
              <Card.Title style={{ fontSize: '50px', textAlign: 'center', color: '#3FA1DB' }} >${totalPropertyCosts}</Card.Title>
            </Card.Body>
          </Card>
          <Card>
            <Card.Body>
            <Card.Text>
                <b>Overview (2020-2021)</b>
            </Card.Text>
            <Card.Text>
                Plumbing
            </Card.Text>
              <Card.Title style={{ fontSize: '50px', textAlign: 'center', color: '#3FA1DB' }} >${ costsByType.plumbingCosts}</Card.Title>
              <Card.Text>
                Electrical
            </Card.Text>
              <Card.Title style={{ fontSize: '50px', textAlign: 'center', color: '#3FA1DB' }} >${costsByType.electricalCosts}</Card.Title>
              <Card.Text>
                General Maint.
            </Card.Text>
              <Card.Title style={{ fontSize: '50px', textAlign: 'center', color: '#3FA1DB' }} >${costsByType.general}</Card.Title>
            
            </Card.Body>
          </Card>
        </section>
      </section>
      <section className="middle">
        <section className="ticket__info__specific">
          <Button variant="danger" size="lg">
            Unresolved Tickets:  <Badge style={{fontSize: '25px'}}variant="light">{props.specificStats.totalUnsolved}</Badge>
            <span className="sr-only">unread messages</span>
          </Button>
          <Button variant="warning" size="lg">
            Pending Tickets:  <Badge style={{fontSize: '25px'}}variant="light">{props.specificStats.pending}</Badge>
            <span className="sr-only">unread messages</span>
          </Button>
          <Button variant="success" size="lg">
            In Progress:  <Badge style={{fontSize: '25px'}}variant="light">{props.specificStats.in_Progress}</Badge>
            <span className="sr-only">unread messages</span>
          </Button>
        </section>
      </section>
      <section className="prop__data">
        <section className="left">
          <section className="graph_cost">
            <Card>
              <Card.Header>Maintenance Cost: Estimates Cost Vs. Actual Cost</Card.Header>
              <Card.Body>
                <Bar_Chart specificTicketsforProperty={props.ticketsForSelectedProperty} />
              </Card.Body>
            </Card>
          </section>
        </section>
        <section className="right">
          <section className="graph__pie">
              <Card>
                <Card.Header>Percentage of Maintenance Types</Card.Header>
                <Card.Body>
                  <Pie_Chart specificTicketsforPropertyPie={props.ticketsForSelectedProperty} />
                </Card.Body>
              </Card>
            </section>
        </section>
      </section>
    </main>

  );
}
