import React, {useState, useEffect} from 'react'
import { Route, Switch } from 'react-router-dom'
import Card from './Card';
import Contenido from './Contenido'
import SideBar from './SideBar'
import UserDetail from './UserDetail';
import Producto from './Producto'
import ProductoDetail from './ProductoDetail'
import ProductoDetailLast from './ProductoDetailLast'
import Venta from './Venta'
import VentaDetail from './VentaDetail'  
import VentaDetailLast from './VentaDetailLast'
import Pedido from './Pedido'


function Content() {

    const [usersList, setUsersList] = useState([]);
    const [count, setCount] = useState();
    // const [userLink, setUserLink] = useState();
    useEffect ( () => {
        async function fetchData (){
        const data = await fetch('http://localhost:4000/api/users')
        const users = await data.json();
        setUsersList(users.users)
        setCount(users.count)
        // setUserLink()
    }
            fetchData();       
    },[])

    const [productosList, setProductosList] = useState([]);
    const [productosCount, setProductosCount] = useState();
    useEffect ( () => {
        async function fetchDataProd (){
        const dataProd = await fetch('http://localhost:4000/api/productos')
        const productos = await dataProd.json();
        setProductosList(productos.data)
        setProductosCount(productos.count)
    }
            fetchDataProd();       
    },[])
    const [ventasList, setVentasList] = useState([]);
    const [ventasCount, setVentasCount] = useState();
    const [ventasSum, setVentasSum] = useState();
    useEffect ( () => {
        async function fetchDataVentas (){
        const dataVentas = await fetch('http://localhost:4000/api/compras')
        const ventas = await dataVentas.json();
        setVentasList(ventas.data)
            setVentasCount(ventas.count)
    }
            fetchDataVentas();       
    }, [])
const [pedidosList, setPedidosList] = useState([]);
    const [pedidosCount, setPedidosCount] = useState();
    const [pedidosSum, setPedidosSum] = useState();
    useEffect ( () => {
        async function fetchDataPed (){
        const dataPed = await fetch('http://localhost:4000/api/pedidos')
        const pedidos = await dataPed.json();
        setPedidosList(pedidos.data)
            setPedidosCount(pedidos.count)
            
    }
            fetchDataPed();       
    },[])

    return (
        <div className='content'>
        <SideBar/>
             <article className="product-preview">
                   <div className="product-pic column"> 
        <Switch>
            <Route path='/users'>
                <div className='column'>
                {
                    usersList.map( (user, i) => {
                    return <Contenido {...user} key={`${user.name} ${i}`}/>
                    })
                }
                            </div>
                        </Route>
                        <Route path='/productos'>
                <div className='column'>
                {
                    productosList.map( (product, i) => {
                    return <Producto {...product} key={`${product.id} ${i}`}/>
                    })
                }
                            </div>
                        </Route>
                        <Route path='/ventas'>
                <div className='column'>
                {
                    ventasList.map( (venta, i) => {
                    return <Venta {...venta} key={`${venta.compra_id} ${i}`}/>
                    })
                }
                            </div>
                        </Route>
                        <Route path='/pedidos'>
                <div className='column'>
                {
                    pedidosList.map( (pedido, i) => {
                    return <Pedido {...pedido} key={`${pedido.id} ${i}`}/>
                    })
                }
                            </div>
                        </Route>
            <Route exact path='/'>
              <Card categoria="usuarios" cantidad={count}/>
                            <Card categoria="productos" cantidad={productosCount}/>
                            <Card categoria="ventas" cantidad={ventasCount}/>
                            <Card categoria="$ en ventas" cantidad={pedidosCount}/>
                            <Card categoria="productos en carritos" cantidad={pedidosCount}/>
                            <Card categoria="$ en carritos" cantidad={pedidosCount}/>
            </Route>
            <Route path='/user/:id'>
                <UserDetail />
                        </Route>
                        <Route exact path='/venta/last'>
                <VentaDetailLast />
            </Route>
                        <Route exact path='/producto/last'>
                <ProductoDetailLast />
            </Route>
                        <Route path='/product/:id'>
                <ProductoDetail />
                        </Route>
                        <Route path='/venta/:id'>
                <VentaDetail />
            </Route>
        </Switch>     
                    </div>           
            </article>
     </div>
    )
}

export default Content
