import React from "react";
import { Link } from "react-router-dom";


export const Login =(props)=>{
    

    async function confirm (){

        const result = await fetch( "http://localhost:3001/login", {
            method: 'POST', // *GET, POST, PUT, DELETE, etc.
            headers: {
                'Accept': 'application/json',
               'Content-Type': 'application/json'
              // 'Content-Type': 'application/x-www-form-urlencoded',
            },
           
            body: JSON.stringify({
                "passwords": "1234",
                "email": "tumama420@gmail.com",
                "name": "Leonidas"
              }),
        })
        
        console.log(result)
    }

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
                 <div className=" sign" onClick={confirm} >Log in</div>
              </div>
             
          </div>
        </div>
        
    )
}