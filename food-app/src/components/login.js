import React from "react";
import { Link } from "react-router-dom";
import { useState } from "react";

export const Login =(props)=>{
    
    const [username,usernameSet] = useState("");
    const [password,passwordSet]=useState("") 
    

    const handleUser = (event)=>{
        usernameSet(event.target.value)
    }
    const handlePassword = (event)=>{
        passwordSet(event.target.value)
        
    }
    
    const handleLogin = ()=>{
         const conf= confirm(password,username)
         console.log(props)
         props.logitin(username)
              
    }
    
    
    async function confirm (passwords,user){

        const result = await fetch( "http://localhost:3001/login", {
            method: 'POST', // *GET, POST, PUT, DELETE, etc.
            headers: {
                'Accept': 'application/json',
               'Content-Type': 'application/json'
              // 'Content-Type': 'application/x-www-form-urlencoded',
            },
           
            body: JSON.stringify({
                "passwords": passwords,
                "username": user
              }),
        })
        const res = await result.json()
        
        console.log(res)
       
        if(res["login"]==="success"){
            localStorage.setItem( "authorization" , res["token"])
            console.log(localStorage.getItem("authorization"))
       }
        return res;
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
                    <input className="login-input" onChange={handleUser} value={username}></input>
                 </div>
                 <div className="login3">
                     password
                    <input className="login-input" type="password" onChange={handlePassword} value={password}></input>
                 </div>
                 <Link className="login4" to="/sign-up">
                 
                    you dont have an account? Sign up 
                 
                 </Link>
                 <div className=" sign" onClick={handleLogin} >Log in</div>
              </div>
             
          </div>
        </div>
        
    )
}