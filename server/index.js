const express = require('express')
const bodyParser = require('body-parser')

const port = 3000
const environment = 'production'

const app = express()
app.use(bodyParser.json())
app.use(bodyParser.urlencoded({ extended: true }))

app.use('/', (req, res) => res.status(200).send({"status": 200, message: "Hello wordl"}))

app.listen(port, () => {
    console.info(`App running on ${port}`)
    console.info(`App running on ${environment} environment`)
})

module.exports = app

