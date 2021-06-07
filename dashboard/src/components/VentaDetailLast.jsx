import React, { useState, useEffect } from 'react'
import Pedido from './Pedido'


function VentaDetailLast() {
    const [last, setLast] = useState({ user: {}, pedidos: [] });
    const [total, setTotal] = useState(0)
    useEffect ( () => {
        async function fetchData (){
        const data = await fetch('http://www.pccomponents.com.ar/api/compras/last')
        const lastData = await data.json();
            setLast(lastData)
    }
        fetchData();
    }, [])
    useEffect(
        () => {
             let totalCompra = last.pedidos.reduce((tot, item)=> {return tot + item.cantidad *
                 item.precio_compra
             }, 0)
            setTotal(totalCompra)
        }, [last])
    
    return (
        <div>
            <h2>Ultima venta realizada</h2>
            <p>Usuario: {last.user.name + ' ' + last.user.last_name}</p>
            <p>Fecha: { last.fecha}</p>
            <h3>Total venta: {total.toLocaleString('es-AR', {
                minimumFractionDigits: 2, maximumFractionDigits: 2,
                style: 'currency', currency: 'ARS'
            })}</h3>
        
            {
                last.pedidos.map((ped, i) => { return <Pedido {...ped} key={`${ped.id}${i}` } /> })
            }
        </div>
    )
}

export default VentaDetailLast
