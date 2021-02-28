import React, { useState } from "react";
import { useHistory } from "react-router-dom";
import { Form, Button, Image } from "react-bootstrap";
import "./Login.scss";
// import background from "./Dashboard_Tenant/assets/background.jpg";
import logo from "./MTrack_White.png";
import background from "./tools__logo.jpg";

const axios = require("axios");

export default function Login(props) {
  const history = useHistory();

  const [inputsState, setInputsState] = useState({
    emailInput: "",
    passwordInput: "",
  });

  // Handle input changing of state on the login form
  const onFormChange = function (inputType, newValue) {
    if (inputType === "email") {
      setInputsState({
        ...inputsState,
        emailInput: newValue,
      });
    }

    if (inputType === "password") {
      setInputsState({
        ...inputsState,
        passwordInput: newValue,
      });
    }
  };

  //  1 ('propertyManager'),
  //  2 ('tenant'),
  //  3 ('plumber'),
  //  4 ('electrician'),
  //  5 ('general-maintenance')

  const getPathForRole = (userRole) => {
    const paths = {
      1: "/dashboard-pm-stats",
      2: "/dashboard-tenant",
      3: "/dashboard-employee",
      4: "/dashboard-employee",
      5: "/dashboard-employee",
    };

    return paths[userRole] || "/login";
  };
  // *******************
  const onLoginSubmit = () => {
    const currentEmail = inputsState.emailInput;
    const currentPassword = inputsState.passwordInput;
    console.log("currentEmail: ", currentEmail);
    console.log("currentPassword: ", currentPassword);
    console.log("Button submitted");

    return axios
      .post(`/login`, {
        email: currentEmail,
        password: currentPassword,
      })
      .then((response) => {
        console.log("RESPONSE: ", response.data);
        if (response.data) {
          props.setLoginUser((prev) => ({
            ...prev,
            loggedIn: true,
            userEmail: response.data.email,
            userRole: response.data.role_id,
          }));
          history.push(getPathForRole(response.data.role_id));
        }
      });
  };
  // **************************
  return (
    <>
      <section className="login__page">
        <section className="left__login">
          <Image
            src={background}
            alt="background img"
            fluid
            className="login__bkg"
          />
        </section>
        <section className="right__login">
          <Form className="login__form">
            <img className="logo__login" src={logo}></img>
            <h1 className="login__title">Login Here!</h1>
            <Form.Group controlId="formGroupEmail">
              <Form.Label className="form__label">Email address</Form.Label>
              <Form.Control
                className="issue__create-input"
                value={inputsState.emailInput}
                name="email"
                onChange={(event) => onFormChange("email", event.target.value)}
                description="description"
                type="email"
                placeholder="Enter email..."
              />
            </Form.Group>
            <Form.Group controlId="formGroupPassword">
              <Form.Label className="form__label">Password</Form.Label>
              <Form.Control
                type="password"
                name="password"
                placeholder="Enter password..."
                value={inputsState.passwordInput}
                onChange={(event) =>
                  onFormChange("password", event.target.value)
                }
              />
            </Form.Group>
            <h5 className="no__account">No account?</h5>
            <h5 className="no__account">
              Click<a href="/register"> here</a> to register!
            </h5>
            <Button
              className="issue__actions"
              onClick={onLoginSubmit}
              variant="secondary"
              type="submit"
            >
              Login
            </Button>
          </Form>
        </section>
      </section>
    </>
  );
}
