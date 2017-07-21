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
 * Class HbbLabel
 * 
 * @property int $id
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon $update_at
 *
 * @package App\Models
 */
class HbbLabel extends Eloquent
{
	protected $table = 'hbb_label';
	public $timestamps = false;

	protected $dates = [
		'update_at'
	];

	protected $fillable = [
		'update_at'
	];
}
