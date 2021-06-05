import React from 'react'
import {Link} from 'react-router-dom'
function ButtonsSub({name, path}) {
    return (
        
        <>
           <Link className='sub-links' to={path}>{name}</Link>
           
        </>
    )
}

export default ButtonsSub
