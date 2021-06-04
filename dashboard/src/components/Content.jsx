import React, {useState, useEffect, useRef} from 'react'
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
    const [page, setPage] = useState(1);
    const [totalPages, setTotalPages] = useState(5)
    console.log(page)
    useEffect ( () => {
        async function fetchData (){
        const data = await fetch(`http://localhost:4000/api/users/total/${page}`)
        const users = await data.json();
        setUsersList(users.users)
        setCount(users.count)
        //setUserLink()
    }
    fetchData();       
    },[page])

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
    const [ventasSum, setVentasSum] = useState(0);
    useEffect ( () => {
        async function fetchDataVentas (){
        const dataVentas = await fetch('http://localhost:4000/api/compras')
        const ventas = await dataVentas.json();
        setVentasList(ventas.data)
            setVentasCount(ventas.count)
            setVentasSum(ventas.data.reduce((item, tot) => { return tot + item.total }, 0))
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
                    <h3 className="center">LISTA DE USUARIOS</h3>
                    <p>Pagina {page} de {totalPages}</p>
                    <p> <span onClick={page>0?()=>{setPage(page-1)}: setPage(1)}>Anterior</span> <span onClick={page<6?()=>{setPage(page+1)}: setPage(5)}>Siguiente</span></p>
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
                <Card categoria="$ en ventas" cantidad={ventasSum}/>
                <Card categoria="productos en carritos" cantidad={pedidosCount}/>
                <Card categoria="$ en carritos" cantidad={pedidosCount}/>
            </Route>
            <Route path='/user/:id'>
                <UserDetail type='user'/>
            </Route>
            <Route exact path='/venta/last'>
                <VentaDetailLast />
            </Route>
            <Route exact path='/producto/last'>
                <ProductoDetailLast />
            </Route>
            <Route exact path='/ultimousuario'>
                <UserDetail type='lastUser'/>
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
