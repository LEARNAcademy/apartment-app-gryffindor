import React from 'react'
import ProtoTypes from 'prop-types'
import {
  Container,
  Row,
  Col,
  ListGroup
} from 'reactstrap'

import {
  Link
} from 'react-router-dom'


class Listings extends React.Component {
  constructor(props){
    super(props)
    this.state = {
      listings: []
    }
  }
  componentDidMount(){
    fetch('/listings.json')
    .then((response) => response.json())
    .then((listings) => {
      this.setState({listings: listings})
    })
  }
  render () {
    return (
    <div>
      <div>
        <h1>Apartment Listings</h1>
      </div>
      <Container>
       <Row>
        <Col xs={15}>
          <ListGroup>
            {this.state.listings.map((listing, index) => {
              return(
                <div key={index}>
                  <li>{listings.address1}</li>
                  <li>{listings.address2}</li>
                  <li>{listings.city}</li>
                  <li>{listings.state}</li>
                  <li>{listings.country}</li>
                  <li>{listings.postalCode}</li>
                  <li>{listings.managName}</li>
                  <li>{listings.managPhone}</li>
                  <li>{listings.managContactHrs}</li>
                </div>
              )
            })}
            </ListGroup>
          </Col>
        </Row>
        </Container>
        <br />
      </div>
    )
  }
}

export default Listings
