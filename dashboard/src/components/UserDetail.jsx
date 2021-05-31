import React from 'react'
import { useState, useEffect } from 'react'
import {useParams} from 'react-router-dom'

function UserDetail() {

    const [userDetail, setUserDetail] = useState({});
    const ido = useParams()
    console.log(ido)
    // async function fetchData(){
    //         const data = await fetch(`http://localhost:4000/api/users/${ido.id}`);
    //         const details = await data.json();
    //         console.log(details)
    //         setUserDetail(details)
    //     }
    //     fetchData();

    //el problema es que renderiza antes de tener los datos

    useEffect (()=>{  
        async function fetchData (props){
            const data = await fetch(`http://localhost:4000/api/users/${ido.id}`);
            const details = await data.json();
            console.log(details)
            setUserDetail(details)
        }
        fetchData();
    },[])
    console.log(userDetail)

    // if(userDetail){

    return (
        <div className="product-pic column">
        <section className="container">
                <div className="register">
                   {console.log(userDetail)}
                    <div className="profile-photo-cont">
                        <div className="icon-login">
                            <img src={userDetail.image} alt=""/>
                        </div>
                        <p id="text-foto-perfil">
                            Foto de perfil
                        </p>
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
                        { true ? 
                            <span className="text-datos">
                                domicilio
                            </span>
                            :
                                <span className="text-datos"> No tienes medio de pago </span>
                             } 
                    </p>
                    
                       
                </div>
            </section>
        </div>
    )
    // }
}

export default UserDetail
