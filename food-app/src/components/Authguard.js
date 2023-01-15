
import React, { useEffect } from 'react'
import { Confirm } from './Confirm'
import { useNavigate, useLocation } from "react-router-dom"
const AuthGaurd = ({ children }) => {
    const SAMPLE_PERMISSION = localStorage.getItem("permit")
    const history = useNavigate()
    const location = useLocation()
    useEffect(() => {

        if ((location.pathname !== '/sign-up' && location.pathname!="/login") && !localStorage.getItem("permit")) {
            history("/login")
        }
        console.log(location)
    }, [location.pathname])
    return children
}

export default AuthGaurd