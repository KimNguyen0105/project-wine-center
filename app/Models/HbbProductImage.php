<?php

/**
 * Created by Reliese Model.
<<<<<<< HEAD
 * Date: Thu, 20 Jul 2017 09:10:22 +0000.
=======
 * Date: Thu, 20 Jul 2017 09:14:55 +0000.
>>>>>>> 066a255c4c03c0ab9c449fd63c31484a6ea9db12
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
