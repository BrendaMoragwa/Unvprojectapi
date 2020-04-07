//users service 
const Project = require('../models').projects;
const models = require('../models/index');

module.exports = {
	GetAllProjects	:function(){
		return new Promise(function(resolve,reject){
			Project.findAll({}).then(projects=>{
				resolve(projects);
			},error=>{
				reject(error);
				
			}); 
		});
	},
	
	GetProjectById:function(project_id){
		return new Promise(function(resolve, reject){
			Project.findOne({
				where: {
					id: project_id,
				},
			}).then(project=>{
				resolve(project);
			},error=>{
				reject(error);
			})
		})
	},

	createProject:function(countryId, officeId, readinessId, categoryId, req){
		return new Promise(function(resolve, reject){
			Project.create({
				country_id: countryId,
				office_id: officeId,
				readiness_id: readinessId,
				readiness_category_id: categoryId,
				project_ref: req.project_ref,
				grant_amount:req.grant_amount,
				duration: req.duration,
				first_disbursement_amount: req.first_disbursement_amount,
				status: req.status})
			.then(function(data) {
				resolve(data);
			})
			.catch(function(err) {
				console.log(JSON.stringify(err));
				reject(err);
			});
		})
	},

	updateProject:function(projectId, req){
		return new Promise(function(resolve, reject){
			Project.update({
				project_ref: req.project_ref,
				grant_amount:req.grant_amount,
				duration: req.duration,
				first_disbursement_amount: req.first_disbursement_amount,
				status: req.status
			}, {
				where: {id: projectId}
			}).then(function(projects){
				resolve(projects);
			}, function(error){
				reject(error);
			})
		})

	},


	deleteProject:function(projectId){
		return new Promise(function(resolve, reject){
			Project.destroy({
				where: {
					id: projectId,
				},
			}).then(projects=>{
				resolve(projects);
			},error=>{
				reject(error);
			})
		})
	},
}

