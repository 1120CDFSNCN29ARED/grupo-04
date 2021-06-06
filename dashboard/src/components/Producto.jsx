import React from 'react'
import {Link} from 'react-router-dom'
import './css/tables.css'


function Producto(props) {
    return (
        <tr className="table-light">
            <td className="productImg"><img className="productImg" src={props.imagenes.length > 0 ?`http://localhost:4000/img/products/${props.imagenes[0].imagen}` : "http://localhost:4000/img/products/default.jpg"} alt="Imagen de producto" /></td>
            <td><Link to={`/product/${props.id}`}>{props.nombre}</Link></td>
            <td>{props.marca.nombre}</td>
            <td>{props.tipo_producto.nombre}</td>
            <td>{props.cantidad_real}</td>
            <td>{Number(props.precio).toLocaleString('es-AR',
                                    {minimumFractionDigits: 2, maximumFractionDigits: 2, style: 'currency' ,
                                    currency: 'ARS' })}</td>
        </tr>
    )
}

export default Producto
