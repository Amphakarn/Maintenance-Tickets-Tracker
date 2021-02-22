import React, { useState } from "react";
import { useHistory } from "react-router-dom";
import MyVerticallyCenteredModal from "./tenantIssue_Modal";
import Spinner from "react-bootstrap/Spinner";
import { Button, Form, Col, Row } from "react-bootstrap";
import Container from "react-bootstrap/Container";
import Card from "react-bootstrap/Card";
import axios from "axios";
import background from "./assets/background.jpg";
import property1 from "./assets/adrien-olichon_Rev.png";
import "./Issue_Form.scss";

export default function Issue_Form(props) {
  const history = useHistory();

  ////////////// GET ACTUAL DATA LATER AND SET AS PROPS.////////////////
  const property_id = 11;
  const creator_id = 7;

  const [issue, setIssue] = useState({
    description: "",
    maintenance_type: "general maintenance",
  });
  const [showModal, setShowModal] = useState(false);

  const handleShowModal = () => {
    setShowModal(!showModal);
  };

  const handleDescriptionChange = (event) => {
    const target = event.target;
    const value = target.value;
    const name = target.name;
    setIssue((issue) => ({
      ...issue,
      description: value,
    }));
  };

  const handleMaintenanceChange = (event) => {
    const target = event.target;
    const value = target.type === "checkbox" ? target.checked : target.value;
    const name = target.name;
    setIssue((issue) => ({
      ...issue,
      maintenance_type: value,
    }));
  };

  const onSubmit = () => {
    let maintenance_type_id = 0;
    if (issue.maintenance_type === "plumbing") {
      maintenance_type_id = 1;
    } else if (issue.maintenance_type === "electrical") {
      maintenance_type_id = 2;
    } else {
      maintenance_type_id = 3;
    }
    handleShowModal();

    return axios
      .post(`/tickets/new`, {
        property_id: property_id,
        creator_id: creator_id,
        maintenance_type_id: maintenance_type_id,
        description: issue.description,
      })
      .then((response) => {
        console.log("RESPONSE: ", response.data);
        history.push("/dashboard-tenant");
        setIssue((issue) => ({
          ...issue,
          description: "",
          maintenance_type: "general maintenance",
        }));
      });
  };

  return (
    <Container fluid="md">
      <Card className="bg-dark text-white">
        <Card.Body className="text-address">
          Address: 3116 Brando Gateway
        </Card.Body>
        <Card.Img src={background} alt="background img" />
        <Card.ImgOverlay>
          <Form
            className="issue-form"
            onSubmit={(event) => event.preventDefault()}
          >
            <Form.Group as={Col} controlId="formHorizontalEmail">
              <Form.Text className="text-label">
                Please fill out the maintenance request and select a maintenance
                type:
              </Form.Text>
              <Form.Label column sm={4}>
                Description:
              </Form.Label>
              <Col sm={10}>
                <Form.Control
                  value={issue.description}
                  name="description"
                  onChange={handleDescriptionChange}
                  description="description"
                  type="text"
                  placeholder="Please enter maintenance description..."
                />
              </Col>
            </Form.Group>

            <fieldset>
              <Form.Group as={Col}>
                <Form.Label as="legend" column sm={6}>
                  Maintenance Type:
                </Form.Label>
                <Row sm={5} className="maintenance-radio-buttons">
                  <Form.Check
                    className="maintenance-types"
                    type="radio"
                    label="Plumbing"
                    name="maintenance_type"
                    id="plumbing"
                    value="plumbing"
                    checked={issue.maintenance_type === "plumbing"}
                    onChange={handleMaintenanceChange}
                  />
                  <Form.Check
                    type="radio"
                    label="Electrical"
                    name="maintenance_type"
                    id="electrical"
                    value="electrical"
                    checked={issue.maintenance_type === "electrical"}
                    onChange={handleMaintenanceChange}
                  />
                  <Form.Check
                    type="radio"
                    label="General Maintenance"
                    name="maintenance_type"
                    id="general maintenance"
                    value="general maintenance"
                    checked={issue.maintenance_type === "general maintenance"}
                    onChange={handleMaintenanceChange}
                  />
                </Row>
              </Form.Group>
            </fieldset>

            <Form.Group as={Col}>
              <Col sm={{ span: 10, offset: 7 }}>
                <Button type="submit" onClick={onSubmit}>
                  Submit maintenance request
                </Button>
              </Col>
            </Form.Group>
          </Form>
        </Card.ImgOverlay>
      </Card>
      <MyVerticallyCenteredModal show={showModal} onHide={handleShowModal} />
    </Container>
  );
}
