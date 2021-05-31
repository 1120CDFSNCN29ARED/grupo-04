import React, {useState, useEffect} from 'react'
import { Route, Switch } from 'react-router-dom'
import Card from './Card';
import Contenido from './Contenido'
import SideBar from './SideBar'
import UserDetail from './UserDetail';

function Content() {

    const [usersList, setUsersList] = useState([]);
    const [count, setCount] = useState();
    const [userLink, setUserLink] = useState();

    useEffect ( () => {
        async function fetchData (){
        const data = await fetch('http://localhost:4000/api/users')
        const users = await data.json();
        console.log(users);
        setUsersList(users.users)
        setCount(users.count)
        setUserLink()
    }
            fetchData();       
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
            <Route exact path='/'>
              <Card categoria="usuarios" cantidad={count}/>
              <Card/>
              <Card/>
              <Card/>
            </Route>
            <Route path='/user/:id'>
                <UserDetail />
            </Route>
        </Switch>     
                    </div>           
            </article>
     </div>
    )
}

export default Content
