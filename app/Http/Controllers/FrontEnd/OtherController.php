<?php

namespace App\Http\Controllers\FrontEnd;

use App\Http\Controllers\Controller;
use App\Models\Contact;
use Illuminate\Http\Request;

class OtherController extends Controller
{
    public function contact()
    {
        return view('frontend.contact');
    }

    public function postContact(Request $request)
    {
        $contact          = new Contact;
        $contact->name    = $request->name;
        $contact->email   = $request->email;
        $contact->content = $request->content;
        if ($contact->save()) {
            return redirect()->route('frontend.contact')->with('status', 'success');
        } else {
            return redirect()->route('frontend.contact')->with('status', 'danger');
        }
    }

    public function about()
    {
        return view('frontend.about');
    }
}
