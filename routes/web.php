<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\AutorizaitonController;
use App\Http\Controllers\ChatController;
use App\Http\Controllers\ClientsController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\DesignController;
use App\Http\Controllers\DomainController;
use App\Http\Controllers\ExpanceController;
use App\Http\Controllers\FeatureController;
use App\Http\Controllers\HostingController;
use App\Http\Controllers\InvoiceController;
use App\Http\Controllers\LeadController;
use App\Http\Controllers\MethodController;
use App\Http\Controllers\NoteCategoryController;
use App\Http\Controllers\NoteController;
use App\Http\Controllers\PlatformController;
use App\Http\Controllers\ProjectController;
use App\Http\Controllers\PurposeController;
use App\Http\Controllers\QuotationController;
use App\Http\Controllers\QuotationInvoice;
use App\Http\Controllers\SearviceController;
use App\Http\Controllers\TodoController;
use App\Http\Controllers\TransactionController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\WebsiteController;
use App\Http\Controllers\WorkController;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\PackageController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [LoginController::class, 'login'])->middleware('guest')->name('login');

Route::prefix('admin')->group(function(){
    Route::middleware('guest')->group(function (){
        Route::get('login', [LoginController::class, 'login'])->name('login');
        Route::post('login', [LoginController::class, 'authenticate']);
    });

    Route::middleware(['auth', 'web'])->group(function(){
        // dashboard management
        Route::get('dashboard', DashboardController::class);
        // user management
        Route::resource('users', AdminController::class);
        Route::post('users/{id}', [AdminController::class, 'update']);
        Route::post('user/update-pass/{id}', [AdminController::class, 'updateCredentials'])->name('updateCredentials');
        // user authorizations
        Route::resource('authorizations', AutorizaitonController::class);
        // clients management
        Route::get('clients', [ClientsController::class, 'index']);
        Route::resource('clients', ClientsController::class);
        // leads management
        Route::resource('leads', LeadController::class);
        // designs management
        Route::resource('designs', DesignController::class);
        // services management
        Route::resource('services', SearviceController::class);
        // platforms management
        Route::resource('platforms', PlatformController::class);
        // package management
        Route::resource('package', PackageController::class);
        // features management
        Route::resource('features', FeatureController::class);
        // works management
        Route::resource('works', WorkController::class);
        // domains management
        Route::resource('domains', DomainController::class);
        // hostings management
        Route::resource('hostings', HostingController::class);
        // quotations management
        Route::resource('quotations', QuotationController::class);
        Route::post('quotations/given-discount/{id}', [QuotationController::class, 'givenDiscount'])->name('quotations.addDiscount');

        Route::get('download-quotation/{id}', [QuotationController::class, 'generateQuotationPDFFile'])
            ->name('quotations.generateQuotationPDFFile');

        Route::get('download/quotation-invoice/{id}', [QuotationController::class, 'createInvoice'])
            ->name('quotation.download');
        Route::get('edit/quotation/{id}', [QuotationController::class, 'editQuotation'])->name('quotations.edit');
        Route::post('quotation/update-status', [QuotationController::class, 'chnageQuotationStatus'])->name('chnageQuotationStatus');
        Route::get('quotations-to-invoice/{id}', [QuotationController::class, 'quotationInvoice'])->name('quotations.quotationInvoice');
        Route::post('quotations-invoice-payment', [QuotationController::class, 'addPayment'])->name('quotations.addPayment');


        // invoices management
        Route::resource('invoices', InvoiceController::class);
        Route::post('invoice/quotation/{id}', [InvoiceController::class, 'createInvoice'])->name('invoices.createInvoice');
        Route::get('invoice/download/{id}', [InvoiceController::class, 'downloadInvoice'])->name('invoices.downloadInvoice');
        Route::post('invoices/given-discount/{id}', [InvoiceController::class, 'addDiscount'])->name('invoices.addDiscount');


        Route::get('edit/invoice/{id}', [InvoiceController::class, 'edit'])->name('invoices.edit');
        Route::get('download-invoice/{id}', [InvoiceController::class, 'generateInvoicePDFFile'])->name('invoices.generateInvoicePDFFile');
        Route::delete('edit/invoice/{id}', [InvoiceController::class, 'destroy'])->name('invoices.delete');
        Route::patch('update/invoice/{id}',[InvoiceController::class, 'updateInvoice'])->name('updateInvoices');
        Route::post('invoice/custom/transaction', [InvoiceController::class, 'addPayment'])->name('saveInvoiceTransaction');


        // method management
        Route::resource('methods', MethodController::class);
        // purposes management
        Route::resource('purposes', PurposeController::class);
        // projects management
        Route::resource('projects', ProjectController::class);
        Route::post('project/assign-developers', [ProjectController::class, 'assignDevelopers'])->name('projects.assignDevelopers');
        Route::get('project/remove-user', [ProjectController::class, 'removeUser'])->name('projects.removeUser');
        Route::post('projects/{id}', [ProjectController::class, 'update']);
        Route::get('project/employee-projects', [ProjectController::class, 'employeeProjects'])->name('employeeProject');
        Route::post('project/change-status', [ProjectController::class, 'updateProgress'])->name('projects.updateProgress');

        // transaction management
        Route::resource('transaction', TransactionController::class);
        Route::post('quotation/transaction', [TransactionController::class, 'saveQuotationTransaction'])->name('saveQuotationTransaction');
        //expanse management
        Route::resource('expense', ExpanceController::class);
        Route::post('update-expance/{id}', [ExpanceController::class, 'update']);
        Route::resource('chat', ChatController::class);
        // note category management
        Route::resource('notes-category', NoteCategoryController::class);
        // note management
        Route::resource('notes', NoteController::class);
        Route::post('notes-update', [NoteController::class, 'update'])->name('notes.update');
        Route::get('employee-notes', [NoteController::class, 'employeeNotes'])->name('notes.empNots');

        Route::resource('todos', TodoController::class);
    });

    Route::post('/logout', [LoginController::class, 'destroy']);
});


Route::get('invoice-show/{id}',  [QuotationController::class, 'createInvoice']);



Route::get('/test', [\App\Http\Controllers\TestController::class, 'index'])->name('test.index');
Route::post('/test/create', [\App\Http\Controllers\TestController::class, 'create'])->name('test.create');
Route::get('/test/edit/{id}', [\App\Http\Controllers\TestController::class, 'edit'])->name('test.edit');
Route::put('/test/update/{id}', [\App\Http\Controllers\TestController::class, 'update'])->name('test.update');

//
//Route::fallback(function() {
//    return \Inertia\Inertia::render('Pages/Errors/404',[
//        "info" =>[
//            'data' => 'somting want wrong...',
//            'code' => 404
//        ]
//    ]);
//
//
//});


Route::get('/pdf', function(){
    return view('invoice.newPdf');
    $pdf = Pdf::loadView('invoice.newInvoice');
    return $pdf->download('invoice.pdf');
});


Route::get("/test", function(){
    return inertia("ntest");
});





