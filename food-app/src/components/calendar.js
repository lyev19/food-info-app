import React from "react"
import {useState} from "react"


export const Calendar = (props)=>{
   
  
   const month_length = [31,28,31,30,31,30,31,31,30,31,30,31]
   const month = new Date();
   const days = []
   
   


     
   function date (de){
   
      let res =[]
      for(let i=0;i<10;i++){
         res.push(de[i])
      }
     
     return (res.toString()).replaceAll(",","")
   }
  
   for( let i=1;i< month_length[month.getUTCMonth()]+1;i++ ){
          days.push(i);
   }
 
    
    const cal = days.map(a => <button key={a} class="calenda-unit" id={a} onClick={(event) => props.handleSelect(event.target.id)}> {a}</button>)
   

 return(

        <div class="calenda-container-flex col row" >
      
          <div class="calenda-flex">
             <h4>{month.getUTCFullYear()} / { month.getUTCMonth()+1 } /{month.getUTCDate()}</h4>
            
             {cal}

             
          </div>

        </div>
 )

}

