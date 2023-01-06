import React from "react";
import { Link } from "react-router-dom";


export const Login =(props)=>{


    return(
        <div>
           
           <div className="login-container">
            
              <div className="login-container-inner">
                 <div className="blur"></div>
                 <div className="login1">
                   LOGIN
                 </div>
                 <div className="login2">
                    username or email
                    <input className="login-input"></input>
                 </div>
                 <div className="login3">
                     password
                    <input className="login-input" type="password"></input>
                 </div>
                 <Link className="login4" to="/sign-up">
                 
                    you dont have an account? Sign up 
                 
                 </Link>
                 <div className=" sign" >Log in</div>
              </div>
             
          </div>
        </div>
        
    )
}