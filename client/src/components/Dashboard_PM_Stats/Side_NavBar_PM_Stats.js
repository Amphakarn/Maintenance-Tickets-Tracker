import React, { useState, Component } from 'react';
import { useEffect } from 'react';
import "./Side_NavBar_PM_Stats.scss";
import "./map.scss";
import PropertyList from "./PropertyList";
import Map_SideBar from "./property_map";
import logo from "../MTrack_White.png"



export default function Side_NavBar_Emp(props) {
  const { selectProperty, properties, selectedProperty } = props;
  return (
    <>
      <main className="layout" style={{ backgroundImage: 'linear-gradient(#f67a36,#ed008c)' }}>
        <head>
          <script src='https://api.mapbox.com/mapbox-gl-js/v2.1.1/mapbox-gl.js'></script>
          <link href='https://api.mapbox.com/mapbox-gl-js/v2.1.1/mapbox-gl.css' rel='stylesheet' />
          {/* add MapboxGeocoder */}
          <script src="https://api.mapbox.com/mapbox-gl-js/plugins/mapbox-gl-geocoder/v4.5.1/mapbox-gl-geocoder.min.js"></script>
          <link
            rel="stylesheet"
            href="https://api.mapbox.com/mapbox-gl-js/plugins/mapbox-gl-geocoder/v4.5.1/mapbox-gl-geocoder.css"
            type="text/css"
          />
          {/* polyfil */}
          <script src="https://cdn.jsdelivr.net/npm/es6-promise@4/dist/es6-promise.min.js"></script>
          <script src="https://cdn.jsdelivr.net/npm/es6-promise@4/dist/es6-promise.auto.min.js"></script>
        </head>
        <section className="sidebar">
          <section className="image__logo">
            {<img
              alt=""
              src={logo}
              width="180"
              height="34"
              className="d-inline-block align-top"
            />}
          </section>
          <hr className="sidebar__separator sidebar--centered" />
          <nav className="sidebar__menu">'

            <PropertyList
              selectProperty={selectProperty}
              properties={properties}
              selectedProperty={selectedProperty}

            />
          </nav>
          <div className='map'>
            <Map_SideBar />
          </div>
        </section>
      </main>
    </>
  );
}
