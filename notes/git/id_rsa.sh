# HTTPSでpush/pullするときに公開鍵を使う

# http://www.backlog.jp/git-guide/reference/trouble-shooting.html

# Macでは、キーチェーンと連携するための認証ヘルパーを使用することができます。
# Homebrew をお使いの方は、Gitのインストール時に認証ヘルパーも自動でインストールされます。
# それ以外の場合は、手動でインストールする必要があります。

# 認証ヘルパーがインストールされているかどうかは、下記のコマンドで確認できます。
git credential-osxkeychain
# Usage: git credential-osxkeychain <get|store|erase>

# 認証ヘルパーがインストールされていない場合、下記のような出力が表示されます。
git credential-osxkeychain
# git: 'credential-osxkeychain' is not a git command. See 'git --help'.

# その場合、認証ヘルパーをダウンロードして適切なパスに置くことによって、利用できるようになります。
curl -s -O http://github-media-downloads.s3.amazonaws.com/osx/git-credential-osxkeychain
chmod u+x git-credential-osxkeychain
mv git-credential-osxkeychain /usr/local/bin

# インストール後、認証ヘルパーを有効にする設定を追加します。
git config --global credential.helper osxkeychain
