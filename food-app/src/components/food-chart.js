
import { useState } from "react";
import React from "react";
export const Chart = (props)=>{
    
    const [inp,setinp] = useState(100);
    const  rule3 = (value)=>{

        if(inp!=100){
            return (value*inp)/100
        }
        else{
            return value
        }
    } 
    const inputHandler = (value)=>{
        if(value != 0){
            setinp(value)
        }
        else
          setinp(100)
        
    }
    if(props.items[0].Alimento=="verdudas"||props.items==[]){

        return( <div className=" chart ">
           
        </div>)
    }
    //props.items[0][parseInt(props.id)]['Energía kcal']
    return(
    <div className=" details ">
                  
                  
                
        <div className="chart">
            <div className="container3" style={{maxWidth:"100%"}}>
               <div className="titleChart" style={{fontSize:"25px",maxWidth:"100%",maxHeight:"20%",fontWeight:"bolder"}}><div className="inner2">{props.items[0][parseInt(props.id)].Alimento}</div> </div>
               <div className="separator-thicc"></div>
               <div className="container4"><div className="inner">ID: {props.items[0][parseInt(props.id)].id}</div></div>
               <div className="separator"></div>   
               <div className="container4"><div className="inner"> Energia: {rule3(props.items[0][parseInt(props.id)]['Energía kcal'])} <div className="bold">kcal</div></div></div>
                 <div className="separator"></div>
               <div className="container4"><div className="inner"> Proteina: {rule3(props.items[0][parseInt(props.id)]['Proteínas g'])} <div className="bold">g</div></div></div>
               <div className="separator"></div>
               <div className="container4"><div className="inner"> Sodio: {rule3(props.items[0][parseInt(props.id)]['Sodio mg'])} <div className="bold">mg</div></div></div>
               <div className="separator"></div>
               <div className="container4"><div className="inner"> Grasa: {rule3(props.items[0][parseInt(props.id)]['Potasio mg'])}  <div className="bold">mg</div></div></div>
               <div className="separator"></div>
               <div className="container4"><div className="inner"> Calcio: {rule3(props.items[0][parseInt(props.id)]['Calcio mg'])}  <div className="bold">mg</div></div></div>
               <div className="separator"></div>
               <div className="container4"><div className="inner"> Hierro: {rule3(props.items[0][parseInt(props.id)]['Hierro mg'])}  <div className="bold">mg</div></div></div>
               <div className="separator"></div>
               <div className="container4"><div className="inner"> Fosforo: {rule3(props.items[0][parseInt(props.id)]['Fosforo mg'])}  <div className="bold">mg</div></div></div>
               <div className="separator"></div>
               <div className="container5"><div className="inner">   *data per {inp} <div className="bold">g</div></div></div>
            </div>
           
            <div className="chart1">
            <input className="input2" placeholder="custom weight"   type="number" onChange={input=>inputHandler(input.target.value)}></input>
                <div className="add-menu" onClick={props.pop}>
                  <div className="inner1" onClick={props.pop}>Menu</div>
                </div>
            </div>
            

        </div>
        
    </div>
                  
    )
}