<?php

/**
 * Created by Reliese Model.
 * Date: Thu, 20 Jul 2017 09:14:55 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class HbbCountryTranslation
 * 
 * @property int $id
 * @property int $language_id
 * @property int $country_id
 * @property string $country_name
 *
 * @package App\Models
 */
class HbbCountryTranslation extends Eloquent
{
	protected $table = 'hbb_country_translation';
	public $timestamps = false;

	protected $casts = [
		'language_id' => 'int',
		'country_id' => 'int'
	];

	protected $fillable = [
		'language_id',
		'country_id',
		'country_name'
	];
}
