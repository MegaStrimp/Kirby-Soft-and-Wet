///@description Animation End

#region Destroy
if (destroyAfterAnimation) instance_destroy();
#endregion

#region Stop After Animation
if (stopAfterAnimation) image_index = image_number - 1;
#endregion