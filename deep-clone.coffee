deepClone = (object) ->
  JSON.parse JSON.stringify object || this

do (root = this, factory = deepClone) ->
  if typeof define == 'function' and define.amd
    define ->
      (object) ->
        factory.bind object
  else if typeof module != 'undefined' and module.exports
    module.exports = factory
  else
    root.Object.prototype.deepClone = factory
