import { useState } from "react";


export async function Fetching (props){
    

    let result = await fetch("http://localhost:3001/all");
    let data= await result.json();
    console.log(data)
       
    return data  
      
}