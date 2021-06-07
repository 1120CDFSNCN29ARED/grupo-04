import React from 'react'

function Pedido(props) {
    return (
        <div>
            <span><img style= {{width: 15+"%"}} className="imgPedido" src={props.producto.imagenes.length > 0 ? `http://www.pccomponents.com.ar/img/products/${props.producto.imagenes[0].imagen}` : "http://www.pccomponents.com.ar/img/products/default.jpg"} alt="imagen de producto" /></span>
            <p className="nombrePedido">Nombre: {props.producto.nombre}</p>
            <p className="marcaPedido">Marca: {props.producto.marca.nombre}</p>
            <p className="cantidadPedido">Cantidad: {props.cantidad}</p>
            <p className="precioPedido">Precio: {props.precio_compra.toLocaleString('es-AR', {minimumFractionDigits: 2, maximumFractionDigits: 2,
                                style: 'currency' , currency: 'ARS' })}</p>
        </div>
    )
}

export default Pedido
