# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# Qiita DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|
### Association
- has_many, through :groops
- has_many :messages


## groopテーブル
|Column|Type|Options|
|------|----|-------|
|groop|string|null: false|
|add|string|null: false|
### Association
- has_many through :users
- has_many messages

## users_groopテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|groop_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :groop

## messageテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|image|image|null: false|
- belongs_to :user
- belongs_to :groop