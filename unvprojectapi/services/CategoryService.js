//Group service 
const Category = require('../models').readiness_categories;
var bcrypt = require('bcryptjs');
const models = require('../models/index');

module.exports = {
	createCategory:function(category){
		return new Promise(function(resolve, reject){
			Category.create({
				category: category})
			.then(function(data) {
				resolve(data);
			})
			.catch(function(err) {
				reject(err);
			});
		})
	},
}

