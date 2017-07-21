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
 * Class HbbRecruitmentTranslation
 * 
 * @property int $id
 * @property int $language_id
 * @property int $recruitment_id
 * @property string $recruiment_name
 * @property string $recruiment_content
 * @property string $slug
 *
 * @package App\Models
 */
class HbbRecruitmentTranslation extends Eloquent
{
	protected $table = 'hbb_recruitment_translation';
	public $timestamps = false;

	protected $casts = [
		'language_id' => 'int',
		'recruitment_id' => 'int'
	];

	protected $fillable = [
		'language_id',
		'recruitment_id',
		'recruiment_name',
		'recruiment_content',
		'slug'
	];
}
