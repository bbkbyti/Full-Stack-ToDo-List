import React from 'react';
import { Link } from 'react-router-dom';

export default function (props) {
    return (
        <header>
            <h1>ToDo List</h1>
            <Link to='/login'>Login/Register</Link>
            {props.children}
        </header>
    )
}
