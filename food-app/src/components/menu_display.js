import React from "react";
import { useState,useEffect } from "react";
import { json } from "react-router-dom";

export const MenuDisplay = (props)=>{
    const items = JSON.parse(localStorage.getItem("items"))
    const selected = new Date(2023,0,props.Selected)
    console.log(JSON.stringify(selected))
    console.log(handle_date(items[0].Date_input))
    console.log(JSON.stringify(selected) == JSON.stringify(handle_date(items[0].Date_input)))

    const list = items.filter( a =>
        JSON.stringify(handle_date(a.Date_input))==JSON.stringify(selected)
    )
    console.log(list)

    const list_res = list.map( a=>
       <div className="text-white w-100">{a.Alimento}   {a["Energía kcal"]} kcal </div>
    )
    console.log(list_res)

    return (   
        <div className="container-menu-display w-75"> 
           <div className="menu-display-inner bg-info w-75">
               {JSON.stringify(selected).slice(1,11)}
               
           </div>
           {list_res}
        </div>

    )

}



function handle_date(date){

   //format year/month/day  convert the menu to a date to compare 
   function monther  (month){
    console.log(month.slice(0,1))
    if(month.slice(0,1)==="0"){
        console.log(month.slice(1,2))
        return month.slice(1,2)
    }
    else 
    return month
   }
   
   const new_date = new Date(date.slice(0,4),monther(date.slice(5,7))-1,date.slice(8,10))
   
   return new_date

}