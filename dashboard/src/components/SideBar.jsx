import React from 'react'
import Buttons from './Buttons'

function SideBar() {
    return (
        <div className='sidebar'>  
            <Buttons name='Usuarios' path='/users'/>
            <Buttons name='Productos' path='/productos'/>
            <Buttons name='Ventas' path='/ventas'/>
            <Buttons name='Pedidos' path='/pedidos'/>
            <Buttons name='Ultimo Producto' path='/ultimoproducto'/>
            <Buttons name='Ultima Venta' path='/ultimaventa'/>
        </div>
    )
}

export default SideBar
