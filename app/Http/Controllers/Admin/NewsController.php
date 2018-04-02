<?php

namespace App\Http\Controllers\Admin;

use App\CategoryNews;
use App\Http\Controllers\Controller;
use App\News;
use Illuminate\Http\Request;

class NewsController extends Controller
{
    public function index()
    {
        $news = News::all();
        return view('admin.news.list', compact('news'));
    }

    public function createAndUpdate($id = null)
    {
        $dataCategory = CategoryNews::all();
        if ($id) {
            $data = News::find($id);
            return view('admin.news.create', compact('id', 'data', 'dataCategory'));
        }
        return view('admin.news.create', compact('dataCategory'));
    }

    public function store($id = null, Request $request)
    {
        if ($id) {
            $news = News::find($id);
        } else {
            $news = new News;
        }
        $news->category_news_id = $request->category_news_id;
        $news->users_id         = '1';
        $news->title            = $request->title;
        $news->lead             = $request->lead;
        if ($request->hasFile('image_upload')) {
            $image           = $request->file('image_upload');
            $nameImage       = time() . '.' . $image->getClientOriginalExtension();
            $destinationPath = public_path('/uploads');
            $image->move($destinationPath, $nameImage);

            $news->image = '/' . 'uploads/' . $nameImage;
        }
        $news->content = $request->content;
        $news->status  = $request->status ? 1 : 0;
        $news->view    = 0;
        $news->save();
        return Redirect()->route('news.index');
    }

    public function Delete($id)
    {
        $news = News::find($id);
        $news->delete();
        return Redirect()->route('news.index');

    }
}
