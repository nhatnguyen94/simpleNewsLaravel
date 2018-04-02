<?php

namespace App\Http\Controllers\FrontEnd;

use App\Http\Controllers\Controller;
use App\News;

class NewsController extends Controller
{
    public function index()
    {
        return view('frontend.home');

    }
    public function details($id)
    {
        $news = News::select()->where('status', 1)->where('id', $id)->First();
        if ($news) {
            return view('frontend.news.news', compact('news'));
        }
        return Redirect()->route('frontend.index');
    }

}
