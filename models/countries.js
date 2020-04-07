//USER Schema
var bcrypt = require('bcryptjs');
var validator = require('validator');

module.exports = (sequelize,DataTypes) => {
    const countries = sequelize.define('countries',{
        id: {
            allowNull: false,
            autoIncrement: true,
            primaryKey: true,
            type: DataTypes.INTEGER,
        },
        country_name: {
            type: DataTypes.STRING,
            allowNull: false,
        } },{
        timestamps: false,
        underscored: true,
        freezeTableName: true,
    },  );

    countries.associate = function(models) {
        //set associations to user role id

    };
    return countries;
}
