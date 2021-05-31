import React from 'react'
import Buttons from './Buttons'

function SideBar() {
    return (
        <div className='sidebar'>  
            <Buttons name='Usuarios' path='/users'/>
            <Buttons name='Productos' path=''/>
            <Buttons name='Ventas' path=''/>
            <Buttons name='Ultimo Producto' path=''/>
        </div>
    )
}

export default SideBar
