import React, { Component, useState, useEffect } from 'react';

function BestPokemonFetcher () {

useEffect (() => {
    fetch('https://pokeapi.co/api/v2/pokemon/1/')
    .then(res => res.json())
    .then(data => setbestPokemon(data))
}, []);

const [bestPokemon, setbestPokemon] = useState(null);

return (!bestPokemon ?  (null) :
    (<BestPokemon Abilities={bestPokemon.Abilities}/>))

}

class BestPokemon extends Component {
    state = {
        pokemonNames: [],
        isLoading: true
    }
        componentDidMount() {
        fetch('https://pokeapi.co/api/v2/pokedex/1/')
        .then(res => res.json())
        .then(data => {
            const names =[data.pokemon_entries[0].pokemon_species.name, data.pokemon_entries[1].pokemon_species.name, data.pokemon_entries[2].pokemon_species.name, data.pokemon_entries[3].pokemon_species.name, data.pokemon_entries[4].pokemon_species.name, data.pokemon_entries[5].pokemon_species.name, data.pokemon_entries[6].pokemon_species.name];
            this.setState({
                pokemonNames: names,
                isLoading: false
            })
        });
    }

render (){
    console.log(this.props.Abilities)
    if (this.state.isLoading) {
        return <span>Loading ....</span>
    } else {
    return (
    <div>
        <p>My favorite Pokemon is Pikachu</p>
        {this.state.isLoading ? <span>Loading...</span> :
        <>
        <h3>Pokemon names</h3>
        <ul>
            {this.state.pokemonNames.map((name, index) => {
                return (<li key={index}>{name}</li>)
        })}
        </ul>

        <h3>Pokemon Abilities</h3>
    
        <ul>
            {this.props.Abilities.map((Abilitie, index) => {
                return (<li key={index}>{Abilitie}</li>)
        })}
        </ul>
    </>
    }
    </div>
    )}
}}

export default BestPokemonFetcher;