<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 11 Jul 2017 09:23:07 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class HbbBrandTranslation
 * 
 * @property int $id
 * @property int $brand_id
 * @property int $brand_name
 * @property int $language_id
 *
 * @package App\Models
 */
class HbbBrandTranslation extends Eloquent
{
	protected $table = 'hbb_brand_translation';
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'id' => 'int',
		'brand_id' => 'int',
		'brand_name' => 'int',
		'language_id' => 'int'
	];

	protected $fillable = [
		'id',
		'brand_id',
		'brand_name',
		'language_id'
	];
}
