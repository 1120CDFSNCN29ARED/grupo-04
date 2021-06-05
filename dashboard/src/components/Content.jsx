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
import './css/tables.css'


function Content() {

    const [usersList, setUsersList] = useState([]);
    // const [userLink, setUserLink] = useState();
    const [count, setCount] = useState();
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
    const [ventasSum, setVentasSum] = useState(0);
    useEffect ( () => {
        async function fetchDataVentas (){
            const dataVentas = await fetch('http://localhost:4000/api/compras')
            const ventas = await dataVentas.json();
            setVentasList(ventas.data)
            setVentasCount(ventas.count)
            let ventasRaw = ventas.data;
            let ventasArray = ventasRaw.map((compra) => {
            compra.total = compra.pedidos.reduce((tot, item) => {
                return tot + item.precio_compra * item.cantidad;
                }, 0);
            
                return compra;
            });

            setVentasSum( ventasArray.reduce((tot, item) => {return tot + item.total}, 0))
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
            setPedidosSum(pedidos.total)
            
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
                {
                    usersList.map( (user, i) => {
                    return <Contenido {...user} key={`${user.name} ${i}`}/>
                    })
                }
                            </div>
            </Route>
            <Route path='/productos'>
                            <table className="table">
                                <tr className="table-secondary">
                                    <th className="productImg">Imagen</th>
                                    <th>Nombre</th>
                                    <th>Marca</th>
                                    <th>Categoría</th>
                                    <th>Cantidad en stock</th>
                                    <th>Precio</th>
                                </tr>
                                
                {
                    productosList.map( (product, i) => {
                    return <Producto {...product} key={`${product.id} ${i}`}/>
                    })
                                    }
                </table>
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
                            <Card categoria="ventas" cantidad={ventasCount}/>
                            <Card categoria="productos en carritos" cantidad={pedidosCount}/>
                            <Card categoria="productos" cantidad={productosCount}/>
                            <Card categoria="$ en ventas" cantidad={Number(ventasSum).toLocaleString('es-AR',
                                    {minimumFractionDigits: 2, maximumFractionDigits: 2, style: 'currency' ,
                                    currency: 'ARS' })}/>
                            <Card categoria="$ en carritos" cantidad={Number(pedidosSum).toLocaleString('es-AR',
                                    {minimumFractionDigits: 2, maximumFractionDigits: 2, style: 'currency' ,
                                    currency: 'ARS' })}/>
            </Route>
            <Route path='/user/:id'>
                <UserDetail />
            </Route>
            <Route exact path='/ultimaventa'>
                <VentaDetailLast />
            </Route>
            <Route exact path='/producto/last'>
                <ProductoDetailLast />
            </Route>
            <Route exact path='/ultimousuario'>
                <UserDetail />
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
