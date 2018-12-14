---
title: "Host static web site with AWS S3"
date: 2017-06-21T20:10:12+09:00
---

## 1. Create a bucket
Create a bucket in aws s3 console

## 2. Grant Permission
Permission -> Public access settings,  去掉4个勾， 这个也可以在创建bucket的时候去掉

## 3. Set static website hosting
Properties -> Static Website Hosting -> Use this bucket to host a website, 输入index.html. 复制上方的Endpoint

## 4. Make files public
Overview 选择所有需要公开的文件, Actions -> Make public

## 5. Access endpoint in browser
   
   
   
   
   
   
   
   
   

links:

http://blog.aws.andyfase.com/s3-backed-static-blog/index.html
