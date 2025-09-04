///@description Animation End

#region Destroy
if (destroyAfterAnimation) instance_destroy();
#endregion

#region Pause
if (pauseAfterAnimation) image_index = image_number - 1;
#endregion