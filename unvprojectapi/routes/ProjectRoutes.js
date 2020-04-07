require('../controllers/index');

const { check, validationResult } = require('express-validator');

const projectController = require('../controllers').project;

const validator = require('../validators/ProjectValidator');

const config =  require('../helpers/ConstantHelper');

module.exports = (app) => {
	    app.post(config.baseURL+'project/CreateRequest', validator.validateProjectBody(validator.schemas.projectSchema), projectController.createProject);

	     app.post(config.baseURL+'project/UpdateRequest/:id', validator.validateProjectBody(validator.schemas.projectSchema), projectController.updateProject);

	    app.get(config.baseURL+'projects', projectController.getAllProjects);

	    app.delete(config.baseURL+'project/delete/:id', projectController.deleteProject);
	}