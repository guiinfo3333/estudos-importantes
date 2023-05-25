import express from "express"
const app = express()

app.get("/", (req, res) => {
    res.send("Rodando projeto2teste")
})

app.listen(3000, () => {
    console.log("running port 3000")
})


