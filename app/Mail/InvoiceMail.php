<?php

namespace App\Mail;

use App\Http\Controllers\BusinessSettingController;
use App\Models\Client;
use App\Models\Invoice;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Attachment;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;

class InvoiceMail extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */

    protected $pref;
    protected $invoice;
    public function __construct($invoice, $pref)
    {
        $this->invoice = $invoice;
        $this->pref = $pref;
    }

    /**
     * Get the message envelope.
     *
     * @return \Illuminate\Mail\Mailables\Envelope
     */
    public function envelope()
    {
        return new Envelope(
            subject: 'Invoice From Creative Tech Park'
        );
    }

    /**
     * Get the message content definition.
     *
     * @return \Illuminate\Mail\Mailables\Content
     */
    public function content()
    {
        $bSetting = new BusinessSettingController();
        $qTemplate = $bSetting->get_setting('invoice_template');

        return new Content(
            view: 'emails.invoice',
            with: [
                'invoice' => $this->invoice,
                'template' => $qTemplate
            ],
        );
    }

    /**
     * Get the attachments for the message.
     *
     * @return array
     */
    public function attachments()
    {
        $invoice = $this->invoice;
        $pref = $this->pref;
        $isPrint = false;
        $pdf = Pdf::loadView('invoice.quotationInvoice', compact('invoice','pref', 'isPrint'));
        $name = $this->invoice?->client?->name."_".now()->format('d_m_Y')."_".'invoice.pdf';
        return [Attachment::fromData(fn() => $pdf->output(), $name),];

    }
}
