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
 * Class HbbLabelTranslation
 * 
 * @property int $id
 * @property int $language_id
 * @property int $label_id
 * @property string $label_name
 *
 * @package App\Models
 */
class HbbLabelTranslation extends Eloquent
{
	protected $table = 'hbb_label_translation';
	public $timestamps = false;

	protected $casts = [
		'language_id' => 'int',
		'label_id' => 'int'
	];

	protected $fillable = [
		'language_id',
		'label_id',
		'label_name'
	];
}
