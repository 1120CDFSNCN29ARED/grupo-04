import React from 'react'
import { useState, useEffect } from 'react'
import {useParams} from 'react-router-dom'

function UserDetail() {

    const [userDetail, setUserDetail] = useState({});
    const ido = useParams()

    useEffect (()=>{  
        async function fetchData (props){
            const data = await fetch(`http://localhost:4000/api/users/${ido.id}`);
            const details = await data.json();
            setUserDetail(details)
        }
        fetchData();      
    },[])
    return (
        <div className="product-pic column">
        <section className="container"> 
        
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
                        <strong> Metodos de pago: </strong>
                        { true ? 
                            <span className="text-datos">
                                medio de pago
                            </span>
                            :
                                <span className="text-datos"> No tienes medio de pago </span>
                             } 
                    </p>
                     <p className="text">
                        <strong> Domicilio: </strong>
                        { userDetail.domicilio ? 
                            <span className="text-datos">
                               { userDetail.domicilio.map(domicilio => {
                                   return (
                                   `${domicilio.calle}, ${domicilio.cp}, ${domicilio.localidad}, 
                                   ${domicilio.provincias.nombre}, ${domicilio.paises.nombre}`)
                            }
                                )}
                            </span>
                            :
                                <span className="text-datos"> No tienes medio de pago </span>
                             } 
                    </p>
                    
                       
           
            </section>
        </div>
    )
    // }
}

export default UserDetail
