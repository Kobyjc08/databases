import React from 'react';
import BestPokemon from './components/BestPokemon';
import Logo from './components/Logo';
import CaughtPokemon from './components/CaughtPokemon';


function App() {
    const Abilities = ['Anticipation', 'Adaptability', 'Run-Away']
    return <div>
        <Logo appName='Pokedex'/>
        <BestPokemon Abilities={Abilities}/>
        <CaughtPokemon date={new Date().toLocaleDateString()}/>
        </div>
}

export default App;

