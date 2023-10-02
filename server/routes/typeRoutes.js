const Router = require('express')
const router = new Router()
const  typeController = require('../controller/typeController')

router.post('/')
router.get('/',  typeController.getAll)
router.put('/')
router.delete('/')

module.exports = router