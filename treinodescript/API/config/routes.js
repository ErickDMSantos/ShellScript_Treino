const express = require('express')
const routes = express.Router()

let db =[
    {'1': {nome: "Erick", idade: '25' }},
    {'2': {nome: "Lucas", idade: '22' }}, 
    {'3': {nome: "Victor", idade: '??' }}
]
//buscar dados
routes.get('/', (req, res) => {
    return res.json(db)
})
//inserir dados
routes.post('/add', (req, res) => {
    const {username} = req.body

    if(!username)
        return res.status(400).send({error: 'Invalid username'})
    
    db.push({username})
    return res.send({username})

}),

routes.delete('/:id', (req, res) => {
    const id = req.params.id

    let newDB = db.filter(item => {
        if(!item[id])
            return item
    })
    db = newDB

    return res.send(newDB)
})

module.exports = routes