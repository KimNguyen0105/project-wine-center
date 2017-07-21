<?php

/**
 * Created by Reliese Model.
 * Date: Thu, 20 Jul 2017 09:10:22 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class HbbMenuNews
 * 
 * @property int $id
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon $updated_at
 * @property bool $status
 *
 * @package App\Models
 */
class HbbMenuNews extends Eloquent
{
	protected $casts = [
		'status' => 'bool'
	];

	protected $fillable = [
		'status'
	];
}
