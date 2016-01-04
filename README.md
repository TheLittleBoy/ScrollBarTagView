Copy from https://github.com/dse12345z/ScrollBarTagView
fix some bugs

ScrollBarTagView
=============
![alt tag](http://i.imgur.com/fKq70uf.gif) 

Installation
=============

#### Common

copy ScrollBarTagView folder (ScrollBarTagView.h / ScrollBarTagView.m)

Usage
=============

1.create yourself tagView
 
2.- (void)viewDidAppear written under the code

    [ScrollBarTagView initWithScrollView:yourScrollView withTagView: ^UIView *{
        // custom your tagView
        return tagView;
    } didScroll: ^(id scrollBarTagView, id tagView, CGFloat offset) {
        // Scroll to change your tagView
    }];
