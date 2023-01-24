import React from "react";
import Header from "../components/Header";
import { Calendar } from "../components/calendar";
import { MenuDisplay } from "../components/menu_display";
import {useState} from "react";
import { Popupalert} from "../components/popupmenu";
import { remove_menu } from "../components/Fetch";

export const Menu = (props)=>{
    const month = new Date();
   const [Selected,setSelected]= useState( month.getUTCDate())
   const [Date_menu,setDate_menu]= useState(`${month.getUTCFullYear()}-${month.getUTCMonth()+1}-${month.getUTCDate() }`)
   const [pop,setPop] = useState(false)


    const popHandler=()=>{
      setPop(!pop);
      console.log(pop)

    }

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
                    <button className="w-75 text-black btn-info" onClick={()=>popHandler()} >Delete Menu</button>
                </div>
             </div>
             
             <Popupalert popHandler={popHandler} pop={pop} remove_menu={remove_menu} />
        </div>
    )
}