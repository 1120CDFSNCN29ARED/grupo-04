import React from 'react'
import logo from '../img/PCcomponents-logo.png'
import '../userList.css'
function Contenido() {
    return (
        <div class="margin-top">
        <section class="user-list">
            <div class="icon-login">
                <img src={logo} alt=""/>
            </div>
            <div>
               <p class="user-list-text">Nombre: <strong> Prueba mas larga </strong></p>
            </div>
            <div>
               <p class="user-list-text">Email: <strong>Prueba@gmail.com</strong></p> 
            </div>
                <div class="info-btn ver">
                    <a href="/users/admin/userProfile/<%=users[i].id%>">VER</a>
                </div>
                <div class="info-btn eliminar">
                    <a href="/users/delete/<%=users[i].id%>">ELIMINAR</a>
                </div>
        </section>
        </div>
    )
}

export default Contenido
