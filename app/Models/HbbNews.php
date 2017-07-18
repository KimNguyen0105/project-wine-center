<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 18 Jul 2017 09:12:37 +0000.
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
 * @property bool $status
 *
 * @package App\Models
 */
class HbbNews extends Eloquent
{
	protected $casts = [
		'menu_news_id' => 'int',
		'status' => 'bool'
	];

	protected $fillable = [
		'menu_news_id',
		'avatar',
		'status'
	];
}
