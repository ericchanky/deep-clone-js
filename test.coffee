assert = require 'assert'
require '.'

describe 'Object', ->
  describe '#deepClone()', ->
    it 'should remain the same when original object changed', ->
      originalObject =
        x: 1
      newObject = originalObject.deepClone()
      # updating the original should not update the cloned
      originalObject.x = 2
      assert.notEqual originalObject.x, newObject.x
