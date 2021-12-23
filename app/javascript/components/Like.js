import React from "react"
import PropTypes from "prop-types"
import styled from 'styled-components'

class Like extends React.Component {
  render () {
    return (
      <>
      <LikeBtn>
        NiceTrade!
      </LikeBtn>
      </>
    );
  }
}

export default Like

const LikeBtn = styled.div`
  width: fit-content;
  text-decoration: none;
  color: #000000;
  padding: 0.5rem 1rem;
  border: 1px solid #000000;
  border-radius: 100vh;
`