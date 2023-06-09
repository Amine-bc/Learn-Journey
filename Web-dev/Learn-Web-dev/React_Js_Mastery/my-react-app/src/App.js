import './App.css';
// Import and register GSAP (ES Modules)
import { gsap } from "gsap";
import {useState, useEffect} from 'react';


const Component1 = (props) => { 
  return(<> 
    <h2> Hello React ! </h2>
    <h2>Welcome {props.name}</h2>
    <button className="box" onClick ={ ()=>{console.log('Hello button '+ props.name )}} >Button of {props.name} </button>
   </>)

}

const Buttonforusestate = () => {
  
  const [Prevnum,setnum] =useState(0)
  return (      
    <>
     <button className='box' onClick={()=>{setnum(Prevnum+1)}}>+</button>
     <button className='box' onClick={()=>{setnum(0)}}>Reset</button>
     <h2>{Prevnum }</h2>
     <button className='box' onClick={()=>{setnum(Prevnum-1)}}>-</button> 
    </>
  )
}


const Animate = () => {
  
  

}


const Component2 = () => {

 const [Anima,animatit]=useState(false)

  useEffect(() => 
  { 
  gsap.to(".box2", { x: 1500, duration: 0.5})
  gsap.to(".box", { y: -20, duration: 5})
  console.log("animate")
  },[Anima])
  
  return(
    <>
<div className="box2"></div>
<br></br>
<div className="box2"></div>
<br></br>
<div className="box3"></div>
<button className="box" onClick ={ ()=>{animatit(true)}} >Button of </button>
</>
)

}

const App =()=> {


let namelist =["amine","yamene","mouloud"]
  return (
    
    <div className="App"> 
      {namelist.map(namein => ( 
        <>
        <Component1 name = {namein}/>
        <br></br>  
        </>
      ))
     }
     <Buttonforusestate/>
     <Component2/>
     <button className="box" onClick = { ()=>{ gsap.to(".box3", { y: -20, duration: 5})}} >
      
      Button of box3 </button>

     
  </div>

  );
}

export default App;
