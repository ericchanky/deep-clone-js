deepClone = () ->
  JSON.parse JSON.stringify this

window_or_global = () ->
  if typeof window == 'undefined'
    global
  else
    window

do (root = window_or_global(), factory = deepClone) ->
  root.Object.prototype.deepClone = factory
