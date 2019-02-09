import React from 'react'
import ProtoTypes from 'prop-types'
import {
  BrowserRouter as Router,
  Route,
  Link,
  Switch
} from 'react-router-dom'
import {
  Button,
  Navbar,
  Nav
} from 'reactstrap'

class NewApartment extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      responseOk: false,
      aptAttributes: {
        address1: '',
        address2: '',
        city: '',
        state: '',
        postalCode: '',
        country: '',
        managName: '',
        managPhone: '',
        managContactHrs: ''
      }
    }
  }

  handleSubmit = (event) => {
    event.preventDefault()
    console.log('You logged this')
    fetch('/listings.json', {
      method: "POST",
      headers: {"Content-Type": "application/json"},
      body: JSON.stringify({newApartment: this.state.aptAttributes})
    })
    .then((response)=>{
      this.setState({ responseOk: true })
    })
  }
  handleChange = (event) => {
    const { aptAttributes } = this.state
    aptAttributes[event.target.name] = event.target.value
    this.setState({ aptAttributes: aptAttributes })
  }

  render() {
    const { responseOk, aptAttributes } = this.state
    return(
      <div>
        {responseOk &&
          <Redirect to='/guest'/>
        }
          <div>
            <h1>Add New Apartment</h1>
            <form
              onSubmit={this.handleSubmit}
            >
              <label htmlFor="address1">address 1</label>
              <input
                type='text'
                name='address1'
                value={aptAttributes.address1}
                onChange={this.handleChange}
              />
              <br />
              <label htmlFor="address2">address 2</label>
              <input
                type='text'
                name='address2'
                value={aptAttributes.address2}
                onChange={this.handleChange}
              />

              <br />
              <label htmlFor="city">city</label>
              <input
                type='text'
                name='city'
                value={aptAttributes.city}
                onChange={this.handleChange}
              />

              <br />
              <label htmlFor="state">state</label>
              <input
                type='text'
                name='state'
                value={aptAttributes.state}
                onChange={this.handleChange}
              />

              <br />
              <label htmlFor="postalCode">Postal Code</label>
              <input
                type='text'
                name='postalCode'
                value={aptAttributes.postalCode}
                onChange={this.handleChange}
              />

              <br />
              <label htmlFor="country">Country</label>
              <input
                type='text'
                name='country'
                value={aptAttributes.country}
                onChange={this.handleChange}
              />


              <br />
              <h2>Manager Info</h2>
              <br />

              <label htmlFor="managName">Manager's Name</label>
              <input
              type='text'
              name='managName'
              value={aptAttributes.managName}
              onChange={this.handleChange}
              />

              <br />
              <label htmlFor="managPhone">Manager's Phone</label>
              <input
                type='text'
                name='managPhone'
                value={aptAttributes.managPhone}
                onChange={this.handleChange}
              />

              <br />
              <label htmlFor="managContactHrs">Manager's Contact Hours</label>
              <input
                type='text'
                name='managContactHrs'
                value={aptAttributes.managContactHrs}
                onChange={this.handleChange}
              />
              <button type='submit'>Submit</button>
            </form>
          </div>
        <Link to="/guest">Back</Link>
      </div>
    )
  }
}

export default NewApartment
