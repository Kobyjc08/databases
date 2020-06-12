import React from 'react';

const BestPokemon = (props) => {
    ;
    return <div>
    <p>My favorite Pokemon is Pikachu</p>
    <ul>{props.Abilities.map((Abilitie, index) => {
        return (<li key={index}>{Abilitie}</li>)
    })}
        </ul>
    </div>
}

export default BestPokemon;