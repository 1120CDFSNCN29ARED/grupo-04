import React from 'react'
import instagram from '../img/logo-instagram.png'
import twitter from '../img/logo-twitter.png'
import facebook from '../img/logo-facebook-f.png'

function Footer() {
    return (
        <footer className=''>
    <div class="top-footer">
        <section class="icon contacto">
            <i class="fas fa-envelope"></i>
            <p>Contacto</p>
        </section>
        <section class="redes">
            <img src={instagram} alt="logo instagram" class="logo-redes"/>
            <img src={twitter} alt="logo twitter" class="logo-redes twitter"/>
            <img src={facebook} alt="logo facebook" class="logo-redes"/>
        </section>
    </div>
    <section class="copyright">
        <p>Copyright 2021. Derechos Reservados.</p>
    </section>
</footer>
    )
}

export default Footer
