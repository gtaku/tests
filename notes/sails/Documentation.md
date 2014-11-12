# Sails.js

## Concepts

### Assets

#### Overview

Assets refer to static files (js, css, images, etc) on your server that you want to make accessible to
the outside world. In Sails, these files are placed in the assets/ directory, where they are processed
and synced to a hidden temporary directory (.tmp/public/) when you lift your app. The contents of this
.tmp/public folder are what Sails actually serves - roughly equivalent to the "public" folder in
express, or the "www" folder you might be familiar with from other web servers like Apache. This
middle step allows Sails to prepare/pre-compile assets for use on the client - things like LESS,
CoffeeScript, SASS, spritesheets, Jade templates, etc.

Assetsは外部に公開するサーバー上の静的ファイル（JS、CSS、画像など）です。Sailsでは、これらのファイルはアプリを起動するとき
一時ディレクトリ（.tmp/public/）に加工し、同期されている assets/ ディレクトリに配置されます。
.tmpの/public フォルダは Express.js の "public" フォルダ、Apache の "www" フォルダのようなものである。
このステップでLESS、CoffeeScript、SASS、spritesheets、Jade templatesなどをコンパイルすることができます。

---

#### Static middleware

Behind the scenes, Sails uses the static middleware from Express to serve your assets. You can configure
this middleware (e.g. cache settings) in /config/http.js.

Sailsは express.static を使用しています。/config/http.js で(キャッシュなどの)設定をすることができます。

---

#### index.html

Like most web servers, Sails honors the index.html convention. For instance, if you create assets/foo.html
in a new Sails project, it will be accessible at http://localhost:1337/foo.html. But if you create
assets/foo/index.html, it will be available at both http://localhost:1337/foo/index.html and
http://localhost:1337/foo.

一般的な他のWebサーバーと同様に、Sailsはindex.htmlを使うことができます。 例えば、 assets/foo.html は
http://localhost:1337/foo.html からアクセスできますが assets/foo/index.html は
http://localhost:1337/foo/index.html に加えて http://localhost:1337/foo からもアクセスできます。

---

#### Precedence

It is important to note that the static middleware is installed after the Sails router. So if you define a
custom route, but also have a file in your assets directory with a conflicting path, the custom route will
intercept the request before it reaches the static middleware. For example, if you create assets/index.html,
with no routes defined in your config/routes.js file, it will be served as your home page. But if you define
an custom route, '/': 'FooController.bar', that route will take precedence.

---









