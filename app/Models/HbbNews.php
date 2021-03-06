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
 * Class HbbNews
 * 
 * @property int $id
 * @property int $menu_news_id
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon $updated_at
 * @property string $avatar
 * @property int $reviews
 * @property bool $status
 *
 * @package App\Models
 */
class HbbNews extends Eloquent
{
	protected $casts = [
		'menu_news_id' => 'int',
		'reviews' => 'int',
		'status' => 'bool'
	];

	protected $fillable = [
		'menu_news_id',
		'avatar',
		'reviews',
		'status'
	];
}
