<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 18 Jul 2017 01:46:47 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class HbbNewsTranslation
 * 
 * @property int $id
 * @property int $news_id
 * @property string $news_name
 * @property string $news_content
 * @property string $slug
 * @property int $language_id
 *
 * @package App\Models
 */
class HbbNewsTranslation extends Eloquent
{
	protected $table = 'hbb_news_translation';
	public $timestamps = false;

	protected $casts = [
		'news_id' => 'int',
		'language_id' => 'int'
	];

	protected $fillable = [
		'news_id',
		'news_name',
		'news_content',
		'slug',
		'language_id'
	];
}