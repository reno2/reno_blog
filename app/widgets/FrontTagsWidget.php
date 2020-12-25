<?php
namespace App\Widgets;

use App\Widgets\Contract\ContractWidget;
use App\Tag;

class FrontTagsWidget implements ContractWidget
{
    public function execute(){
        $tags = Tag::all();
        return view('Widgets::frontTagsView', [
            'tags' =>$tags
        ]);
    }
}
