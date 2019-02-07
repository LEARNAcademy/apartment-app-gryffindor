import React from "react"
import PropTypes from "prop-types"
import {
  BrowserRouter as Router,
  Route,
  Switch
} from 'react-router-dom'

import Header from './pages/Header'

class UnauthenticatedApp extends React.Component {
  render () {
    return (
      <div>
        <Header />
        <h1>Unauthenticated</h1>

      </div>
    );
  }
}

export default UnauthenticatedApp
