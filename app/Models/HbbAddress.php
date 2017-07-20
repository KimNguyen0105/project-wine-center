<?php

/**
 * Created by Reliese Model.
 * Date: Thu, 20 Jul 2017 09:14:55 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class HbbAddress
 * 
 * @property int $id
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon $updated_at
 * @property bool $status
 * @property string $sitemap
 * @property string $phone
 *
 * @package App\Models
 */
class HbbAddress extends Eloquent
{
	protected $table = 'hbb_address';

	protected $casts = [
		'status' => 'bool'
	];

	protected $fillable = [
		'status',
		'sitemap',
		'phone'
	];
}
