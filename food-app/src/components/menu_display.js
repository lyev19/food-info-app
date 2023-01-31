import React from "react";

import {useState,useEffect } from "react";

import { get_menu_id } from "../pages/Menu";
import { Info } from "../components/popupmenu";
import { add_menu } from "./Fetch";
import { menus } from "./Fetch";
export const MenuDisplay = (props)=>{
  
   const [Total,SetTotal] = useState(0)
   const [Menus,setMenus] = useState([])
   const [selected,Setselected] = useState( new Date(props.Selected_year,props.Selected_month,props.Selected))
   const [pop,setPop] = useState(false)
   let items =localStorage.getItem("items")==="[]"?[{"Date_input":"none"}]: JSON.parse(localStorage.getItem("items"));
   const user = localStorage.getItem("user")
  const [added_menu,adding_menu]=useState(false)
   console.log(localStorage.getItem("items"))
 console.log(items)
  
 



  useEffect(() => {
   items =localStorage.getItem("items")==="[]"?[{"Date_input":"none"}]: JSON.parse(localStorage.getItem("items"));
   console.log(localStorage.getItem("items"))
   
  }, [localStorage]);
  useEffect(() => {
   list_res =JSON.stringify(Menus)==="[]"?[0].map((a)=>{ return ( check_menu() ? <button className="text-white-50 w-100 " onClick={()=> new_menu() } >add menu!</button>:<div style={{"width":"100%","color":"white"}}>a menu for this date exists,add foods!</div>) }):Menus.map( a=> 
      <div className="text-white w-100" id={a.id}>{a.Alimento} {(a["Energía kcal"] * a.weight)/100} kcal  {a.weight} gr  <button class="text-white w-25 " id={a.id} onClick={(event)=>click(get_menu_id(selected),event.target.id)}><i className="fas fa-times w-100" id={a.id}></i></button></div>
   ) 
  }, [added_menu]);

   const popHandler=()=>{
    setPop(!pop);
    console.log(pop)

  }

   const handle_menu = (menu)=>{
        setMenus(Menus =>[...Menus,menu])
       
   } 
    
   useEffect( ()=>{
    set_total(Menus)
   },[Menus]
   )

   useEffect(() => {
    set_total(Menus)
   }, [selected]);


    useEffect(() => {
      setMenus([])
      
      console.log(props.Selected)
      console.log(props.Selected_year)
      console.log(props.Selected_month)
      Setselected(new Date(props.Selected_year,props.Selected_month,props.Selected))
      menu_loader(new Date(props.Selected_year,props.Selected_month,props.Selected))
      console.log(Menus)
      //
    }, [props.Selected]);

   
    


  
   function set_total ( Menus){
       let result = 0
       
       for(let i=0;i<Menus.length;i++){
        if(Menus[i].weight!==100){
        result = result +(Menus[i].weight *Menus[i]["Energía kcal"])/100
        }
        else {
            result = result + Menus[i]["Energía kcal"]
        } 
       }
       
        
       console.log(result)
       SetTotal(Math.round(result))
      
   }
    
   function menu_loader(sel ){
   
    console.log(sel)
    //console.log(handle_date(items[0]["Date_input"]))
    console.log(items==null)
    if(items==null){
       return 0
    }
    const res = items.filter( a =>
    JSON.stringify(handle_date(a.Date_input))==JSON.stringify(sel))
   
     console.log(res)
     for(let i=0;i<res.length;i++){
        handle_menu(res[i])
     }
     
     
          
   }

   function remove_items(menu_id,item_id){

 
    const a = Menus.filter((a) =>JSON.stringify(a.id)!==item_id )
    
      setMenus(a)
      
     
   }


   const new_menu = async ()=>{
      console.log(selected)
      console.log(JSON.stringify(selected).slice(1,11))
      const date = new Date()
      const res =await add_menu(user,JSON.stringify(selected).slice(1,11))
      const reload = await menus(user)
     adding_menu(!added_menu)
      console.log(res.json())

   } 
  
   function check_menu (){
        const all_menus = JSON.parse(localStorage.getItem("menu"))
        console.log(all_menus)
        if(JSON.stringify(all_menus)==="[]"){
         return true
        }
        console.log(typeof all_menus[0].Date_input)
        console.log(new Date(all_menus[0].Date_input))
        console.log(typeof JSON.stringify(selected) )
        
        const res = all_menus.filter(a => JSON.stringify(new Date(a.Date_input)) === JSON.stringify(selected) )
        console.log(res)
        if(res.length===0)
        { 
         return true
        }
        else 
        return false
   }
   console.log(check_menu())
    async function click (mi,ii){
        const res = await props.remove_item(mi,ii)
        remove_items(mi,ii)
        console.log(Menus)
        //here add_menu
        list_res = JSON.stringify(Menus)==="[]"?[0].map((a)=>{ return ( check_menu() ?<button className="text-white-50 w-100 " onClick={()=> new_menu() } >add menu!</button>:<div>a menu for this date exists,add foods!</div>) }):Menus.map( a=> 
          <div className="text-white w-100" id={a.id}>{a.Alimento} {(a["Energía kcal"] * a.weight)/100} kcal  {a.weight} gr  <button class="text-white w-25 " id={a.id} onClick={(event)=>click(get_menu_id(selected),event.target.id)}><i className="fas fa-times w-100" id={a.id}></i></button></div>
       )
        
        
    }

    console.log(JSON.stringify(Menus)==="[]")

    //here add menu
    let list_res =JSON.stringify(Menus)==="[]"?[0].map((a)=>{ return ( check_menu() ? <button className="text-white-50 w-100 " onClick={()=> new_menu() } >add menu!</button>:<div style={{"width":"100%","color":"white"}}>a menu for this date exists,add foods!</div>) }):Menus.map( a=> 
       <div className="text-white w-100" id={a.id}>{a.Alimento} {(a["Energía kcal"] * a.weight)/100} kcal  {a.weight} gr  <button class="text-white w-25 " id={a.id} onClick={(event)=>click(get_menu_id(selected),event.target.id)}><i className="fas fa-times w-100" id={a.id}></i></button></div>
    )


    return (   
        <div className="container-menu-display w-75"> 
           <div className="menu-display-inner bg-info w-75">
               {JSON.stringify(selected).slice(1,11)}
               
           </div>
           {list_res}
           
           {(JSON.stringify(Menus)!=="[]")&&( <h2 className="text-white w-100"> Total kcal: {Total}  <button className="text-white-50 w-100 " onClick={a=>{popHandler()}}> more info</button>
             </h2> 
            )} 

           <Info pop={pop} popHandler={popHandler}/>



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