import React from "react"
import PropTypes from "prop-types"
import styled from 'styled-components'

class Like extends React.Component {

 

  render () {
    return (
      <>
      <LikeBtn onClick={this.LikeAjax}>
        NiceTrade!
      </LikeBtn>

      <NonLikeBtn onClick={this.LikeAjax}>
        NiceTrade!
      </NonLikeBtn>
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
  &:hover {
    background-image: -webkit-linear-gradient(20deg, #fd3838, #dbdbdb, #87ff41);
    background-image: linear-gradient(70deg, #fd3838, #dbdbdb, #87ff41);
  }
  &:active {
    background-image: -webkit-linear-gradient(20deg, #fd3838, #dbdbdb, #87ff41);
    background-image: linear-gradient(70deg, #fd3838, #dbdbdb, #87ff41);
  }
`

const NonLikeBtn = styled.div`
  width: fit-content;
  text-decoration: none;
  color: #000000;
  padding: 0.5rem 1rem;
  border: 1px solid #000000;
  border-radius: 100vh;
  background-image: -webkit-linear-gradient(20deg, #fd3838, #dbdbdb, #87ff41);
  background-image: linear-gradient(70deg, #fd3838, #dbdbdb, #87ff41);
  &:hover {
    background-image: -webkit-linear-gradient(20deg, #ffffff, #ffffff);
    background-image: linear-gradient(20deg, #ffffff, #ffffff);
  }
  &:active {
    background-image: -webkit-linear-gradient(20deg, #ffffff, #ffffff);
    background-image: linear-gradient(20deg, #ffffff, #ffffff);
  }
`