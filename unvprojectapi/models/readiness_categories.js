var bcrypt = require('bcryptjs');
var validator = require('validator');

module.exports = (sequelize,DataTypes) => {
    const readiness_categories = sequelize.define('readiness_categories',{
        id: {
            allowNull: false,
            autoIncrement: true,
            primaryKey: true,
            type: DataTypes.INTEGER,
        },
        category: {
            type: DataTypes.STRING,
            allowNull: true,
        },
    },{
        timestamps: false,
        underscored: false,
        freezeTableName: true,
    },);

    readiness_categories.associate = function(models) {
        //set associations to user role id

    };
    return readiness_categories;
}