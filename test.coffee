assert = require 'assert'
deepClone = require '.'

describe 'Object', ->
  describe '#deepClone()', ->
    it 'should remain the same when original object changed', ->
      originalObject =
        x: 1
      newObject = deepClone originalObject
      # updating the original should not update the cloned
      originalObject.x = 2
      assert.notEqual originalObject.x, newObject.x

    it 'should support prototype', ->
      Object.prototype.deepClone = deepClone
      originalObject = 
        x: 1
      newObject = originalObject.deepClone()
      originalObject.x = 2
      assert.notEqual originalObject.x, newObject.x
