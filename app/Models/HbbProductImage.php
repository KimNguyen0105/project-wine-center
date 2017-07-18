<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 18 Jul 2017 01:46:47 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class HbbProductImage
 * 
 * @property int $id
 * @property int $product_id
 * @property string $link
 * @property bool $status
 *
 * @package App\Models
 */
class HbbProductImage extends Eloquent
{
	protected $table = 'hbb_product_image';
	public $timestamps = false;

	protected $casts = [
		'product_id' => 'int',
		'status' => 'bool'
	];

	protected $fillable = [
		'product_id',
		'link',
		'status'
	];
}