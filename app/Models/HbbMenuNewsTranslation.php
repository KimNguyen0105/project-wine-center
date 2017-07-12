<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 11 Jul 2017 09:23:08 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class HbbMenuNewsTranslation
 * 
 * @property int $id
 * @property int $language_id
 * @property int $news_id
 * @property int $news_name
 *
 * @package App\Models
 */
class HbbMenuNewsTranslation extends Eloquent
{
	protected $table = 'hbb_menu_news_translation';
	public $timestamps = false;

	protected $casts = [
		'language_id' => 'int',
		'news_id' => 'int',
		'news_name' => 'int'
	];

	protected $fillable = [
		'language_id',
		'news_id',
		'news_name'
	];
}
