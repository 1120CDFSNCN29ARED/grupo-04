import React from 'react'
import { useState, useEffect } from 'react'
import {useParams} from 'react-router-dom'

function UserDetail({type}) {

    const [userDetail, setUserDetail] = useState({domicilio:[]});
    const [url, setUrl] = useState('')
    const ido = useParams()

    useEffect(()=>{
    if(type === 'lastUser'){
        setUrl ('http://www.pccomponents.com.ar/api/users/last')
    } else if(type === 'user'){
        setUrl (`http://www.pccomponents.com.ar/api/users/${ido.id}`)
    }
   },[type])
    useEffect (()=>{  
        async function fetchData (props){
            const data = await fetch(url);
            const details = await data.json();
            if(type === 'lastUser'){
                setUserDetail(details[0])
            }else if(type === 'user'){
            setUserDetail(details)
            }
        }
        fetchData();      
    },[url])
    console.log(userDetail)
    return (
        <div className="product-pic column">
        <section className="container"> 
                    {userDetail.createdAt ? 
                    <>
                        <h3 className="lastUserTitle">Ultimo Usuario creado el</h3> 
                        <h3 className="lastUserTitle">{userDetail.createdAt}</h3>
                    </>
                        :
                    null}
                        <div className="icon-login">
                            <img src={userDetail.image} alt=""/>
                        </div>
       
                    <p className="text">
                        <strong> Nombre: </strong><span className="text-datos">
                            {userDetail.name}
                        </span>
                    </p>
                    <p className="text">
                        <strong> Apellido: </strong><span className="text-datos">
                           {userDetail.last_name}
                        </span>
                    </p>
                    <p className="text">
                        <strong> Email: </strong><span className="text-datos">
                           {userDetail.email}
                        </span>
                    </p>
                    <p className="text">
                        <strong> Telefono: </strong><span className="text-datos">
                            {userDetail.telefono}
                        </span>
                    </p>
                    <p className="text">
                        <strong> Medios de pago: </strong>
                       
                            <span className="text-datos">
                                {userDetail.medio_pago}
                            </span>
                    </p>
                     <p className="text">
                        { userDetail.domicilio.length > 0 ? 
                            userDetail.domicilio.map(domicilio => {
                                return (
                                <>
                                    <p className="text-datos">
                                        <strong> Domicilio: </strong>
                                        {domicilio.calle}, {domicilio.cp}, {domicilio.localidad}, 
                                        {domicilio.provincias.nombre}, {domicilio.paises.nombre}
                                   </p>
                                </>)
                                }
                            )
                        :
                            <span className="text-datos"> <strong> Domicilio: </strong>No tienes domicilios </span>
                        } 
                    </p>
            </section>
        </div>
    )
}

export default UserDetail
