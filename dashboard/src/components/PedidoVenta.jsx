import React from 'react'

function pedidoVenta(props) {
    
    return (
        <tr className="table-light">
            <td>{props.producto.nombre}</td>
            <td>{props.cantidad}</td>
            <td>{Number(props.precio_compra).toLocaleString('es-AR',
                                    {minimumFractionDigits: 2, maximumFractionDigits: 2, style: 'currency' ,
                                    currency: 'ARS' })}</td>
        </tr>
        
    )
}

export default pedidoVenta
