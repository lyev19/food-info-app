import React from "react"
import { json, UNSAFE_enhanceManualRouteObjects } from "react-router-dom"
import Portal from "../Portal"

export const PopMenu = (props)=>{

    const all = localStorage.getItem("menu")==null ?[{"Date_input":"none"}] : JSON.parse(localStorage.getItem("menu"))
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


export const Popupalert = (props)=>{
    
     return( 
      <div>
      <Portal>
        { (props.pop)&&(
         <div className="pop-up-alert" onClick={props.popHandler}>
            are u sure u want to delete ? 
            <button className="pop-up-button"onClick={props.popHandler}>out</button>
            <button className="send-button"onClick={props.remove_menu}>send</button>
         </div>  
         )} 
      </Portal>
      </div>
     )

}

export const Info =(props)=>{
   
    return(
      
      <div >
         <Portal>
         {(props.pop) &&(
            <div className="pop-up more-info-1" onClick={props.popHandler}>
               <div className="pop-up-container more-info-2" onClick={()=>{}}>
                   <h2>More information (Total of the menu) </h2>
                    <h6>Ac. grasos monoinsaturados g: </h6>
                    <h6>Ac. grasos poliinsaturados g: </h6>
                    <h6> Agua g:</h6>
                    <h6> Carbohidratos disponibles g:</h6>
                    <h6> Carbohidratos totales g:</h6>
                    <h6> Cenizas g:</h6>
                    <h6> Energía kcal:</h6>
                    <h6> Fibra dietética g:</h6>
                    <h6> Fósforo mg: </h6>
                    <h6> Grasa Total g</h6>
                    <h6> Genero/Especie:</h6>
                    <h6>Hierro mg:</h6>
                    <h6> Niacina mg:</h6>
                    <h6> Potasio mg g:</h6>
                    <h6> Proteínas g:</h6>
                    <h6> Rivoflavina mg:</h6>
                    <h6> Sodio mg</h6>
                    <h6> Tiamina mg</h6>
                    <h6>Vitamina C mg:</h6>
                    <h6>Zinc mg</h6>
                  


               </div>
              
            </div>
         )}
         </Portal>
      </div>

    
    )
}



/* 
Ac. grasos monoinsaturados g
: 
null
Ac. grasos poliinsaturados g
: 
null
Ac. grasos saturados g
: 
null
Agua g
: 
94.7
Alimento
: 
"Cebolla blanca, bulbo, cruda"
Calcio mg
: 
"26"
Carbohidratos disponibles g
: 
0
Carbohidratos totales g
: 
3.5
Cenizas g
: 
"1"
Date_input
: 
"2022-01-20T03:00:00.000Z"
Energía kcal
: 
17
Energía kj
: 
71
Fibra dietética g
: 
"0"
Fósforo mg
: 
"20"
Grasa Total g
: 
0
Género - especie - variedad
: 
"Allium cepa"
Hierro mg
: 
"0.58"
Id
: 
7
Niacina mg
: 
"0.3"
Potasio mg
: 
"100"
Proteínas g
: 
0.8
Rivoflavina mg
: 
"0.07"
Sodio mg
: 
"26"
Tiamina mg
: 
"0.06"
Vitamina C mg
: 
"9.1"
Zinc mg
: 
"0"
id
: 
69
weight
: 
100


*/