<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

/**
 * @method static findOrFail(array|string|null $input)
 */
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
        'u_id',
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
        'discount',
        'price'
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


//    public function getTotalAmountAttribute()
//    {
//        // return $this->quotation->user ? $this->quotation->user->name : '-';
//
//        $total = 0;
//        $f_total = 0;
//        $w_total = 0;
//        $other_total = 0;
//        $additional_total = 0;
////        {"quatations":[{"itemname":"need seo","cost":"10","quantity":"1"},{"itemname":"support","cost":"15","quantity":"1","discount":"5"}],"client_id":3,"subject":"first qutation","valid_until":"2022-06-28","website_id":null,"platform_id":null,"design_id":6,"domain_id":5,"hosting_id":5,"page":null,"page_price":null,"content_page":null,"content_price":null,"payment_policy":"ddd","terms_of_service":"ddd","date":"2022-06-28","woarks":[6,7],"status":true}
////        $other_total += $this->works();
//
//        $other_total += $this->website_id ? $this->website->price : 0;
//        $other_total += $this->platform_id ? $this->platform->price : 0;
//        $other_total += $this->design_id ? $this->design->price : 0;
//        $other_total += $this->domain_id ? $this->domain->price : 0;
////        $other_total += $this->hosting_id ? $this->hosting->price : 0;
//
////        return $this->works;
//
//
////        $other_total += $this->page && $this->page_price ? $this->page * $this->page_price : 0;
////        $other_total += $this->content_page && $this->content_price ? $this->content_page * $this->content_price : 0;
////
////        $additional_total += $this->additional ? $this->additional_price : 0;
////        $additional_total += $this->additional2 ? $this->additional2_price : 0;
////        $additional_total += $this->additional3 ? $this->additional3_price : 0;
////
////        foreach ($this->features as $feature) {
////            $f_total += $feature->price;
////        }
//
//        foreach ($this->quotationItems as $quotationItem) {
//            $f_total += ($quotationItem->cost * $quotationItem->quantity);
//        }
//
//        foreach ($this->works as $work) {
//            $w_total += $work->price;
//        }
//
////        $without_additional_total = $f_total + $w_total + $other_total;
////        $total = $without_additional_total + $additional_total - $this->discount;
//
//        return $total;
//    }

    /*
    |--------------------------------------------------------------------------
    | RELATIONS
    |--------------------------------------------------------------------------
    */



    public function domains(){
        return $this->belongsToMany(Domain::class, 'domain_quotation')
            ->withPivot(['price', 'quantity', 'discount'])->withTimestamps();
    }
    public function hostings(){
        return $this->belongsToMany(Hosting::class, 'hosting_quotation')
            ->withPivot(['price', 'quantity', 'discount'])->withTimestamps();
    }
    public function works()
    {
        return $this->belongsToMany(Work::class, 'quotation_work')
            ->withPivot(['price', 'quantity', 'discount'])->withTimestamps();
    }
    public function packages()
    {
        return $this->belongsToMany(Design::class, 'package_quotation')
            ->withPivot(['price', 'quantity', 'discount'])->withTimestamps();
    }
    public function quotationItems(){
        return $this->hasMany(QuotationItem::class, 'quotation_id');
    }





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



    public function features()
    {
        return $this->belongsToMany('App\Models\Feature', 'feature_quotation');
    }

    public function invoice()
    {
        return $this->hasOne('App\Models\Invoice');
    }

    public function transactions()
    {
        return $this->hasMany(Transaction::class, 'quotation_id');
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
