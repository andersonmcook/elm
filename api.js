'use strict'

const jsonServer = require('json-server')

const server = jsonServer.create()
const router = jsonServer.router('db.json')
const PORT = 4000

server.use(jsonServer.defaults())
server.use(router)

console.log(`Listening at ${PORT}`)
server.listen(PORT)
