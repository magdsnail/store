#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

npm run build

cd docs/.vuepress/dist

echo ${ACCESS_TOKEN}
echo "========="

# if [ -z "$GITHUB_TOKEN" ]; then
#   msg='deploy manually'
#   githubUrl=git@github.com:magdsnail/store.git
# else
  msg='github actions'
  githubUrl=https://magdsnail:${ACCESS_TOKEN}@github.com/magdsnail/store.git
  git config --global user.name "jason.wang"
  git config --global user.email "wangkjim@gmail.com"
# fi
# git config --global user.name "jason.wang"
# git config --global user.email "wangkjim@gmail.com"
git init
git add -A
git commit -m "${msg}"
git push -f $githubUrl master:gh-pages
cd -
rm -rf docs/.vuepress/dist