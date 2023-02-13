<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class ClientRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            "name" => ['required'],
            "email" => ['required', 'email', Rule::unique('clients', 'email')],
            "secondary_email" => ['nullable','email'],
            "phone" => ['required', 'regex:/(^([+]{1}[8]{2}|0088)?(01){1}[3-9]{1}\d{8})$/'],
            "secondary_phone" => ['nullable','regex:/(^([+]{1}[8]{2}|0088)?(01){1}[3-9]{1}\d{8})$/'],
            "company" => ['nullable'],
            "address" => ['nullable', 'max:150'],
            "note" => ['nullable'],
            "status" => ['nullable'],
            "agents" => ['nullable']
        ];
    }
}
