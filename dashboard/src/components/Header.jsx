import React from 'react'
import './css/styles.css'
import logo from '../img/PCcomponents-logo.png'
import {Link} from 'react-router-dom'

function Header() {
    return (
        <header>
    <div className="logo">
        <Link to="/">
            <img src={logo} alt="logo" className="cart-logo"/>
        </Link> 
    </div>
        
            <p className='titulo'>DASHBOARD</p>
        
         
</header>
    )
}

export default Header
