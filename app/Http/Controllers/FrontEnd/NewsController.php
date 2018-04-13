<?php

namespace App\Http\Controllers\FrontEnd;

use App\Http\Controllers\Controller;
use App\Models\CategoryNews;
use App\Models\Comment;
use App\Models\News;
use Illuminate\Http\Request;

class NewsController extends Controller
{
    public function index()
    {
        $CategoryNews = CategoryNews::select()->where('pins', 1)->where('status',1)->get();
        return view('frontend.home', compact('CategoryNews'));
    }

    public function details($id)
    {
        $news = News::select()->where('status', 1)->where('id', $id)->First();
        if ($news) {
            return view('frontend.news.news', compact('news'));
        }
        return Redirect()->route('frontend.index');
    }

    public function comment(Request $request)
    {
        $news = News::find($request->id);
        if ($news) {
            $comment          = new Comment;
            $comment->name    = $request->name;
            $comment->email   = $request->email;
            $comment->content = $request->content;
            $comment->status  = 1;
            $news->comentable()->save($comment);
        }
        $news = News::find($request->id);
        return $news->comentable->toJson();
    }

    public function sortCategory($id)
    {
        $data = CategoryNews::find($id);
        if ($data) {
            if ($data->status == 1) {
                return view('frontend.news.sort_category', compact('data'));
            }
        }
        return Redirect()->route('frontend.index');
    }

    public function Search(Request $request)
    {
        if (strlen(trim($request->key)) > 0) {
            $search = $request->key;
            $news   = News::select()->where('title', 'like', '%' . $request->key . '%')->orderBy('created_at', 'DESC')->get();
            return view('frontend.news.search', compact('search', 'news'));
        }
        return Redirect()->route('frontend.index');
    }

    public function deleteComment($id,$idnews)
    {
        $comment = Comment::find($id);
        if($comment->delete())
        {
            $news = News::find($idnews);
            return $news->comentable->toJson();
        }
        else
        {
            echo "teo";
        }
    }
}
