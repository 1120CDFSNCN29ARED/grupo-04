import React from 'react'
import Buttons from './Buttons'

function SideBar() {
    return (
        <div className='sidebar'>
            
            <Buttons name='Usuarios'/>
            <Buttons name='Productos'/>
            <Buttons name='Ventas'/>
            <Buttons name='Ultimo Producto'/>

            
        </div>
    )
}

export default SideBar
