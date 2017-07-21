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
 * Class HbbContact
 * 
 * @property int $id
 * @property string $name
 * @property string $phone
 * @property string $email
 * @property string $message
 * @property \Carbon\Carbon $created_at
 * @property bool $status
 * @property int $current_language
 *
 * @package App\Models
 */
class HbbContact extends Eloquent
{
	protected $table = 'hbb_contact';
	public $timestamps = false;

	protected $casts = [
		'status' => 'bool',
		'current_language' => 'int'
	];

	protected $fillable = [
		'name',
		'phone',
		'email',
		'message',
		'status',
		'current_language'
	];
}
