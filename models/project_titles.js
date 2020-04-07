//USER Schema
var bcrypt = require('bcryptjs');
var validator = require('validator');

module.exports = (sequelize,DataTypes) => {
    const project_titles = sequelize.define('project_titles',{
        id: {
            allowNull: false,
            autoIncrement: true,
            primaryKey: true,
            type: DataTypes.INTEGER,
        },
        project_id: {
            type: DataTypes.INTEGER,
            allowNull: false,
        },
        title: {
            type: DataTypes.STRING,
            allowNull: true,
        },
    },{
        timestamps: false,
        underscored: false,
        freezeTableName: true,  
    });

    project_titles.associate = function(models) {
        //SET USER BELONG TO ROLES

    };
    return project_titles;
}