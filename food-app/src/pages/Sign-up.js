import React from "react";

import Header from "../components/Header";
export const SignUp =()=>{

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
                  
                  <input className="login-input" placeholder="username or email" ></input>
               </div>
               <div className="signin3">
                 
                  <input className="login-input"  placeholder="password" type="password"></input>
               </div>
               <div className="signin4">
                 
                   <input className="login-input" placeholder="name"  type="text"></input>
               </div>
               <div className="signin5">
                 
                   <input className="login-input" placeholder="surname" type="textd"></input>
               </div>
               <div className="signin6">
                
                   <input className="login-input" placeholder="number"  type="text"></input>
               </div>
              
              <div className="signin-button">Submit</div>
            </div>
           
        </div>
        </div>
    )
}