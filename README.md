# GNU Emacsに関して色々やるための自分用コピー
emacs-mirror/emacs をfork(全ブランチ)して作成

## GNU Emacs ports for Android
`java/INSTALL`に記された手順をもとにGNU EmacsのAndroid用アプリケーションパッケージファイル(.apkファイル)をビルドする。

### 行ったこと
1. 対象となるブランチ`master`から`my/master`をcut[^1]

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

4. `my/master`ブランチにビルド用ワークフローファイル`.github/workflows/build_all.yml`を追加[^4]

5. ビルドが成功すれば`java/*.apk`が生成される

6. CI/CD
   - fork元`emacs-mirror/emacs`の`master`からfork先`ayatakesi/my-emacs`の`master`に`Sync fork`
   - localのレポジトリで`master`をcheckout、pullしてSyncした差分を取り込み
   - localのレポジトリで`my/master`をcheckoutして`master`をmerge
   - conflictしたらお気に入りのマージツールで解決
   - commitしてfork先にpush
   - ワークフローを実行して`master`の`HEAD`にたいするapkファイルをビルド
[^1]: 自分の作業は対象のブランチとかに接頭辞`my/`を付加した別ブランチを切って行っています。こうしておけばGithubで`Sync fork`したときに(もしかしたら大量の)競合が発生して、それをGithubのWeb上のエディタで解決するという地獄みたいなミッションを回避できます。
[^2]: [`bug-gnu-emacs`にレポートした件](https://debbugs.gnu.org/cgi/bugreport.cgi?bug=70199)に関するpatchです。
[^3]: 作り方について各レポジトリの`README.md`に記載あり。
[^4]: トリガーは手動のみ。内容はインデントとか除けば普通のbashコマンドプロンプトと同じ
