import React from 'react'
import { Link } from 'react-router-dom'
import PedidoVenta from './PedidoVenta'
import './css/tables.css'

function Venta(props) {
    let totalPedido = props.pedidos.reduce((tot, item) => { return tot + item.cantidad * item.precio_compra }, 0 )
    //console.log(totalPedido);
    return (
        
            <div>
            <p>{props.fecha}</p>
            <p><Link to={`/user/${props.user.id}`}> {`${props.user.name} ${props.user.last_name}`} </Link></p>
            <table className="table">
                <tr classname="table-secondary">
                    <th>Producto</th>
                    <th>Cantidad</th>
                    <th>Precio</th>
                </tr>
                {props.pedidos.map((pedido, i) => {
                    return <PedidoVenta {...pedido} key={`${pedido.id} ${i}`} />
                })}
                <tr classname="table-secondary">
                    <th colSpan="2">TOTAL</th>
                    <td>{Number(totalPedido).toLocaleString('es-AR',
                                    {minimumFractionDigits: 2, maximumFractionDigits: 2, style: 'currency' ,
                                    currency: 'ARS' })}</td>
                </tr>
            </table>
            </div>
            
    )
}

export default Venta
