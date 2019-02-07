import React from "react"
import PropTypes from "prop-types"

import Header from './pages/Header'

class AuthenticatedApp extends React.Component {
  render () {
    return (
      <div>
        <Header />
        <h1>Authenticated</h1>
      </div>
    );
  }
}

export default AuthenticatedApp
