import React from 'react'
import instagram from '../img/logo-instagram.png'
import twitter from '../img/logo-twitter.png'
import facebook from '../img/logo-facebook-f.png'

function Footer() {
    return (
        <footer className=''>
    <div className="top-footer">
        <section className="icon contacto">
            <i className="fas fa-envelope"></i>
            <p>Contacto</p>
        </section>
        <section className="redes">
            <img src={instagram} alt="logo instagram" className="logo-redes"/>
            <img src={twitter} alt="logo twitter" className="logo-redes twitter"/>
            <img src={facebook} alt="logo facebook" className="logo-redes"/>
        </section>
    </div>
    <section className="copyright">
        <p>Copyright 2021. Derechos Reservados.</p>
    </section>
</footer>
    )
}

export default Footer
