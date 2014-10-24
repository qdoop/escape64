assert = require("assert")

escape64 = require('../escape64')

describe 'Encode', ->
	describe 'simple', ->
		it 'should encode         + -> _p           ', ()->
			assert.equal('_p', escape64.encode('+'))

		it 'should encode         / -> _d           ', ()->
			assert.equal('_d', escape64.encode('/'))

		it 'should encode         = -> _q           ', ()->
			assert.equal('_q', escape64.encode('='))


describe 'Decode', ->
	describe 'simple', ->
		it 'should decode         _p -> +           ', ()->
			assert.equal('+', escape64.decode('_p'))

		it 'should decode         _d -> /           ', ()->
			assert.equal('/', escape64.decode('_d'))

		it 'should decode         +q -> =           ', ()->
			assert.equal('=', escape64.decode('+q'))