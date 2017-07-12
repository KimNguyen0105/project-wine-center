<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 11 Jul 2017 09:23:07 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class HbbCollection
 * 
 * @property int $id
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon $updated_at
 * @property int $status
 * @property string $avatar
 *
 * @package App\Models
 */
class HbbCollection extends Eloquent
{
	protected $table = 'hbb_collection';

	protected $casts = [
		'status' => 'int'
	];

	protected $fillable = [
		'status',
		'avatar'
	];
}
