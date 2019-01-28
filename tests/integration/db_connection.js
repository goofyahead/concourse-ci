const pgp = require('pg-promise')();
const { expect } = require('chai');
const parameters = {
  host: process.env.VAR_DB_HOST || 'localhost',
  port: process.env.VAR_DB_PORT || 5432,
  database: process.env.VAR_DB_DATABASE || 'postgres',
  user: process.env.VAR_DB_USER || 'postgres',
  password: process.env.VAR_DB_PASSWORD || 'postgres',
};

describe('test db', () => {
	it('should be able to connect', () => {
		const db = pgp(parameters);

		return db.connect()
		    .then(function (obj) {
		        obj.done();
		        console.log('connected');
		    })
		    .catch(function (error) {
		        console.log("ERROR:", error.message);
		        expect.fail("Should be able to connect to DB");
		    });
	})
})