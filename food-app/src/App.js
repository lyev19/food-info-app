
import React from 'react';
import './App.css';
import {BrowserRouter as Router,Route, Routes} from "react-router-dom";
import { Main } from "./pages/Main";
import { AllFood } from './pages/food-list';
import { LoginPage } from './pages/Login-page';
import { Menu } from './pages/Menu';
import { SignUp } from './pages/Sign-up';
import { useState,useEffect } from 'react';
import { useRef } from 'react';

import { remove_menu } from './components/Fetch';
import { menus } from './components/Fetch';

import RootGaurd from './components/Rootguard';

function App() {

  const [user,setUser]= useState("none")


  useEffect( ()=>{
   
    console.log("useeffect????????????")
    menus(user)
     
    //  console.log(user)
    //  setTimeout(() => {
    //     console.log("session end")
    //  }, 600*100);
  },[user])
  


 const handleUser= (a)=>{
 
     setUser(a)
    
 
  }



   
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
