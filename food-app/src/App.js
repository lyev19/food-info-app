
import React from 'react';
import './App.css';
import {BrowserRouter as Router,Route, Routes} from "react-router-dom";
import { Main } from "./pages/Main";
import { AllFood } from './pages/food-list';
import { LoginPage } from './pages/Login-page';
import { Menu } from './pages/Menu';
import { SignUp } from './pages/Sign-up';
import { useState,useEffect } from 'react';
function App() {

  const [user,setUser]= useState("none")

  
 const handleUser=(a)=>{
     setUser(a) 
     console.log(user)
  }

  useEffect( ()=>{
     console.log(user)
  })


  return (
    <div className="App">
    
     <Router>
       <Routes>
           <Route path="/" element={<Main />}/>
           <Route path="/all-foods" element={< AllFood />}/>
           <Route path='/login' element={<LoginPage logitin={handleUser} />} ></Route>
           <Route path='/sign-up' element={<SignUp></SignUp>}></Route>
           <Route path='/Menu' element={<Menu></Menu>}></Route>
        </Routes> 
      </Router>
    </div>

  );



}

export default App;
