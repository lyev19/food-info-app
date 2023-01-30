import { Link } from "react-router-dom";
import React from "react"
import { useEffect,useState } from "react";

const Header = (props)=>{
   
     var user = localStorage.getItem("user");
     var log = localStorage.getItem("permit")
     let user_tab= log ? 
        
            <div className="user">

             <div className="user-foto-container">
               <div className="user-foto"></div>
             </div>
  
              <div className="user-name">
                {user}
               </div>
              <Link to="/login" className="lil-items"onClick={(a)=>{localStorage.clear()}}>
                   logoff
              </Link>
           
           </div>
     :  <div className="user">
                 <div className="user-foto-container">
                     <div className="user-foto"></div>
                  </div>
        
                 <div className="user-name">{user}</div>
                 <Link to="/login" className="lil-items">
                  <div className="pop-up-button from-header">login</div>
                  </Link>
                 
               </div>
               


     //log ? 
    //     if(log){
    //         return(
    //         <div className="user">
    //         <div className="user-foto-container">
    //            <div className="user-foto"></div>
    //         </div>
   
    //         <div className="user-name">{user}</div>
    //         <Link to="/login" className="lil-items">
                
    //         </Link>
            
    //        </div>)
    //     }
    //     else{
    //         return(
    //             <div className="user">
    //             <div className="user-foto-container">
    //                <div className="user-foto"></div>
    //             </div>
       
    //             <div className="user-name">{user}</div>
    //             <Link to="/login" className="lil-items">
    //             <div className="pop-up-button from-header">login</div>
    //             </Link>
                
    //            </div>
    //         )
    //     }

    //  }

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
            <Link className="lil-items" to="/Menu">
            <i class="fa-regular fa-calendar-days" style={{background:"none", marginLeft:"3.4vw"}}></i>
            </Link>
             </div>
       
            <div className="items">
            <Link className="lil-items" to="/" >
            <i class="fa-solid fa-house" style={{background:"none", marginLeft:"3.1vw"}}></i>
            </Link>
          
            </div>
         
            
            {user_tab}
           
            
        </div>
       
        
       
    </div>
   )

}
export default Header;