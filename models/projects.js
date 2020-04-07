//USER Schema
var bcrypt = require('bcryptjs');
var validator = require('validator');

module.exports = (sequelize,DataTypes) => {
    const projects = sequelize.define('projects',{
        id: {
            allowNull: false,
            autoIncrement: true,
            primaryKey: true,
            type: DataTypes.INTEGER,
        },
        country_id: {
            type: DataTypes.INTEGER,
            allowNull: false,
        },
        office_id: {
            type: DataTypes.INTEGER,
            allowNull: false,
        },
        readiness_id: {
            type: DataTypes.INTEGER,
            allowNull: false,
        },
        readiness_category_id: {
            type: DataTypes.INTEGER,
            allowNull: false,
        },
        project_ref: {
            allowNull: false,
            type: DataTypes.STRING,
        },
        grant_amount: {
            allowNull: false,
            type: DataTypes.STRING,
        },
        duration: {
            allowNull: false,
            type: DataTypes.INTEGER,
        },
        date_from_gcf: {
            allowNull: false,
            type: DataTypes.DATE,
            defaultValue: DataTypes.NOW,
        },
        start_date: {
            allowNull: false,
            type: DataTypes.DATE,
            defaultValue:DataTypes.NOW,
        },
        end_date: {
            allowNull: false,
            type: DataTypes.DATE,
            defaultValue: DataTypes.NOW,
        },
        first_disbursement_amount: {
            allowNull: false,
            type: DataTypes.STRING,
        },
        status: {
            allowNull: false,
            type: DataTypes.STRING,
        },
    },{
        timestamps: false,
        underscored: false,
        freezeTableName: true,
    },);

    projects.associate = function(models) {
        //set associations to user role id

    };
    return projects;
}