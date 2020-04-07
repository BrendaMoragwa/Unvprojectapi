const User = require('../models').user;
var HttpStatus = require('http-status-codes');
var projectService=require('../services/ProjectService.js');
const officeService = require('../services/OfficeService.js');
let countryService = require('../services/CountryService');
const readinessService = require('../services/ReadinessService.js');
let categoryService = require('../services/CategoryService');

module.exports = {
    async getAllProjects(req,res) {
        try {
            const projectCollection = await projectService.GetAllProjects().then(function(results){
                res.status(200).send(JSON.stringify(results)); 
                console.log(JSON.stringify(results));
            }, function(error){
                res.status(200).send({status: false, status_code: 201, status_message: JSON.stringify(error)});
            });
        }catch(e){
            console.log(e.message);
            res.status(400).send({status: false, status_code: 400, status_message: JSON.stringify(e)});
        }
    },
    async createProject(req, res){
        try{
            const projectCollection = await countryService.createCountry(req.body.country_name).then(async function(results){
                let countryId = results.id;
                const officeCollection = await officeService.createOffice(req.body.office_name).then(async function(resultsOffice){
                    let officeId = resultsOffice.id;
                    console.log("OFFICEID "+officeId);
                    const readinessCollection = await readinessService.createReadiness(req.body.readiness_type).then(async function(resultsReadiness){
                        let readinessId = resultsReadiness.id;
                        console.log("READINESS ID "+readinessId);
                        const readinessCategoryCollection = await categoryService.createCategory(req.body.category).then(async function(resultsCategory){
                            let categoryId = resultsCategory.id;
                            console.log("CATEGORY ID "+categoryId);
                            const projectCollection = await projectService.createProject(countryId, officeId, readinessId, categoryId, req.body).then(function(resultsProject){
                                res.status(200).send({status: true, status_code: 200, status_message: 'Project created successfully!'}); 
                            }, projectError=>{
                             res.status(500).json({status: false, status_code: 500, status_message: JSON.stringify(projectError)})
                         })

                        }, errorCategory=>{
                            res.status(500).json({status: false, status_code: 500, status_message: JSON.stringify(errorCategory)})
                        })

                    }, errorReadiness=>{
                     res.status(500).json({status: false, status_code: 500, status_message: JSON.stringify(errorReadiness)})
                 })
                }, function(errorOffice){
                    res.status(500).json({status: false, status_code: 500, status_message: JSON.stringify(errorOffice)})
                })  

            }, function(error){
                res.status(500).send({status: false, status_code: 500, status_message:error.message});
            });
        }catch(e){
            console.log(e.message);
            res.status(500).send({status: false, status_code: 500, status_message:e.message});
        }
    },
    async updateProject(req, res){
        let projectId = req.params.id;
        if(projectId){
            try{
                const projectCollection = await projectService.updateProject(projectId, req.body).then(function(resultsProject){
                    res.status(200).send({status: true, status_code: 200, status_message: 'Project Updated successfully!'}); 
                }, projectError=>{
                 res.status(500).json({status: false, status_code: 500, status_message: JSON.stringify(projectError)})
             })
            }catch(e){
                console.log(e.message);
                res.status(HttpStatus.BAD_REQUEST).send({error: HttpStatus.getStatusText(HttpStatus.BAD_REQUEST)}); 
            }
        }else{
            res.status(401).send({status: false, status_code: 401, status_message: 'Project ID is required!'});
        }
    },
    
    async deleteProject(req, res){
      let projectId = req.params.id;
      if(projectId){
        try{
            const projectCollection = await projectService.deleteProject(projectId).then(function(results){
                res.status(HttpStatus.OK).send({status: true, status_code: 200, status_message: 'Project Deleted successfully!'});
            }, function(error){
                res.status(HttpStatus.OK).send({status: false, status_code: 201, status_message: error});
            });
        }catch(e){
            console.log(e.message);
            res.status(HttpStatus.BAD_REQUEST).send({error: HttpStatus.getStatusText(HttpStatus.BAD_REQUEST)}); 
        }
    }else{
        res.status(401).send({status: false, status_code: 401, status_message: 'Project ID is required!'});
    }
},

}