import React from "react";
import Header from "../components/Header";
import { Calendar } from "../components/calendar";
import { MenuDisplay } from "../components/menu_display";
import {useState} from "react";
import { Popupalert} from "../components/popupmenu";
import { remove_menu } from "../components/Fetch";
import { menus } from "../components/Fetch";
import { json } from "react-router-dom";
import { delete_item } from "../components/Fetch";

export const Menu = (props)=>{
    const month = new Date();
   const [Selected,setSelected]= useState( month.getUTCDate())
   const [Menu_io,setMenu_id] = useState(0)
   const [Date_menu,setDate_menu]= useState(new Date(month.getUTCFullYear(),month.getUTCMonth(),month.getUTCDate()))
   const [pop,setPop] = useState(false)
   
   const menu = localStorage.getItem("menu") !==null? JSON.parse(localStorage.getItem("menu")):[{}]
  
   

    const popHandler=()=>{
      setPop(!pop);
      console.log(pop)

    }
    
    const remove_item = async (menu_id,item_id)=>{

        const res = await delete_item(menu_id,item_id)
        menus(localStorage.getItem("user"))
    }

    //this should work when renewing menus after deletion
    const remove_menu_ = async () =>{
        const res= get_menu_id(Date_menu)
        console.log(res)
        console.log(typeof(res))
        if(res!== 0){
           remove_menu(res)
           menus(localStorage.getItem("user"))
        }
        else{
            console.log("the menu does not exist")
        }
        
        
    }

    const add_item = ()=>{}

    const handleSelect= (day)=>{
       
       setSelected(day)
    //    setDate_menu(`${month.getUTCFullYear()}-${month.getUTCMonth()+1}-${day}`)
    setDate_menu( new Date(month.getUTCFullYear(),month.getUTCMonth(),day))
      
    }

    return(
        <div className="menu-header">
            <Header></Header>

             <div className="container-fluid menu-c row">
                
                <div className="col p-4 w-25">
                  <h2 className="text-white-50 w-25">Calendario</h2>
                  <Calendar handleSelect = {handleSelect}/>
                </div>
                <div className=" col p-4 w-25">
                    <h2 className="text-white-50 w-25">Selected Menu</h2>
                    <MenuDisplay Selected={Selected} Date_menu={Date_menu} remove_item={remove_item} />
                    <button className="w-75 text-black btn-info" onClick={()=>popHandler()} >Delete Menu</button>
                </div>
             </div>
             
             <Popupalert popHandler={popHandler} pop={pop} remove_menu={remove_menu_} Date_menu={Date_menu} add_item={add_item}/>
        </div>
    )
}

export function get_menu_id (date){
   
    const menus = JSON.parse(localStorage.getItem("menu"))
    let res = 0;
    for(let i=0;i<menus.length;i++){
        console.log(handle_date(menus[i].Date_input))
        console.log( date)
        
        if( JSON.stringify(handle_date(menus[i].Date_input)) === JSON.stringify(date) ){
            console.log(menus[i].Id)
            return menus[i].Id
        }
        console.log(res)
    }
    return res;
}


function handle_date(date){

    //format year/month/day  convert the menu to a date to compare 
    function monther  (month){
     
     if(month.slice(0,1)==="0"){
       
         return month.slice(1,2)
     }
     else if (month.slice(1,2)==="-"){
        return month.slice(0,1)
     }
     else 
     return month
    }
    
    const new_date = new Date(date.slice(0,4),monther(date.slice(5,7))-1,date.slice(8,10))
    
    return new_date
 
 }

