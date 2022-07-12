#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

npm run build

cd docs/.vuepress/dist

if [ -z "$GITHUB_TOKEN" ]; then
  msg='deploy manually'
  githubUrl=git@github.com:ccbeango/blog.git
else
  msg='github actions'
  githubUrl=https://ccbeango:${GITHUB_TOKEN}@github.com/magdsnail/store.git
  git config --global user.name "jason.wang"
  git config --global user.email "wangkjim@gmail.com"
fi
git init
git add -A
git commit -m "${msg}"
git push -f $githubUrl master:gh-pages

cd -
rm -rf docs/.vuepress/dist