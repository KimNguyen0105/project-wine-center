<?php

/**
 * Created by Reliese Model.
 * Date: Thu, 20 Jul 2017 09:14:55 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class HbbProduct
 * 
 * @property int $id
 * @property string $avatar
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon $updated_at
 * @property int $collection_id
 * @property bool $status
 * @property float $price
 * @property int $brand_id
 * @property int $country_id
 *
 * @package App\Models
 */
class HbbProduct extends Eloquent
{
	protected $casts = [
		'collection_id' => 'int',
		'status' => 'bool',
		'price' => 'float',
		'brand_id' => 'int',
		'country_id' => 'int'
	];

	protected $fillable = [
		'avatar',
		'collection_id',
		'status',
		'price',
		'brand_id',
		'country_id'
	];
}
