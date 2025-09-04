///@description Twerp

#macro Twerp_Back_DefaultBounciness 1.5
#macro Twerp_Sine_Half_Pi 1.57079632679
#macro Twerp_Bounce_DefaultBounciness 7.5625

///@func twerp(TwerpType, start, end, pos, [looped], [option1], [option2]);
function twerp(_type, _start, _end, _pos, _looped = false) {
	_type = clamp(_type,0,TwerpType.count);
	_pos = clamp(_looped ? _pos % 1 : _pos,0,1);
	var _chng = _end-_start;
	var _mid = (_start+_end) / 2;

	#region Tween Types
	enum TwerpType
	{
	linear,
	inout_back,	in_back, out_back,
	inout_bounce,	out_bounce, in_bounce,
	inout_circle,	out_circle, in_circle,
	inout_cubic,	out_cubic, 	in_cubic,
	inout_elastic, out_elastic,	in_elastic,
	inout_expo,	out_expo,	in_expo,
	inout_quad,	out_quad,	in_quad,
	inout_quart, out_quart, in_quart,
	inout_quint, out_quint, in_quint,
	inout_sine, out_sine, in_sine,
	count
	}
	#endregion

	switch(_type)
	{
	case TwerpType.linear: return lerp(_start,_end,_pos); //Why are you using this?
	#region Back
	// Optional Argument: Bounciness - Default: 1.5
	case TwerpType.inout_back:
	  			var _b = (argument_count > 5) ? argument[5] : Twerp_Back_DefaultBounciness;	
	  			return (_pos < .5) ? twerp(TwerpType.in_back,_start,_mid,_pos*2,_b) 
	  												: twerp(TwerpType.out_back,_mid,_end,(_pos-.5)*2,_b);

	case TwerpType.in_back:
	  			var _b = (argument_count > 5) ? argument[5] : Twerp_Back_DefaultBounciness;
	  			return _chng * _pos * _pos * ((_b + 1) * _pos - _b) + _start

	case TwerpType.out_back:			
	  			var _b = (argument_count > 5) ? argument[5] : Twerp_Back_DefaultBounciness;
	  			_pos -= 1;
	  			return _chng * (_pos * _pos * ((_b + 1) * _pos + _b) + 1) + _start;
				
	#endregion
	#region Bounce
	//No Optional Arguments
	case TwerpType.inout_bounce:
	  		return (_pos < 0.5) ? twerp(TwerpType.in_bounce,_start, (_start + _end) / 2, _pos*2)
	  												: twerp(TwerpType.out_bounce,(_start + _end) / 2, _end, (_pos-.5)*2);
												
	case TwerpType.out_bounce:
	  			if (_pos < 1/2.75) 
	  				return _chng * (Twerp_Bounce_DefaultBounciness * _pos * _pos) + _start;
	  			else if (_pos < 2/2.75) 
	  			{
	  				_pos -= 1.5/2.75; 
	  				return _chng * (Twerp_Bounce_DefaultBounciness * _pos * _pos + 3/4) + _start;
	  			}
	  			else if (_pos < 2.5/2.75)
	  			{
	  				_pos -= 2.25/2.75; 
	  				return _chng * (Twerp_Bounce_DefaultBounciness * _pos * _pos + 15/16) + _start; 
	  			}

	  			_pos -= 2.625/2.75;
	  			return _chng * (Twerp_Bounce_DefaultBounciness * _pos * _pos + 63/64) + _start;
				
	case TwerpType.in_bounce:
	  			_chng = _end-_pos;
	  			_pos = 1-_pos;
	  			return _chng - twerp(TwerpType.out_bounce,_start,_end,_pos,Twerp_Bounce_DefaultBounciness)+_start;
				
	#endregion
	#region Circle
	//No Optional Arguments
	case TwerpType.inout_circle:
	  			return (_pos < .5) ? twerp(TwerpType.in_circle,_start,_mid,_pos*2)
	  												: twerp(TwerpType.out_circle,_mid,_end,(_pos-.5)*2);
												 
	case TwerpType.out_circle:
	  			_pos--;
	  			return _chng * sqrt(1 - _pos * _pos) + _start;
				
	case TwerpType.in_circle:
	  			return -_chng * (sqrt(1 - _pos*_pos)-1) + _start;
				
	#endregion
	#region Cubic
	//No Optional Arguments
	case TwerpType.inout_cubic:
	  			return (_pos < .5) ? twerp(TwerpType.in_cubic,_start,_mid,_pos*2) 
	  												: twerp(TwerpType.out_cubic,_mid,_end,(_pos-.5)*2);
	case TwerpType.out_cubic:
	  			return _chng * (power(_pos - 1, 3) + 1) + _start;
	case TwerpType.in_cubic:
	  			return _chng * power(_pos, 3) + _start;
	#endregion
	#region Elastic
	// Optional Argument 1: Elasticity <0-1> - Default: .3
	// Optional Argument 2: Duration - Default: 5
	case TwerpType.inout_elastic:
	  			var _e = (argument_count > 5) ? argument[5] : 0.3;
	  			var _d = (argument_count > 6) ? argument[6] : 5.0;
				
	  			return (_pos < .5) ? twerp(TwerpType.in_elastic,_start,_mid,_pos*2,_e,_d)
	  												: twerp(TwerpType.out_elastic,_mid,_end,(_pos-.5)*2,_e,_d);
												 
	case TwerpType.out_elastic:
	  			var _s,_p;
	  			var _e = (argument_count > 5) ? argument[5] : 0.3;
	  			var _d = (argument_count > 6) ? argument[6] : 5.0;

	  			if (_pos == 0 || _chng == 0) return _start;
	  			if (_pos == 1) return _end;

	  			_p = _d * _e;
	  			_s = (sign(_chng) == -1) ? _p * 0.25 : _p / (2 * pi) * arcsin (1);

	  			return _chng * power(2, -10 * _pos) * sin((_pos * _d - _s) * (2 * pi) / _p ) + _chng + _start;
	case TwerpType.in_elastic:
	  			var _s,_p;
				
	  			var _e = (argument_count > 5) ? argument[5] : 0.3;
	  			var _d = (argument_count > 6) ? argument[6] : 5.0;

	  			if (_pos == 0 || _chng == 0) return _start; 
	  			if (_pos == 1) return _end;

	  			_p = _d * _e;
	  			_s = sign(_chng) == -1 ? _p * 0.25 : _p / (2 * pi) * arcsin(1);

	  			return -(_chng * power(2,10 * (--_pos)) * sin((_pos * _d - _s) * (pi * 2) / _p)) + _start;

	#endregion
	#region Expo
	//No Optional arguments
	case TwerpType.inout_expo:
	  			return (_pos < .5) ? twerp(TwerpType.in_expo,_start,_mid,_pos*2) 
	  												: twerp(TwerpType.out_expo,_mid,_end,(_pos-.5)*2);
												 
	case TwerpType.out_expo:
	  			return _chng * (-power(2, -10 * _pos) + 1) + _start;
				
	case TwerpType.in_expo:
	  			return _chng * power(2, 10 * (_pos - 1)) + _start;
				
	#endregion
	#region Quad
	//No Optional Arguments
	case TwerpType.inout_quad:
	  			return (_pos < .5) ? twerp(TwerpType.in_quad,_start,_mid,_pos*2) 
	  												: twerp(TwerpType.out_quad,_mid,_end,(_pos-.5)*2);
	case TwerpType.out_quad:
	  			return -_chng * _pos * (_pos - 2) + _start;
				
	case TwerpType.in_quad:
	  			return _chng * _pos * _pos + _start;

	#endregion
	#region Quart
	//No Optional Arguments
	case TwerpType.inout_quart:
	  			return (_pos < .5) ? twerp(TwerpType.in_quart,_start,_mid,_pos*2) 
	  												: twerp(TwerpType.out_quart,_mid,_end,(_pos-.5)*2);

	case TwerpType.out_quart:
	  			return -_chng * (((_pos - 1) * (_pos - 1) * (_pos - 1) * (_pos - 1)) - 1) + _start;
				
	case TwerpType.in_quart:
	  			return _chng * (_pos * _pos * _pos * _pos) + _start;
				
	#endregion
	#region Quint
	//No Optional Arguments
	case TwerpType.inout_quint:
	  			return _pos < .5 ? twerp(TwerpType.in_quint,_start,_mid,_pos*2) 
	  												: twerp(TwerpType.out_quint,_mid,_end,(_pos-.5)*2);
												 
	case TwerpType.out_quint:
	
	  			return _chng * ((_pos - 1) * (_pos -1) * (_pos -1) * (_pos -1) * (_pos -1) + 1) + _start;
				
	case TwerpType.in_quint:
	  			return _chng * _pos * _pos * _pos * _pos * _pos + _start;
				
	#endregion
	#region Sine
	//No Optional Arguments
	case TwerpType.inout_sine:
	  			return _chng * 0.5 * (1 - cos(pi * _pos)) + _start;
				
	case TwerpType.out_sine:
	  			return _chng * sin(_pos * Twerp_Sine_Half_Pi) + _start;
				
	case TwerpType.in_sine:
	  			return _chng * (1 - cos(_pos * Twerp_Sine_Half_Pi)) + _start;
				
	#endregion
	}
}