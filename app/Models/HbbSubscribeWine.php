<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 18 Jul 2017 01:46:47 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class HbbSubscribeWine
 * 
 * @property int $id
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon $updated_at
 * @property bool $status
 * @property string $email
 * @property int $language_id
 * @property string $phone
 * @property int $expert_id
 * @property \Carbon\Carbon $date
 * @property string $content
 *
 * @package App\Models
 */
class HbbSubscribeWine extends Eloquent
{
	protected $table = 'hbb_subscribe_wine';

	protected $casts = [
		'status' => 'bool',
		'language_id' => 'int',
		'expert_id' => 'int'
	];

	protected $dates = [
		'date'
	];

	protected $fillable = [
		'status',
		'email',
		'language_id',
		'phone',
		'expert_id',
		'date',
		'content'
	];
}
