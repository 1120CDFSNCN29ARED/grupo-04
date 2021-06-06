import React, { useState, useEffect } from 'react'
import Pedido from './Pedido'


function VentaDetailLast() {
    const [last, setLast] = useState({user: {}, pedidos:[]});
    useEffect ( () => {
        async function fetchData (){
        const data = await fetch('http://localhost:4000/api/compras/last')
        const lastData = await data.json();
            setLast(lastData)
    }
        fetchData();
    },[])
    return (
        <div>
            <h2>Ultima venta realizada</h2>
            <p>Usuario: {last.user.name + ' ' + last.user.last_name}</p>
            {
                last.pedidos.map((ped, i) => { return <Pedido {...ped} key={`${ped.id}${i}` } /> })
            }
        </div>
    )
}

export default VentaDetailLast
