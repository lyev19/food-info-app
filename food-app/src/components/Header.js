import { Link } from "react-router-dom";
import React from "react"

const Header = (props)=>{
   
   return(
    <div className="Header-nav">

        <div className="nav-container">
            <div className="nav-logo"> Food App</div>
        </div>
        
        <div className="item-container">
            <div className="items">
                <Link className="lil-items" to="/all-foods" >
                  <i class="fa-solid fa-egg" style={{background:"none", marginLeft:"3.5vw"}}></i>
               </Link>
            </div>
            
            <div className="items">
            <Link className="lil-items" >
            <i class="fa-regular fa-calendar-days" style={{background:"none", marginLeft:"3.4vw"}}></i>
            </Link>
             </div>
       
            <div className="items">
            <Link className="lil-items" to="/" >
            <i class="fa-solid fa-house" style={{background:"none", marginLeft:"3.1vw"}}></i>
            </Link>
          
            </div>
         
        </div>
        <div className="user">
             <div className="user-foto-container">
                <div className="user-foto"></div>
             </div>
    
             <div className="user-name"></div>
             <Link to="/login" className="lil-items">
             <div className="pop-up-button from-header">login</div>
             </Link>
             
        </div>
       
    </div>
   )

}
export default Header;