import React from "react"
import PropTypes from "prop-types"
import {
  BrowserRouter as Router,
  Route,
  Switch,
  Link
} from 'react-router-dom'
import {
  Button,
  Navbar,
  Nav
} from 'reactstrap'

import Header from './pages/Header'
import Listings from './pages/Listings'


class UnauthenticatedApp extends React.Component {
  render () {
    return (
      <div>
        <Header />
        <Router>
          <div>
            <Navbar>
              <Nav>
                <Link to="/">
                  Home
                </Link>
              </Nav>

              <Nav>
                <Link to="/guest/listings">Listings</Link>
              </Nav>
            </Navbar>

            <Route path="/guest/listings" component={Listings} />
          </div>
        </Router>
      </div>

    );
  }
}

export default UnauthenticatedApp
