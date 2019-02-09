import React from "react"
import PropTypes from "prop-types"
import {
  BrowserRouter as Router,
  Route,
  Switch
} from 'react-router-dom'

import Header from './pages/Header'
import Listings from './pages/Listings'
import NewApartment from './pages/NewApartment'

class AuthenticatedApp extends React.Component {
  render () {
    return (
      <div>
        <Header />
        <Router>
          <div>
            <Route path="/member" component={Listings} />
            <Route path="/member" component={NewApartment} />
          </div>
        </Router>
      </div>
    );
  }
}

export default AuthenticatedApp
