<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Contact;

class ContactController extends Controller
{
    function list() {
        $data = Contact::all();
        return view('admin.contact.list', compact('data'));
    }
}
