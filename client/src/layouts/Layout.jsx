import React from 'react';
import { Link } from 'react-router-dom';

export default function (props) {
    const { currentUser, handleLogout } = props;

    return (
        <header>
            <h1>ToDo List</h1>
            {
                currentUser ? (
                    <div>
                        <p>{currentUser.username}</p>
                        <button onClick={handleLogout}>Logout</button>
                    </div>
                ) : (
                    <Link to='/login'>Login/Register</Link>
                )
            }
            <hr />
            {currentUser && (
                <div>
                    <Link to='/todos'>To Do List</Link>
                </div>
            )}
            {props.children}
        </header>
    )
}
