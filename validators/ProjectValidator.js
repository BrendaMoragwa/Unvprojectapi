const Joi = require('joi');

module.exports = {
  schemas : {
    projectSchema : Joi.object().keys({
      country_name: Joi.string().required(),
      office_name: Joi.string().required(),
      readiness_type: Joi.string().required(),
      category : Joi.string().required(),
      project_ref : Joi.string().required(),
      grant_amount: Joi.number().required(),
      duration: Joi.number().required(),
      first_disbursement_amount : Joi.number().required(),
      status : Joi.string().required(),
    })
  },

  validateProjectBody : (schema) => {
    return (req, res, next) => {
      const result = Joi.validate(req.body, schema);
      if( result.error ) {
        return res.status(400).json({
          status: false,
          status_code: 400,
          status_message : result.error.details[0].message
        })
      }else {
        if(!req.value) {
          req.value = {}
        }
        req.value['body'] = result.value;
        next();
      }
    }
  }  
}