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
 * Class HbbMenuTranslation
 * 
 * @property int $id
 * @property int $language_id
 * @property int $menu_id
 * @property string $menu_name
 * @property string $slug
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon $update_at
 *
 * @package App\Models
 */
class HbbMenuTranslation extends Eloquent
{
	protected $table = 'hbb_menu_translation';
	public $timestamps = false;

	protected $casts = [
		'language_id' => 'int',
		'menu_id' => 'int'
	];

	protected $dates = [
		'update_at'
	];

	protected $fillable = [
		'language_id',
		'menu_id',
		'menu_name',
		'slug',
		'update_at'
	];
}
