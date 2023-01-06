import Header from "../components/Header"
import { useState } from "react"
import { useEffect } from "react"
import { Chart } from "../components/food-chart"
import React from "react"
import { Search } from "../components/Search"
import { PopMenu } from "../components/popupmenu"
export const AllFood = ()=>{
     
     const [items,setItems] = useState([{Alimento:"verdudas"}]);
     const [current,setCurrent]=useState(0);
     const [active, setActive] = useState([false,0]);
     const [search,setSearch]= useState("");
     const [result,setResult]= useState([{Alimento:"verdudas"}]);
     const [pop,setPop] = useState(false)


    const popHandler=()=>{
      setPop(!pop);
      console.log(pop)

    }


    useEffect(()=>{

        const foods= async ()=>{
          let result = await fetch("http://localhost:3001/all");
          let data= await result.json();
         
          setItems([data])
        }
        foods()
       
       
    },[] 
    )
     function currentHandler (a){
         let data = a;
         setCurrent(data) 
    }
    
    const handleClick = (a) => {
        setActive([active,a]);
      };

      function eliminarDiacriticos(texto) {
        return texto
               .normalize('NFD')
               .replace(/([^n\u0300-\u036f]|n(?!\u0303(?![\u0300-\u036f])))[\u0300-\u036f]+/gi,"$1")
               .normalize();
    }

    const searchHandler = (s)=>{
    
      setSearch(s.current.value)
      setResult([[{Alimento:"verdudas"}]]);
      
      let regex= new RegExp(`(${search})`,"i")
      if( typeof items[0].find(a=> regex.test(eliminarDiacriticos(a.Alimento)))==="undefined"){
        setResult([{Alimento:"verdudas"}]);
      }
      else{
        setResult([items[0].filter(a=>
          regex.test(eliminarDiacriticos(a.Alimento)) 
        )
        ])
      
         console.log(eliminarDiacriticos(items[0][20].Alimento) )
      }
       
       console.log(items[0].find(a=> regex.test(a.Alimento)))
       console.log(search)
       console.log(result)
      
    }
    
    

     //style={{background:active?"rgb(230, 142, 11)":"radial-gradient(circle at left, #0e0d0d, #000000)"}}
 
    

    let all = search===""? items[0].Alimento!=="verdudas"? items[0].map((a)=>{
        return(  <div key={a.id} id={a.id} style={{background:active[0]&&active[1]==a.id?"black":"radial-gradient(circle at left, #0e0d0d, #000000)",color:active[0]&&active[1]==a.id?"whitesmoke":"white",fontWeight:active[0]&&active[1]==a.id?"bolder":"normal"}}      className="listItem"   onClick={()=> {currentHandler(items[0].indexOf(a));handleClick(a.id);}}> {a.Alimento}</div>)
     }):items.map((a)=>{
        return(  <div className="listItem"> error </div>)
     }) : result[0].Alimento!=="verdudas"? result[0].map((a)=>{
      return(  <div key={a.id} id={a.id} style={{background:active[0]&&active[1]==a.id?"black":"radial-gradient(circle at left, #0e0d0d, #000000)",color:active[0]&&active[1]==a.id?"whitesmoke":"white",fontWeight:active[0]&&active[1]==a.id?"bolder":"normal"}}      className="listItem"   onClick={()=> {currentHandler(items[0].indexOf(a));handleClick(a.id);}}> {a.Alimento}</div>)
   }):result.map((a)=>{
      return(  <div className="searchError"> No se encuentraron resultados para su busqueda </div>)})
  

    return(
        <div className="food-container">
            
            <Header/>
            <div className="food-container1">
               
              
              
            </div>
            <Search  search={search} searchHandler={searchHandler}/>  
            <div className="food-title">
                <div className="marginLeft"></div>
                 <h1 className="title1"></h1> </div>
            <div className="food-container2">

              <div className="list">
                 {all}
              </div>
               
              <Chart items={items} id={current} pop={popHandler}/>   
               
            </div>
            
            <PopMenu popHandler ={popHandler} pop={pop}/>
        </div>
    )

}

