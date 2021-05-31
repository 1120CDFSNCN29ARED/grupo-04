import '../userList.css'
import {Link} from 'react-router-dom'
function Contenido(props) {
    
    return (
    
        <div className="margin-top">
        <section className="user-list">
            <div>
               <p className="user-list-text"><strong>Nombre:</strong> {props.name}</p>
            </div>
                        <div>
               <p className="user-list-text"><strong>Apellido:</strong> {props.last_name}</p>
            </div>
            <div>
               <p className="user-list-text"><strong>Email:</strong>{props.email}</p> 
            </div>
                <div className="info-btn ver">
                    <Link to={`/user/${props.id}`}>VER</Link>
                </div>
        </section>
        </div>
    
    )
}

export default Contenido
