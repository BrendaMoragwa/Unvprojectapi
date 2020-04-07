//Group service 
const Readiness = require('../models').readiness;
var bcrypt = require('bcryptjs');
const models = require('../models/index');

module.exports = {
	createReadiness:function(readiness_type){
		return new Promise(function(resolve, reject){
			Readiness.create({
				readiness_type: readiness_type})
			.then(function(data) {
				resolve(data);
			})
			.catch(function(err) {
				reject(err);
			});
		})
	},
}

