(function() {
  var sayhello;

  if (window.belite == null) {
    window.belite = {};
  }

  window.belite.math = {};

  sayhello = function(name) {
    return console.log("Hello There, " + name);
  };

  belite.math.MersenneTwister = (function() {
    function MersenneTwister(seed) {}

    MersenneTwister.prototype.get = function() {};

    return MersenneTwister;

  })();

  belite.math.Vector2 = (function() {
    function Vector2(x, y) {
      this.x = x != null ? x : 0;
      this.y = y != null ? y : 0;
    }

    Vector2.prototype.add = function(other) {
      return new belite.math.Vector2(this.x + other.x, this.y + other.y);
    };

    Vector2.prototype.sub = function(other) {
      return new belite.math.Vector2(this.x - other.x, this.y - other.y);
    };

    Vector2.prototype.mul = function(other) {
      return new belite.math.Vector2(this.x - other.x, this.y - other.y);
    };

    Vector2.prototype.length = function() {
      return math.sqrt(this.x * this.x + this.y * this.y);
    };

    Vector2.prototype.mulScalar = function(val) {
      return new belite.math.Vector2(this.x * val, this.y * val);
    };

    Vector2.prototype.clone = function() {
      return new belite.math.Vector2(this.x, this.y);
    };

    return Vector2;

  })();

}).call(this);
