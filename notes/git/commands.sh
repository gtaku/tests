# gitメモ

# 直前のコミットを取り消す
git commit --amend

# リモートリポジトリの追加と確認
git remote add name git://github.com/path/to/example.git
git remote -v

# ブランチの確認と追加と切り替え
git branch
git branch name
git checkout name

# ブランチのマージ
git checkout master
git merge name

# push/pullのデフォルト(upstream)の設定と確認
git config --global push.default simple # 安全な設定にしておく
git branch --set-upstream-to=origin/master master
git branch -vv
git push -u origin master # pushと同時にupstreamを設定

