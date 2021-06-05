import Buttons from './Buttons'
import ButtonsSub from './ButtonsSub'
import React, { useState, useEffect } from 'react'

function SideBar() {
    
    const [categorias, setCategorias] = useState([]);
    const [open, setOpen] = useState(false)
    
    const showSubMenu = () => setOpen(!open)

    useEffect ( () => {
        async function fetchData (){
        const data = await fetch('http://localhost:4000/api/productos/cat')
        const categoriasData = await data.json();
            setCategorias(categoriasData)
        }
        ;
            fetchData();       
    }, [])
    
    return (
        <div className='sidebar'>  
            <Buttons name='Usuarios' path='/users'/>
            <Buttons onClick={showSubMenu} name='Productos' path='/productos' />
            <div className={open ? "open" : "close"}>
                {categorias.map((cat) => {
                    return <ButtonsSub name={cat.nombre} path={`/productos/cat/${cat.id}`
                } key={`${cat.nombre}${cat.id}`} />
                })}
            </div>
            <Buttons name='Ventas' path='/ventas'/>
            <Buttons name='Último Usuario' path='/ultimousuario'/>
            <Buttons name='Ultimo Producto' path='/ultimoproducto'/>
            <Buttons name='Ultima Venta' path='/ultimaventa'/>
        </div>
    )
}

export default SideBar
