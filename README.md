# README

## セットアップ

サイト作成

    $ hugo new site blog-hugo

テーマ設定

    $ cd blog-hugo/themes
    $ git clone https://github.com/halogenica/beautifulhugo.git 
    $ rm -fr .git*

## 使い方

### 投稿

新規投稿

    $ hugo new posts/2017/11/21/helloworld.md
    content/posts/2017/11/21/helloworld.md created
    
文書作成

    $ vi content/posts/2017/11/21/helloworld.md
    
下書きモード解除

    $ vi content/posts/2017/11/21/helloworld.md
    ...
    draft: false
    ...
    
(古い情報)下書きモード解除

    $ hugo undraft content/posts/2017/11/21/helloworld.md

固定ページの作成

    $ vi content/page/about/index.md
    ...
    
上記ファイル構成を元にconfig.tomlのメニューを設定

    [[menu.main]]
      name = "Blog"
      url = "posts"
      weight = 1
    
    [[menu.main]]
      name = "Tags"
      url = "tags"
      weight = 2
    
    [[menu.main]]
      name = "About"
      url = "page/about/"
      weight = 3

プレビュー(http://localhost:1313)

    $ make run

## Github連携

config.tomlに以下の設定

    baseURL = "https://higebobo.github.com/blog-hugo/"
    publishDir = "docs"

公開(githubにプッシュ)

    $ make deploy

## Link

* [Hugo \+ Github Pagesでブログを公開してみた \- Qiita](https://qiita.com/eichann/items/4fe61b8b9bbafcfbe847)
* [GitHub PagesとHugoでブログをつくった \- meow\.md](https://uzimihsr.github.io/post/2019-08-07-create-blog-1/)
