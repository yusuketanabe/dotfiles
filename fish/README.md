## PlugIn Memo
* fzf
* z
* bass

## Fish shellでsdkmanを動かす
* ~/.config/fish/functions/sdk.fish を作成
* これだけではshellを起動した時にPATHが通っていないとなり実行できない
* config.fish に"sdk help > /dev/null"と記載する
* ここまでで使えるようになるが、アップデートがあるとアップデートの待ちの状態で止まってしまう
* ~/.sdkman/etc/config の"sdkman_auto_selfupdate"をtrueにする
デフォルトではfalse