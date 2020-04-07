//Group service 
const Office = require('../models').offices;
const models = require('../models/index');

module.exports = {
	createOffice:function(office_name){
		return new Promise(function(resolve, reject){
			Office.create({
				office_name: office_name})
			.then(function(data) {
				resolve(data);
			})
			.catch(function(err) {
				reject(err);
			});
		})
	},
}

