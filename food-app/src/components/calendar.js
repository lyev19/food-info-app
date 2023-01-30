import React from "react"
import {useState,useEffect} from "react"


export const Calendar = (props)=>{
   
  
   const month_length = [31,28,31,30,31,30,31,31,30,31,30,31]
   const month = new Date();
   let days = []
   
   useEffect(() => {
       days = []
       for( let i=1;i< month_length[props.Selected_month]+1;i++ ){
         days.push(i);
  }
   }, [props.Selected_month]);

  function set (signal){
     

     if(props.Selected_month ==0 &&signal==-1){
        props.set_month(11)
        props.set_year(props.Selected_year-1)
     }
     else if( props.Selected_month==11 &&signal==1){
        props.set_month(0);
        props.set_year(props.Selected_year+1)
     }
     else {
        if(signal==-1){
          props.set_month(props.Selected_month -1)
        }
        else{
          props.set_month(props.Selected_month +1)
        }
     }
     
     console.log(props.Selected_month)
     console.log(props.Selected_year)
  }

     
   function date (de){
   
      let res =[]
      for(let i=0;i<10;i++){
         res.push(de[i])
      }
     
     return (res.toString()).replaceAll(",","")
   }
  
   for( let i=1;i< month_length[props.Selected_month]+1;i++ ){
          days.push(i);
   }
 
    
    const cal = days.map(a => <button key={a} class="calenda-unit" id={a} onClick={(event) => props.handleSelect(event.target.id)}> {a}</button>)
   

 return(

        <div class="calenda-container-flex col row" >
      
          <div class="calenda-flex">
             <h4>{props.Selected_year} / { props.Selected_month +1}  /{props.Selected}</h4>
            
             {cal}

             
          </div>
          <div className="button-container">
          <button className="text-white-50 month-button" onClick={(a)=>set(-1)} >-1</button> <button className="text-white-50 month-button" onClick={(a)=>set(1)}>+1</button>
          </div>
          
        </div>
 )

}

