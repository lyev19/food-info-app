
import React from 'react';
import './App.css';
import {BrowserRouter as Router,Route, Routes} from "react-router-dom";
import { Main } from "./pages/Main";
import { AllFood } from './pages/food-list';
import { LoginPage } from './pages/Login-page';
import { Menu } from './pages/Menu';
import { SignUp } from './pages/Sign-up';
import { useState,useEffect } from 'react';

import RootGaurd from './components/Rootguard';

function App() {

  const [user,setUser]= useState("none")

  async function menus (){
     console.log(user)



      const item = await fetch("http://localhost:3001/menu-all", {
        method: 'POST', // *GET, POST, PUT, DELETE, etc.
        headers: {
            'Accept': 'application/json',
           'Content-Type': 'application/json'
          // 'Content-Type': 'application/x-www-form-urlencoded',
        },
       
        body: JSON.stringify({
            "user": user
          }),
    })
    const res = await item.json()
    localStorage.setItem("items",JSON.stringify(res))
     
      const menu = await fetch("http://localhost:3001/menu", {
        method: 'POST', // *GET, POST, PUT, DELETE, etc.
        headers: {
            'Accept': 'application/json',
           'Content-Type': 'application/json'
          // 'Content-Type': 'application/x-www-form-urlencoded',
        },
       
        body: JSON.stringify({
            "user": user
          }),
    })
       const res1= await menu.json()

       localStorage.setItem("menu",JSON.stringify(res1))

  }
  
 const handleUser=(a)=>{
     setUser(a) 
      menus();
    
  }

  useEffect( ()=>{
     console.log(user)
     setTimeout(() => {
        console.log("session end")
     }, 60*100);
  },[user])
  

   
  return (
    <div className="App">
      
   

     <Router>
     <RootGaurd>
       <Routes>
          
              <Route path="/" element={<Main />}/>
              <Route path="/all-foods" element={< AllFood />}/>
              <Route path='/login' element={<LoginPage logitin={handleUser} />} ></Route>
              <Route path='/sign-up' element={<SignUp></SignUp>}></Route>
              <Route path='/Menu' element={<Menu></Menu>}></Route>
            

        </Routes> 
   
        </RootGaurd>
      
      </Router>
    </div>

  );



}

export default App;
