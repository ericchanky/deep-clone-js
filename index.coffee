Object.prototype.deepClone = () ->
  return JSON.parse JSON.stringify this