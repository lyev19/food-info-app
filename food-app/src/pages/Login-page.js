import React from "react";
import Header from "../components/Header";
import { Login } from "../components/login";



export const LoginPage =(props)=>{
  

    return(
        <div>
             <Header></Header>
           <Login  logitin={props.logitin}></Login>
        </div>
    )
} 