# README

## セットアップ

サイト作成

```shell
hugo new site hugo-beatifulhugo
```

テーマ設定

```shell
cd themes
git submodule add https://github.com/halogenica/beautifulhugo.git 
```

## 使い方

### 投稿

新規投稿

```shell
hugo new posts/2017/11/21/helloworld.md
content/posts/2017/11/21/helloworld.md created
```

文書作成

```shell
vi content/posts/2017/11/21/helloworld.md
```

下書きモード解除

```shell
vi content/posts/2017/11/21/helloworld.md
draft: false
```

固定ページの作成

```shell
vi content/page/about/index.md
```
    
上記ファイル構成を元にconfig.tomlのメニューを設定

```toml
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
```

プレビュー(http://localhost:1313)

```shell
make run
```

## Github連携

config.tomlに以下の設定

```toml
    baseURL = "https://higebobo.github.com/blog-hugo/"
    publishDir = "docs"
```

公開(githubにプッシュ)

```shell
make deploy
```

## Link

* [Hugo \+ Github Pagesでブログを公開してみた \- Qiita](https://qiita.com/eichann/items/4fe61b8b9bbafcfbe847)
* [GitHub PagesとHugoでブログをつくった \- meow\.md](https://uzimihsr.github.io/post/2019-08-07-create-blog-1/)
