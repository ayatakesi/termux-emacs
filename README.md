# GNU Emacsに関して色々やるための自分用コピー
emacs-mirror/emacs をfork(全ブランチ)して作成(emacs-30というブランチが無かった頃)

## 開発ブランチバージョンアップ時の覚え
このmy/emacsというレポジトリはカレントメジャーバージョンがEmacs 29.3の頃に、github上にあるemacs-mirror/emacsをforkして作成しました。その後Emacs 29.4のリリースまでemacs-29ブランチで開発が続けられていましたが、何かないかぎり29系列の新バージョンはリリースせず、今までEmacs 30向けに開発が行われていたmasterブランチからemacs-30というブランチがEmacs 30.1にリリースに向けた開発用ブランチがcutされました。

ここで自分用のmy/emacsですが、fork時に存在していなかったemacs-30については、fork側レポジトリにブランチがないので、GithubのSync forkで上流のコミットが取り込めません(emacs-30がcutされた時点でforkを削除、新たにforkする場合は問題なし)。そのためfork元からローカルに直接最新をpullして、それをGithubにpushするとか行ったので、その手順とか参考頁を残しておきます。

参考にした頁:
[フォーク用のリモート リポジトリの構成](https://docs.github.com/ja/pull-requests/collaborating-with-pull-requests/working-with-forks/configuring-a-remote-repository-for-a-fork)
[フォークを同期する](https://docs.github.com/ja/pull-requests/collaborating-with-pull-requests/working-with-forks/syncing-a-fork)

1. リモートにfork元を追加(名前はわかり易くサンプルと同じupstreamにした)。

```bash
$ git remote -v # 追加前
origin  https://github.com/ayatakesi/my-emacs (fetch)
origin  https://github.com/ayatakesi/my-emacs (push)
$
$ git remote add upstream https://github.com/emacs-mirror/emacs.git # 追加
$
$ git remote -v # 追加後
origin  https://github.com/ayatakesi/my-emacs (fetch)
origin  https://github.com/ayatakesi/my-emacs (push)
upstream        https://github.com/emacs-mirror/emacs.git (fetch)
upstream        https://github.com/emacs-mirror/emacs.git (push)
```

2. fork元からfetchしてemacs-30ブランチを取得してoriginにpush
ログは残ってませんが以下のような感じでした
```bash
$ git fetch upstream #fetchする
$
$ # いらない気もするが念のため以下で最新コミット取得
$ git checkout emacs-30
$ git pull upstream
```
後は以下の手順と合流しますが、今回のようにfork先で取り込めないfork元の更新を取得する場合にはupstream、それ以外はoriginをgitのpushとかpullで指定します(Actionsでビルドするためにmy/masterに行った準備は当然上流に含まれている訳がないので、自分用のブランチ切ったら以下の手順/cherry-pickを行う必要がある)。

## GNU Emacs ports for Android
`java/INSTALL`に記された手順をもとにGNU EmacsのAndroid用アプリケーションパッケージファイル(.apkファイル)をビルドする。

### 行ったこと
1. 対象となるブランチ`emacs-30`から`my/emacs-30`をcut[^1]

2. patchファイルを追加、適用してコミット[^2]

```bash
$ cat <<"EOS" > PATCH_FOR_EMACS.patch
diff --git a/lisp/startup.el b/lisp/startup.el
index 357a4154e4c..3e6508954cf 100644
--- a/lisp/startup.el
+++ b/lisp/startup.el
@@ -1938,8 +1938,7 @@ a face or button specification."
 		(if (image-type-available-p 'xpm)
 		    "splash.xpm"
 		  "splash.pbm"))
-	       ((or (image-type-available-p 'svg)
-		    (image-type-available-p 'imagemagick))
+	       ((image-type-available-p 'svg)
 		"splash.svg")
 	       ((image-type-available-p 'png)
 		"splash.png")
EOS
$ patch -p1 < PATCH_FOR_EMACS.patch
$ git add PATCH_FOR_EMACS.patch lisp/startup.el
$ git commit -m 'nanika commit message'
```

3. モジュールとして追加するライブラリ用のレポジトリを作成[^3]

[ayatakesi/my-Android-ImageMagick7](https://github.com/ayatakesi/my-Android-ImageMagick7)  
[ayatakesi/my-webp](https://github.com/ayatakesi/my-webp)  
[ayatakesi/my-libxml2](https://github.com/ayatakesi/my-libxml2)  
[ayatakesi/my-tree-sitter-0.20.7](https://github.com/ayatakesi/my-tree-sitter-0.20.7)  
[ayatakesi/my-tiff-4.5.0](https://github.com/ayatakesi/my-tiff-4.5.0)  
[ayatakesi/my-sqlite](https://github.com/ayatakesi/my-sqlite)  
[ayatakesi/my-pcre](https://github.com/ayatakesi/my-pcre)  
[ayatakesi/my-p11-kit-0.24.1](https://github.com/ayatakesi/my-p11-kit-0.24.1)  
[ayatakesi/my-nettle-3.8](https://github.com/ayatakesi/my-nettle-3.8)  
[ayatakesi/my-libtasn1-4.19.0](https://github.com/ayatakesi/my-libtasn1-4.19.0)  
[ayatakesi/my-libselinux](https://github.com/ayatakesi/my-libselinux)  
[ayatakesi/my-libpng](https://github.com/ayatakesi/my-libpng)  
[ayatakesi/my-libjpeg-turbo](https://github.com/ayatakesi/my-libjpeg-turbo)  
[ayatakesi/my-jansson](https://github.com/ayatakesi/my-jansson)  
[ayatakesi/my-icu](https://github.com/ayatakesi/my-icu)  
[ayatakesi/my-harfbuzz-7.1.0](https://github.com/ayatakesi/my-harfbuzz-7.1.0)  
[ayatakesi/my-gnutls-3.7.8](https://github.com/ayatakesi/my-gnutls-3.7.8)  
[ayatakesi/my-gmp-6.2.1](https://github.com/ayatakesi/my-gmp-6.2.1)  
[ayatakesi/my-giflib](https://github.com/ayatakesi/my-giflib)  
[ayatakesi/my-core](https://github.com/ayatakesi/my-core)  
[ayatakesi/my-boringssl](https://github.com/ayatakesi/my-boringssl)  

4. `my/emacs-30`ブランチにビルド用ワークフローファイル`.github/workflows/build_all.yml`を追加[^4]

5. ビルドが成功すれば`java/*.apk`が生成される

6. CI/CD
   - fork元`emacs-mirror/emacs`の`emacs-30`からfork先`ayatakesi/my-emacs`の`emacs-30`に`Sync fork`
   - localのレポジトリで`emacs-30`をcheckout、pullしてSyncした差分を取り込み
   - localのレポジトリで`my/emacs-30`をcheckoutして`emacs-30`をmerge
   - conflictしたらお気に入りのマージツールで解決
   - commitしてfork先にpush
   - ワークフローを実行して`emacs-30`の`HEAD`にたいするapkファイルをビルド
[^1]: 自分の作業は対象のブランチとかに接頭辞`my/`を付加した別ブランチを切って行っています。こうしておけばGithubで`Sync fork`したときに(もしかしたら大量の)競合が発生して、それをGithubのWeb上のエディタで解決するという地獄みたいなミッションを回避できます。
[^2]: [`bug-gnu-emacs`にレポートした件](https://debbugs.gnu.org/cgi/bugreport.cgi?bug=70199)に関するpatchです。
[^3]: 作り方について各レポジトリの`README.md`に記載あり。
[^4]: トリガーは手動のみ。内容はインデントとか除けば普通のbashコマンドプロンプトと同じ
