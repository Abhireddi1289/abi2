const express = require('express')
const app = express()
const port = 5000

app.get('/Abhiworld', (req, res) => {
  res.send("This is Abhi's's World!")
})

app.listen(port, () => {
  console.log(`Abhi's app listening on port ${port}`)
})
