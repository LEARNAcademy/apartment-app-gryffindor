import React from "react"
import PropTypes from "prop-types"
import {
  BrowserRouter as Router,
  Route,
  Switch
} from 'react-router-dom'

import Header from './pages/Header'
import Listings from './pages/Listings'

class UnauthenticatedApp extends React.Component {
  render () {
    return (
      <div>
        <Header />
        <Router>
          <div>
            <Route path="/guest" component={Listings} />
            // <Route path="/header" component={Header} />
          </div>
        </Router>
      </div>
    );
  }
}

export default UnauthenticatedApp
