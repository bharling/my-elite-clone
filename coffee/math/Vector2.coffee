

class belite.math.Vector2
  constructor: (@x=0, @y=0) ->
    
  add: (other) ->
    new belite.math.Vector2 @x + other.x, @y + other.y
    
  sub: (other) ->
    new belite.math.Vector2 @x - other.x, @y - other.y
    
  mul: (other) ->
    new belite.math.Vector2 @x - other.x, @y - other.y
    
  length : ->
    math.sqrt @x * @x + @y * @y
    
  mulScalar : (val) ->
    new belite.math.Vector2 @x * val, @y * val
    
  clone: ->
    new belite.math.Vector2 @x, @y