const { expect } = require('chai');

const { sum } = require('../calculator')

describe('test addition', () => {
	it('should add 2 + 3', () => {
		expect(sum(2, 3)).to.equal(5);
	})
})