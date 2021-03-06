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
 * Class HbbSystemConfig
 * 
 * @property int $id
 * @property string $logo
 * @property string $facebook_link
 * @property string $twiter_link
 * @property string $googleplus_link
 * @property string $linked_link
 * @property string $youtube_link
 * @property string $email
 * @property string $phone_number
 * @property string $hotline
 * @property string $google_analytic
 * @property string $system_theme
 * @property string $system_favicon
 * @property string $orther
 * @property string $seo_description
 * @property string $seo_keyword
 * @property string $seo_title
 * @property int $seo_author
 * @property string $system_email
 * @property string $system_password_email
 *
 * @package App\Models
 */
class HbbSystemConfig extends Eloquent
{
	protected $table = 'hbb_system_config';
	public $timestamps = false;

	protected $casts = [
		'seo_author' => 'int'
	];

	protected $fillable = [
		'logo',
		'facebook_link',
		'twiter_link',
		'googleplus_link',
		'linked_link',
		'youtube_link',
		'email',
		'phone_number',
		'hotline',
		'google_analytic',
		'system_theme',
		'system_favicon',
		'orther',
		'seo_description',
		'seo_keyword',
		'seo_title',
		'seo_author',
		'system_email',
		'system_password_email'
	];
}
