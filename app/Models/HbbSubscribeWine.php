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
 * Class HbbSubscribeWine
 * 
 * @property int $id
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon $updated_at
 * @property bool $status
 * @property string $email
 * @property string $name
 * @property int $language_id
 * @property int $product_id
 * @property string $phone
 * @property string $date
 * @property string $message
 *
 * @package App\Models
 */
class HbbSubscribeWine extends Eloquent
{
	protected $table = 'hbb_subscribe_wine';

	protected $casts = [
		'status' => 'bool',
		'language_id' => 'int',
		'product_id' => 'int'
	];

	protected $fillable = [
		'status',
		'email',
		'name',
		'language_id',
		'product_id',
		'phone',
		'date',
		'message'
	];
}
