_currentScore = _select._score;

_displayScore = (_currentScore / global._winscore) * -1;

image_xscale = _displayScore;

if (_select._reset == 1) {
    
	visible = false;
}

if (_select._reset == 0) {
    
	visible = true;
}


