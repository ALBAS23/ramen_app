# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
  ruby 2.6.5p114 (2019-10-01 revision 67812)
  Rails 6.0.3.4

* System dependencies

* Configuration

* Database creation

# Database
## ramen_app

## users table

| Column                   | Type               | Options                         |
|:-------------------------|-------------------:|:-------------------------------:|
| nickname                 | string             | null: false                     |
| e-mail                   | string             | null: false, unique: true       |
| encrypted-password       | string             | null: false                     |
| prefecture               | integer            |                                 |


### Association
- has_many :posts
- has_one :user_data


## user_data table

| Column                   | Type               | Options                         |
|:-------------------------|-------------------:|:-------------------------------:|
| family-name              | string             | null: false                     |
| last-name                | string             | null: false                     |
| favorite-ramen-one       | string             | null: false                     |
| favorite-ramen-two       | string             |                                 |
| favorite-ramen-three     | string             |                                 |
| favorite-genre           | integer            | null: false                     |
| favorite-topping         | string             |                                 |
| user                     | reference          | null: false, foreign_key: true  |

### Association
- belongs_to :user


## posts table

| Column                   | Type               | Options                         |
|:-------------------------|-------------------:|:-------------------------------:|
| menu                     | string             | null: false                     |
| store                    | string             | null: false                     |
| price                    | integer            | null: false                     |
| genre                    | integer            | null: false                     |
| word                     | string             | null: false                     |
| prefecture               | integer            | null: false                     |
| place                    | string             |                                 |
| user                     | reference          | null: false, foreign_key: true  |


### Association
- belongs_to :user

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
