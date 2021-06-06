import React from 'react'

function Pedido(props) {
    return (
        <div>
            <span><img style= {{width: 15+"%"}} className="imgPedido" src={props.producto.imagenes.length > 0 ? `http://localhost:4000/img/products/${props.producto.imagenes[0].imagen}` : "http://localhost:4000/img/products/default.jpg"} alt="imagen de producto" /></span>
            <p className="nombrePedido">{props.producto.nombre}</p>
            <p className="marcaPedido">{props.producto.marca.nombre}</p>
            <p className="cantidadPedido">{props.cantidad}</p>
            <p className="precioPedido">{props.precio_compra}</p>
        </div>
    )
}

export default Pedido
