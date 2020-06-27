import React, { useState } from 'react';

const CaughtPokemon = (props) => {

    const [totalCaught, setTotalCaught] = useState(0);

    const incrementTotalCaught = () => {
    setTotalCaught(totalCaught + 1)
    }
const reset = () => {
    setTotalCaught(0)
}
    return (
    <div>
    <p>Caught {totalCaught} Pokemon on</p>{props.date}
    <button onClick={incrementTotalCaught}>Catch Pokemon</button>
    <button onClick={reset}>Reset</button>
    </div>
    )
}

export default CaughtPokemon;