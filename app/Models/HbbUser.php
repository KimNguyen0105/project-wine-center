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
 * Class HbbUser
 * 
 * @property int $id
 * @property string $username
 * @property string $email
 * @property string $password
 * @property string $fullname
 * @property string $avatar
 * @property bool $status
 * @property \Carbon\Carbon $create_at
 * @property \Carbon\Carbon $update_at
 * @property string $remember_token
 *
 * @package App\Models
 */
class HbbUser extends Eloquent
{
	protected $table = 'hbb_user';
	public $timestamps = false;

	protected $casts = [
		'status' => 'bool'
	];

	protected $dates = [
		'create_at',
		'update_at'
	];

	protected $hidden = [
		'password',
		'remember_token'
	];

	protected $fillable = [
		'username',
		'email',
		'password',
		'fullname',
		'avatar',
		'status',
		'create_at',
		'update_at',
		'remember_token'
	];
}
