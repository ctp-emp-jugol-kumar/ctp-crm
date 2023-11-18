<?php

namespace App\Mail;

use App\Models\Client;
use App\Models\Quotation;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Attachment;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;

class QuotationMail extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    protected $quotation;
    protected $attachment;
    public function __construct(Quotation $quotation, $attachment)
    {
        $this->quotation = $quotation;
        $this->attachment = $attachment;
    }

    /**
     * Get the message envelope.
     *
     * @return \Illuminate\Mail\Mailables\Envelope
     */
    public function envelope()
    {
        //$this->quotation?->subject
        return new Envelope(
            subject:'Quotation From Creative Tech Park ',
        );
    }

    /**
     * Get the message content definition.
     *
     * @return \Illuminate\Mail\Mailables\Content
     */
    public function content()
    {
        return new Content(
            view: 'emails.quotation',
            with: [
                'quotation' => $this->quotation,
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
        $name = $this->quotation?->client?->name."_".now()->format('d_m_Y')."_".'quotation.pdf';
        return [Attachment::fromData(fn() => $this->attachment->output(), $name),];
    }
}
