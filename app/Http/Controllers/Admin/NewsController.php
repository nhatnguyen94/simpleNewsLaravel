<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\CategoryNews;
use App\Models\News;
use Illuminate\Http\Request;
use Validator;

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

    public function uploadImage(Request $request)
    {
        $validator = Validator::make($request->all(),
            [
                'file' => 'image',
            ],
            [
                'file.image' => 'The file must be an image (jpeg, png, bmp, gif, or svg)',
            ]);
        if ($validator->fails()) {
            return json_encode(array(
                'status' => false,
                'errors' => $validator->errors(),
            ));
        }

        $extension = $request->file('file')->getClientOriginalExtension();
        $dir       = 'uploads/';
        $filename  = uniqid() . '_' . time() . '.' . $extension;
        $request->file('file')->move($dir, $filename);
        $nameAndPatch = '/uploads/' . $filename;
        return json_encode(['status' => true, 'filename' => $nameAndPatch]);
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
        $news->image            = $request->image;
        $news->content          = $request->content;
        $news->status           = $request->status ? 1 : 0;
        $news->view             = 0;
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
