import React from 'react'

function Pedido(props) {
    
    return (
        <div>
            <span><img className="imgPedido" src={props.producto.imagenes.length > 0 ? `http://localhost:4000/img/products/${props.producto.imagenes[0].imagen}` : "http://localhost:4000/img/products/default.jpg"} alt="imagen de producto" /></span>
            <p className="nombrePedido">{props.producto.nombre}</p>
            <p className="marcaPedido">{props.producto.marca.marca}</p>
            <p className="catPedido">{props.producto.tipo_producto}</p>
            <p className="cantidadPedido">{props.precio}</p>
            <p className="precioPedido">{props.precio}</p>
        </div>
    )
}

export default Pedido
