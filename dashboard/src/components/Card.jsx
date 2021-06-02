import React from 'react'

function Card(props) {
    return (
        
        <article className="product-preview small">
                   
                   <i className="fas fa-chart-line icon"></i>
                    <div className="product-description">
                        <p>Cantidad total de {props.categoria}</p>
                    </div>
                    <div className="info-btn">
                        <p><b>{props.cantidad}</b></p>
                    </div>
        </article>
        
    )
}

export default Card
