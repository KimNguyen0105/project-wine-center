<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 18 Jul 2017 09:12:37 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class HbbProductsTranslation
 * 
 * @property int $id
 * @property int $language_id
 * @property int $product_id
 * @property string $product_name
 * @property string $product_content
 * @property string $slug
 *
 * @package App\Models
 */
class HbbProductsTranslation extends Eloquent
{
	protected $table = 'hbb_products_translation';
	public $timestamps = false;

	protected $casts = [
		'language_id' => 'int',
		'product_id' => 'int'
	];

	protected $fillable = [
		'language_id',
		'product_id',
		'product_name',
		'product_content',
		'slug'
	];
}
