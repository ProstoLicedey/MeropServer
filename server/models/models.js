const sequelize  = require('./db')
const  {DataTypes} = require('sequelize')

const User = sequelize.define('user', {
    id: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    email: {type: DataTypes.STRING, unique: true,},
    password: {type: DataTypes.STRING},
    name: {type: DataTypes.STRING},
    surname: {type: DataTypes.STRING},
    birthday: {type: DataTypes.DATEONLY},
    role: {type: DataTypes.STRING, defaultValue: "USER"},

})
const Token = sequelize.define('token', {
    id: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    refreshToken: {type: DataTypes.STRING, required: true},
})
const UpdatePassword = sequelize.define('updatePassword', {
    id: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    code: {type: DataTypes.INTEGER,  required: true},
})
const Link = sequelize.define('link', {
    id: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    isActivated: {type: DataTypes.BOOLEAN, defaultValue: false},
    activationLink: {type:  DataTypes.STRING},
})

const Order = sequelize.define('order', {
    id: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
})

const Ticket = sequelize.define('ticket', {
    id: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    number: {type: DataTypes.INTEGER},
    Status: {type: DataTypes.BOOLEAN, default: false},
})

const Event = sequelize.define('event', {
    id: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    title: {type: DataTypes.STRING},
    description: {type: DataTypes.STRING},
    price: {type: DataTypes.INTEGER},
    dateTime: {type: DataTypes.DATE},
    img: {type: DataTypes.STRING, allowNull: false},
    Status: {type: DataTypes.STRING, defaultValue: "ACTIVE"}
})

const AgeRating = sequelize.define('ageRating', {
    id: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    age: {type: DataTypes.INTEGER},
})

const Type = sequelize.define('type', {
    id: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    name: {type: DataTypes.STRING}
})

const Entrance = sequelize.define('entrance', {
    id: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    adress: {type: DataTypes.STRING},
    totalSeats: {type: DataTypes.INTEGER},
    seatsLeft: {type: DataTypes.INTEGER},

})
const Hall = sequelize.define('hall', {
    id: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    adress: {type: DataTypes.STRING},
    name: {type: DataTypes.STRING},
    numberRows: {type: DataTypes.INTEGER},
    numberSeatsInRow: {type: DataTypes.INTEGER},

})
const Seat = sequelize.define('seat', {
    id: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    row: {type: DataTypes.INTEGER},
    seat: {type: DataTypes.INTEGER},

})

User.hasMany(Order)
Order.belongsTo(User)

User.hasOne(Token)
Token.belongsTo(User)

User.hasOne(UpdatePassword)
UpdatePassword.belongsTo(User)

User.hasOne(Link)
Link.belongsTo(User)


Ticket.hasMany(Order)
Order.belongsTo(Ticket)

Event.hasMany(Ticket)
Ticket.belongsTo(Event)

AgeRating.hasMany(Event)
Event.belongsTo(AgeRating)

Type.hasMany(Event)
Event.belongsTo(Type)

Entrance.hasMany(Event)
Event.belongsTo(Entrance)

Hall.hasMany(Event)
Event.belongsTo(Hall)

Hall.hasMany(Seat)
Seat.belongsTo(Hall)

Seat.hasMany(Ticket)
Ticket.hasMany(Seat)

module.exports = {
    User,
    Order,
    Ticket,
    Event,
    AgeRating,
    Type,
    Entrance,
    Hall,
    Seat,
    Token,
    Link,
    UpdatePassword
}