<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Quotation extends Model
{


    /*
    |--------------------------------------------------------------------------
    | GLOBAL VARIABLES
    |--------------------------------------------------------------------------
    */

    protected $table = 'quotations';
    // protected $primaryKey = 'id';
    // public $timestamps = false;
    protected $guarded = ['id'];
    protected $fillable = [
        'client_id',
        'subject',
        'valid_until',
        'website_id',
        'platform_id',
        'design_id',
        'page',
        'page_price',
        'domain_id',
        'hosting_id',
        'additional',
        'additional_price',
        'additional2',
        'additional2_price',
        'additional3',
        'additional3_price',
        // 'content',
        'content_page',
        'content_price',
        'note',
        'payment_policy',
        'terms_of_service',
        'status',
        'user_id',
        'date',
        'discount'
    ];
    // protected $hidden = [];
    protected $dates = ['valid_until','date'];

    /*
    |--------------------------------------------------------------------------
    | FUNCTIONS
    |--------------------------------------------------------------------------
    */
    public static function boot() {
        parent::boot();
        self::deleting(function($quotation) {
            if ($quotation->invoice) {
                $quotation->invoice->delete();
            }
        });
    }

    public function quotationItems(){
        return $this->hasMany(QuotationItem::class, 'quotation_id');
    }


    public function getTotalAmountAttribute()
    {
        // return $this->quotation->user ? $this->quotation->user->name : '-';

        $total = 0;
        $f_total = 0;
        $w_total = 0;
        $other_total = 0;
        $additional_total = 0;

        $other_total += $this->website_id ? $this->website->price : 0;
        $other_total += $this->platform_id ? $this->platform->price : 0;
        $other_total += $this->design_id ? $this->design->price : 0;
        $other_total += $this->domain_id ? $this->domain->price : 0;
        $other_total += $this->hosting_id ? $this->hosting->price : 0;

        $other_total += $this->page && $this->page_price ? $this->page * $this->page_price : 0;
        $other_total += $this->content_page && $this->content_price ? $this->content_page * $this->content_price : 0;

        $additional_total += $this->additional ? $this->additional_price : 0;
        $additional_total += $this->additional2 ? $this->additional2_price : 0;
        $additional_total += $this->additional3 ? $this->additional3_price : 0;

        foreach ($this->features as $feature) {
            $f_total += $feature->price;
        }
        foreach ($this->works as $work) {
            $w_total += $work->price;
        }

        $without_additional_total = $f_total + $w_total + $other_total;

        $total = $without_additional_total + $additional_total - $this->discount;

        return $total;
    }

    /*
    |--------------------------------------------------------------------------
    | RELATIONS
    |--------------------------------------------------------------------------
    */

    public function user()
    {
        return $this->belongsTo('App\Models\User');
    }
    public function client()
    {
        return $this->belongsTo('App\Models\Client');
    }
    public function website()
    {
        return $this->belongsTo('App\Models\Website');
    }
    public function platform()
    {
        return $this->belongsTo('App\Models\Platform');
    }
    public function design()
    {
        return $this->belongsTo('App\Models\Design');
    }
    public function domain()
    {
        return $this->belongsTo('App\Models\Domain');
    }
    public function hosting()
    {
        return $this->belongsTo('App\Models\Hosting');
    }

    public function features()
    {
        return $this->belongsToMany('App\Models\Feature', 'feature_quotation');
    }
    public function works()
    {
        return $this->belongsToMany('App\Models\Work', 'quotation_work');
    }

    public function invoice()
    {
        return $this->hasOne('App\Models\Invoice');
    }

    /*
    |--------------------------------------------------------------------------
    | SCOPES
    |--------------------------------------------------------------------------
    */

    /*
    |--------------------------------------------------------------------------
    | ACCESSORS
    |--------------------------------------------------------------------------
    */

    /*
    |--------------------------------------------------------------------------
    | MUTATORS
    |--------------------------------------------------------------------------
    */
}
