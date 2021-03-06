// Generated by CoffeeScript 1.11.1
(function() {
  var deepClone;

  deepClone = function(object) {
    return JSON.parse(JSON.stringify(object || this));
  };

  (function(root, factory) {
    if (typeof define === 'function' && define.amd) {
      return define(function() {
        return function(object) {
          return factory.bind(object);
        };
      });
    } else if (typeof module !== 'undefined' && module.exports) {
      return module.exports = factory;
    } else {
      return root.Object.prototype.deepClone = factory;
    }
  })(this, deepClone);

}).call(this);
