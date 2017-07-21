<?php

/**
 * Created by Reliese Model.
<<<<<<< HEAD
 * Date: Thu, 20 Jul 2017 09:10:22 +0000.
=======
 * Date: Thu, 20 Jul 2017 09:14:55 +0000.
>>>>>>> 066a255c4c03c0ab9c449fd63c31484a6ea9db12
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class HbbSlider
 * 
 * @property int $id
 * @property string $link
 * @property int $status
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon $updated_at
 * @property int $sort_order
 *
 * @package App\Models
 */
class HbbSlider extends Eloquent
{
	protected $table = 'hbb_slider';

	protected $casts = [
		'status' => 'int',
		'sort_order' => 'int'
	];

	protected $fillable = [
		'link',
		'status',
		'sort_order'
	];
}
