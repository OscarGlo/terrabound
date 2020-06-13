class_name VectorUtil

#static func Apply(Vector2 v, Func<decimal, decimal> f): Vector2
#	return new Vector2((float) f((decimal) v.X), (float) f((decimal) v.Y))



static func modulo(v: Vector2, n: int):
	#return Apply(v, a => a % n);
	var x = abs(v.x)
	var y = abs(v.y)
	return Vector2( x % n , y % n)

