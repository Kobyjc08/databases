import React from 'react';
import BestPokemon from './components/BestPokemon';
import Logo from './components/Logo';
import CaughtPokemon from './components/CaughtPokemon';
import './App.css';



function App() {

    function logWhenClicked() {
        console.log('Hey mate')
    }
    const Abilities = ['Anticipation', 'Adaptability', 'Run-Away']
    return <div>
        <Logo appName='Pokedex' handleClick={logWhenClicked}/>
        <BestPokemon Abilities={Abilities}/>
        <CaughtPokemon date={new Date().toLocaleDateString()}/>
        </div>
}

export default App;

