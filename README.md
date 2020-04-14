# CSV Export Sample

## 概要
DockerベースのLANP環境にCSV出力のサンプルコードを配置したのみのセットです。

## 使い方
```
$ git clone https://github.com/tstomtimes/csv_export.git
$ cd csv_export
$ docker-compose up
```
上記コードを実行した後、下記リンクをクリック
http://localhost:8080


## Dockerの構成
- nginx:latest
- php:7.2-fpm
- mysql:5.7

## サンプルコードの内容
以下の２ファイルがサンプルコードです。
- index.php  ----(1)
- export.php ----(2)
(1)適当なcsv起爆用ページ
(2)csv出力用コード

## 備考
Web用に8080ポート、phpAdmin用に8888を使用しているので、すでに同じポートを使用している場合は、composeファイルにてポートを変更するなど調整してください。
