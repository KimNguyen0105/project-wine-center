<?php

/**
 * Created by Reliese Model.
 * Date: Thu, 20 Jul 2017 09:14:55 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class HbbRecruitment
 * 
 * @property int $id
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon $updated_at
 * @property \Carbon\Carbon $deadline
 * @property string $avatar
 * @property bool $status
 *
 * @package App\Models
 */
class HbbRecruitment extends Eloquent
{
	protected $table = 'hbb_recruitment';

	protected $casts = [
		'status' => 'bool'
	];

	protected $dates = [
		'deadline'
	];

	protected $fillable = [
		'deadline',
		'avatar',
		'status'
	];
}
