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
 * Class HbbMenu
 * 
 * @property int $id
 * @property int $parrent_id
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon $update_at
 * @property int $status
 * @property int $sort_order
 *
 * @package App\Models
 */
class HbbMenu extends Eloquent
{
	protected $table = 'hbb_menu';
	public $timestamps = false;

	protected $casts = [
		'parrent_id' => 'int',
		'status' => 'int',
		'sort_order' => 'int'
	];

	protected $dates = [
		'update_at'
	];

	protected $fillable = [
		'parrent_id',
		'update_at',
		'status',
		'sort_order'
	];
}
