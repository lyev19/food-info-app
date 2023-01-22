import React from "react"
import { json, UNSAFE_enhanceManualRouteObjects } from "react-router-dom"
import Portal from "../Portal"

export const PopMenu = (props)=>{
    const all = JSON.parse(localStorage.getItem("menu"))
    const list_of_menus = all.map(a=> <li className="menu-item">{date(a.Date_input)}</li>)
    
  

    return(
        <div>
          <Portal>
            { (props.pop)&&( <div>
            <div className="pop-up" onClick={props.popHandler}>
           
            </div>
             <div className="pop-up-container">
               <div className="pop-up-food-name">{props.items[0][parseInt(props.id)].Alimento}</div>
                
                <input className="pop-up-input" placeholder="weigth 100g"></input>
                
                <button className="pop-up-button"onClick={props.popHandler}>out</button>
                <button className="send-button"onClick={props.popHandler}>send</button>
                <div className="pop-up-box">
                  <h2 className="container">select menu</h2>
                  <ul className="menu-list">
                    {list_of_menus}
                  </ul>
                </div>
             </div>

            </div>
            )
            
            } 
          </Portal>
           
        </div>
    )
}
function date (de){
   
   let res =[]
   for(let i=0;i<10;i++){
      res.push(de[i])
   }
  
  return (res.toString()).replaceAll(",","")
}
