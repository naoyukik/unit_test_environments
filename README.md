# Unit test Environments
PHP/TSのユニットテストの開発環境を構築します。

## PHP
### Laravel + Codeception（PHPUnit）
構築する環境はLaravelとCodeceptionです。

https://codeception.com/

CodeceptionはBDDに対応したテストフレームワークですが、内部はPHPUnitを使用しています。
PHPUnitを扱ったことがある開発者であれば、ひとまずの書き心地は変わらないと思います。

また、DBに関してはParaTest環境を構築します（予定）。

## PHPサンプル実行方法
### Docker起動
```bash
cp .env.example .env
# Change `COMPOSE_PROJECT_NAME` in .env
docker compose up -d php
```
### 各種解析ツール実行
```bash
make codeception
```
