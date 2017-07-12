<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 11 Jul 2017 09:23:08 +0000.
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
 * @property string $description
 * @property float $price
 * @property int $brand_id
 * @property string $slug
 * @property int $country_id
 *
 * @package App\Models
 */
class HbbProduct extends Eloquent
{
	public $incrementing = false;

	protected $casts = [
		'id' => 'int',
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
		'description',
		'price',
		'brand_id',
		'slug',
		'country_id'
	];
}
