import { useRef } from "react";
import React from "react"
export const Search =(props)=>{
         
    const inputRef = useRef("")
    
    const setSearch = ()=>{
        props.searchHandler(inputRef);
    }

    return(

        <div className="search-container">
            <div className="search-bar">
              
         
                    <input className="input1" placeholder=  " Search... " value={props.search} ref={inputRef} onChange={setSearch}></input>   

                    <i class="fa-brands fa-searchengin" style={{fontSize:"36px",color:"whitesmoke",width:"fit-content",marginRight:"20px", marginLeft:"20px"}}></i>
                    <div className="search-side"></div>
            </div>
        </div>
    )
}

