import React from 'react'
import {Link} from 'react-router-dom'
function Buttons({name, path}) {
    return (
        
        <div className="botones">
           <Link className='no-underline' to={path}>{name}</Link>
           
        </div>
    )
}

export default Buttons
