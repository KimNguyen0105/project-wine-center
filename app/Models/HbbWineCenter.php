<?php

/**
 * Created by Reliese Model.
 * Date: Thu, 20 Jul 2017 09:10:22 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class HbbWineCenter
 * 
 * @property int $id
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon $updated_at
 *
 * @package App\Models
 */
class HbbWineCenter extends Eloquent
{
	protected $table = 'hbb_wine_center';
}
