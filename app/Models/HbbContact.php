<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 18 Jul 2017 09:12:37 +0000.
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
