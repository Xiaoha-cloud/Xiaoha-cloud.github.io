#!/bin/bash

# 如果发生错误，终止脚本
set -e

# 构建项目
hugo

# 进入生成的文件夹
cd public

# 初始化一个新的Git仓库
git init

# 移除现有的远程仓库（如果存在）
git remote remove origin || true

# 添加远程仓库
git remote add origin git@github.com:Xiaoha-cloud/Xiaoha-cloud.github.io.git

# 添加并提交所有更改
git add .
git commit -m "Deploying to GitHub Pages"

# 确保创建 gh-pages 分支并推送到 master 分支
git branch -M main

# 推送到 GitHub 仓库的 master 分支
git push --force origin main

# 返回到项目根目录
cd ..
