const express = require('express')
const app = express()
// Set the port for the server to listen on
// Either from an environment variable or default to port 80
const port = process.env.PORT || 80

app.get('/', (req, res) => {
  const response = {
    message: "My name is Lang Bledsoe",
    timestamp: Date.now(),
};

res.send(JSON.stringify(response));
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})