import React, { useState, useEffect } from 'react'


function ProductoDetailLast() {
    const [producto, setProducto] = useState({});
    useEffect ( () => {
        async function fetchData (){
        const data = await fetch(`http://www.pccomponents.com.ar/api/productos/last`)
            const productDetail = await data.json();
            setProducto(productDetail)
    }
        fetchData();
    }, [])
    return (
        <div>
            <h2>{producto.nombre}</h2>
            <img style= {{width: 15+"%"}} src={producto.imagenes && producto.imagenes.length > 0 ? `http://www.pccomponents.com.ar/img/products/${producto.imagenes[0].imagen}` : "http://www.pccomponents.com.ar/img/products/default.jpg"} alt="Imagen de producto" />
            <p>Categoria: {producto.tipo_producto && producto.tipo_producto.nombre}</p>
            <p>Marca: {producto.marca && producto.marca.nombre}</p>
            <p>Stock: {producto.cantidad_real}</p>
            <p>Precio: {Number(producto.precio).toLocaleString('es-AR',
                                    {minimumFractionDigits: 2, maximumFractionDigits: 2, style: 'currency' ,
                    currency: 'ARS'
                })}</p>
            <p>Fecha: { producto.createdAt}</p>

        </div>
    )
}


export default ProductoDetailLast
