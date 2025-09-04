///@description Sine

function sine_wave(time,period,amplitude,midpoint)
{
	return sin(time * 2 * pi / period) * amplitude + midpoint;
}

function sine_between(time,period,minimum,maximum)
{
	var midpoint = mean(minimum, maximum);
	var amplitude = maximum - midpoint;
	return sine_wave(time, period, amplitude, midpoint);
}