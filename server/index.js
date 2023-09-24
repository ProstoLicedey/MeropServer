require('dotenv').config()
const  express  = require('express')
const  sequelize = require('./models/db')
const models = require('./models/models')
const  cors = require('cors')
const  router = require('./routes/index')
const  cookieParser = require('cookie-parser')
const  PORT = process.env.PORT || 5000
const  errorMiddleware = require('./middlewares/errorMiddleware')

const  app  = express()
app.use(cookieParser())
app.use(cors())
app.use(express.json())
app.use('/api', router)

app.use(errorMiddleware)

app.get('/', (req, res) => {
    res.status(200).json({message: 'good'})
} )

const  start = async () =>{
    try {
        await sequelize.authenticate()
        await sequelize.sync()
        app.listen(PORT, ()=> console.log(`Server started on port${PORT}`))
    } catch (e)
    {
        console.log(e)
    }
}

start()

