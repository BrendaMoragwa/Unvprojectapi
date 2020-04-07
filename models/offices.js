//USER Schema
var bcrypt = require('bcryptjs');
var validator = require('validator');

module.exports = (sequelize,DataTypes) => {
    const offices = sequelize.define('offices',{
        id: {
            allowNull: false,
            autoIncrement: true,
            primaryKey: true,
            type: DataTypes.INTEGER,
        },
        office_name: {
            type: DataTypes.STRING,
            allowNull: false,
        },
    },{
        timestamps: false,
        underscored: false,
        freezeTableName: true,
    });

    offices.associate = function(models) {

    };
    return offices;
}