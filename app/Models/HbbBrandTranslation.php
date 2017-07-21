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
 * Class HbbBrandTranslation
 * 
 * @property int $id
 * @property int $language_id
 * @property int $brand_id
 * @property string $brand_name
 * @property string $slug
 *
 * @package App\Models
 */
class HbbBrandTranslation extends Eloquent
{
	protected $table = 'hbb_brand_translation';
	public $timestamps = false;

	protected $casts = [
		'language_id' => 'int',
		'brand_id' => 'int'
	];

	protected $fillable = [
		'language_id',
		'brand_id',
		'brand_name',
		'slug'
	];
}
