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
 * Class HbbComment
 * 
 * @property int $id
 * @property int $language_current
 * @property string $content
 * @property int $status
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon $updated_at
 * @property int $user_id
 *
 * @package App\Models
 */
class HbbComment extends Eloquent
{
	protected $table = 'hbb_comment';

	protected $casts = [
		'language_current' => 'int',
		'status' => 'int',
		'user_id' => 'int'
	];

	protected $fillable = [
		'language_current',
		'content',
		'status',
		'user_id'
	];
}
