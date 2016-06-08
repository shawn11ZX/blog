.Math3D.vector3DAngleVectors
[source,javascript]
----
/**
注意上述公式计算出的R(Eula}可以表示为[R(front), R(Left), R(Up)]
而下面的函数计算的是R(front), R(Right), R(Up)
*/
public static function vector3DAngleVectors( angles:Vector3D, forward:Vector3D, right:Vector3D, up:Vector3D ):void
{
	var		angle:Number;
	var		sr:Number;
	var		sp:Number;
	var		sy:Number;
	var		cr:Number;
	var		cp:Number;
	var		cy:Number;			
	
	angle = angles.y * (Math.PI*2 / 360);
	sy = Math.sin(angle);
	cy = Math.cos(angle);
	angle = angles.x * (Math.PI*2 / 360);
	sp = Math.sin(angle);
	cp = Math.cos(angle);
	angle = angles.z * (Math.PI*2 / 360);
	sr = Math.sin(angle);
	cr = Math.cos(angle);
	
	if (forward)
	{
		forward.x = cp*cy;
		forward.y = cp*sy;
		forward.z = -sp;
	}
	if (right)
	{
		right.x = (-1*sr*sp*cy+-1*cr*-sy);
		right.y = (-1*sr*sp*sy+-1*cr*cy);
		right.z = -1*sr*cp;
	}
	if (up)
	{
		up.x = (cr*sp*cy+-sr*-sy);
		up.y = (cr*sp*sy+-sr*cy);
		up.z = cr*cp;
	}
}
----