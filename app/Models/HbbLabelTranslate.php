<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 11 Jul 2017 09:23:08 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class HbbLabelTranslate
 * 
 * @property int $id
 * @property int $language_id
 * @property int $label_id
 * @property string $label_value
 *
 * @package App\Models
 */
class HbbLabelTranslate extends Eloquent
{
	protected $table = 'hbb_label_translate';
	public $timestamps = false;

	protected $casts = [
		'language_id' => 'int',
		'label_id' => 'int'
	];

	protected $fillable = [
		'language_id',
		'label_id',
		'label_value'
	];
}
