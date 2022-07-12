#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run docs:build

# 进入生成的文件夹
cd docs/.vuepress/dist

githubUrl=https://ccbeango:${ACCESS_TOKEN}@github.com:magdsnail/store.git

git config --global user.email "wangkjimgmail.com"
git config --global user.name "jason.wang"

git init
git add -A
git commit -m 'deploy'

# 如果发布到 https://<USERNAME>.github.io/<REPO>
git push -f $githubUrl master:gh-pages

cd -
rm -rf dist