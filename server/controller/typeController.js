const uuid = require('uuid') // пакт для генерации id для картинок
const path = require('path') // сохрание пути для картинки
const {Type} = require('../models/models')
const {Op} = require("sequelize"); //модель
const  ApiError = require('../exeptions/apiError')
class TypeController {
    async create(req, res, next) {
        try {


        } catch (e) {
            next( ApiError.BadRequest(e))
        }
    }

    async getAll(req, res) {
        const types = await Type.findAll()
        return res.json(types)
    }


    async getOne(req, res) {


    }
}

module.exports = new TypeController()