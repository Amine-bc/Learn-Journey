import React from 'react'
import Button from '../components/Button'
import '../index.css'
const Home = () => {

    return (
      <>
      <div className="home">
        <h1>Home</h1>
      </div>
      <Button url="/workout" className='button1'/>
      </>
    )
  }
  
  export default Home