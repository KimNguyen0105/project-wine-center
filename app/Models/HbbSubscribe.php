<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 11 Jul 2017 09:23:08 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class HbbSubscribe
 * 
 * @property int $id
 * @property string $email
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon $updated_at
 * @property bool $status
 *
 * @package App\Models
 */
class HbbSubscribe extends Eloquent
{
	protected $table = 'hbb_subscribe';

	protected $casts = [
		'status' => 'bool'
	];

	protected $fillable = [
		'email',
		'status'
	];
}
