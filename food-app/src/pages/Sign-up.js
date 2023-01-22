import React from "react";
import { useState } from "react";
import { useEffect } from "react";
import Header from "../components/Header";



export const SignUp =()=>{
   
   
   const [username,setUsername]= useState("")
   const [email,setEmail]= useState("")
   const [password,setPassword]= useState("")
   const [status,setStatus]= useState("start")
   const emailHandler = (event)=>{
      setEmail(event.target.value)
   }
   const userHandler = (event)=>{
      setUsername(event.target.value)
   }
   const passwordHandler = (event)=>{
      setPassword(event.target.value)
   }

   const clickHandler = ()=>{
     const res =confirm()
   }

   async function confirm (){

      const result = await fetch( "http://localhost:3001/login-request", {
          method: 'POST', // *GET, POST, PUT, DELETE, etc.
          headers: {
              'Accept': 'application/json',
             'Content-Type': 'application/json'
            // 'Content-Type': 'application/x-www-form-urlencoded',
          },
         
          body: JSON.stringify({
              "passwords": password,
              "username": username,
              "email": email
            }),
      })
      const res = await result.json()
      
      console.log(res[0])
      if(res[0].result ==="failure"){
         setStatus(false)
      }
      else if(res[0].result ==="success"){
         setStatus(true)
       }

      return res;
  }
 

  const Loginfo = ()=>{
   const res = status.toString()
   if(status===true){
      return(<div className="signin5">Succesfully signed in </div>)
   }
   else if(status===false){
       return(<div className="signin5">username or email already on use! try again bucko</div>)
   }
   else{
      return(<div className="signin5"></div>)
   }
   
  }
  
    return(
        <div>
             <Header></Header>
            <div className="login-container">
            
            <div className="sign-container-inner">
               <div className="blur"></div>
               <div className="signin1">
                 SIGN UP
               </div>
               <div className="signin2">
                  
                  <input className="login-input" placeholder="email" onChange={emailHandler} ></input>
               </div>
               <div className="signin3">
                  
                  <input className="login-input" placeholder="name" onChange={userHandler}></input>
               </div>
               <div className="signin4">
                 
                  <input className="login-input"  placeholder="password" type="password" onChange={passwordHandler}></input>
               </div>
               <div className="signin5" id="signin5">
                    
                    <Loginfo/>
               </div>
           
              <div className="signin-button" onClick={clickHandler}>Submit</div>
            </div>
           
        </div>
        </div>
    )
}