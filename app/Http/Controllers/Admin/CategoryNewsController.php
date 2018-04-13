<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\CategoryNews;
use Illuminate\Http\Request;

class CategoryNewsController extends Controller
{
    public function index()
    {
        $data = CategoryNews::all();
        return view('admin.category_news.list', compact('data'));
    }

    public function store($id = null, Request $request)
    {
        if ($id) {
            $categorynews = CategoryNews::find($id);
        } else {
            $categorynews = new CategoryNews;
        }
        $categorynews->name   = $request->name;
        $categorynews->status = 1;
        $categorynews->pins   = $request->pins ? 1 : 0;
        $categorynews->save();
        return Redirect()->route('categorynews.index');
    }

    public function createAndUpdate($id = null)
    {
        if ($id) {
            $data = CategoryNews::find($id);
            return view('admin.category_news.create', compact('id', 'data'));
        }
        return view('admin.category_news.create');
    }

    public function Delete($id)
    {
        $news = CategoryNews::find($id);
        $news->delete();
        return Redirect()->route('news.index');
    }
}
