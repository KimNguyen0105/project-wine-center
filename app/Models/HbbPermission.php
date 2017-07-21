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
 * Class HbbPermission
 * 
 * @property int $id
 * @property string $permission
 * @property string $link
 * @property string $note
 *
 * @package App\Models
 */
class HbbPermission extends Eloquent
{
	protected $table = 'hbb_permission';
	public $timestamps = false;

	protected $fillable = [
		'permission',
		'link',
		'note'
	];
}
