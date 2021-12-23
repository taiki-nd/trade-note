import React from "react"
import PropTypes from "prop-types"
import styled from 'styled-components'

class Like extends React.Component {

  getInitialState () {
    return {
        counts: 0,         //いいねの合計数
        is_liked: false    //いいねされているかどうかの状態
    }
  }

  LikeAjax () {
    console.log("clicked")
  } 

  render () {
    return (
      <>
      <LikeBtn onClick={this.LikeAjax}>
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
  &:hover {
    background-image: -webkit-linear-gradient(20deg, #fd3838, #dbdbdb, #87ff41);
    background-image: linear-gradient(70deg, #fd3838, #dbdbdb, #87ff41);
  }
  &:active {
    background-image: -webkit-linear-gradient(20deg, #fd3838, #dbdbdb, #87ff41);
    background-image: linear-gradient(70deg, #fd3838, #dbdbdb, #87ff41);
  }
`