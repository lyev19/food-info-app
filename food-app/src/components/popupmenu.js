import React from "react"
import Portal from "../Portal"

export const PopMenu = (props)=>{

    return(
        <div>
          <Portal>
            { (props.pop)&&( <div>
            <div className="pop-up" onClick={props.popHandler}>
           
            </div>
             <div className="pop-up-container">
                <input className="pop-up-input"></input>

                <button className="pop-up-button"onClick={props.popHandler}>out</button>
                
                <div className="pop-up-box"></div>
             </div>

            </div>
            )
            
            } 
          </Portal>
           
        </div>
    )
}