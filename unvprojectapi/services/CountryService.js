//users service 
const Country = require('../models').countries;
const models = require('../models/index');

module.exports = {
	createCountry:function(country_name){
		return new Promise(function(resolve, reject){
			Country.create({
				country_name: country_name})
			.then(function(data) {
				console.log(JSON.stringify(data));	
				resolve(data);
			})
			.catch(function(err) {
				reject(err);
			});
		})
	},
}

