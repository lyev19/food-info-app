import React from "react";
import Header from "../components/Header";
import { Calendar } from "../components/calendar";
import { MenuDisplay } from "../components/menu_display";
import {useState} from "react";
export const Menu = (props)=>{
    const month = new Date();
   const [Selected,setSelected]= useState( month.getUTCDate())
   
   const [Date_menu,setDate_menu]= useState(`${month.getUTCFullYear()}-${month.getUTCMonth()+1}-${month.getUTCDate() }`)
   
   console.log(Date_menu)
   const handleSelect= (day)=>{
       
       setSelected(day)
       setDate_menu(`${month.getUTCFullYear()}-${month.getUTCMonth()+1}-${day}`)
   }

    return(
        <div className="menu-header">
            <Header></Header>

             <div className="container-fluid menu-c row">
                
                <div className="col p-4 w-25">
                  <h2 className="text-white-50">Calendario</h2>
                  <Calendar handleSelect = {handleSelect}/>
                </div>
                <div className=" col p-4 w-25">
                    <h2 className="text-white-50">Selected Menu</h2>
                    <MenuDisplay Selected={Selected} Date_menu={Date_menu} />
                </div>
             </div>
             

        </div>
    )
}