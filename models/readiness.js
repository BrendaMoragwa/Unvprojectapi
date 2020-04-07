//USER Schema
var bcrypt = require('bcryptjs');
var validator = require('validator');

module.exports = (sequelize,DataTypes) => {
    const readiness = sequelize.define('readiness',{
        id: {
            allowNull: false,
            autoIncrement: true,
            primaryKey: true,
            type: DataTypes.INTEGER,
        },
        readiness_type: {
            type: DataTypes.STRING,
            allowNull: true,
        },
    },{
        timestamps: false,
        underscored: false,
        freezeTableName: true,
    },);

    readiness.associate = function(models) {
        //set associations to user role id

    };
    return readiness;
}