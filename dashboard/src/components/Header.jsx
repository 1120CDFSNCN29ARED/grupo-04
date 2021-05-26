import React from 'react'
import './styles.css'
import logo from '../img/PCcomponents-logo.png'

function Header() {
    return (
        <header>
    <div class="logo">
        <a href="/">
            <img src={logo} alt="logo" class="cart-logo"/>
        </a> 
    </div>
        
            <p className='titulo'>DASHBOARD</p>
        
         
</header>
    )
}

export default Header
