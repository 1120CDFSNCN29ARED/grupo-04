import React from 'react'
import Contenido from './Contenido'
import SideBar from './SideBar'

function Content() {
    return (
        <div className='content'>
        <SideBar/>
     
             <article class="product-preview">
                    <div class="product-pic column">
                        <Contenido/>
                        <Contenido/>
                        <Contenido/>
                        <Contenido/>
                        <Contenido/>
                        <Contenido/>
                        <Contenido/>
                        <Contenido/>
                    </div>
                                       
            </article>
     </div>
    )
}

export default Content
