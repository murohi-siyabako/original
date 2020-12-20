# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name | string | null: false |
| email    | string | null: false |
| encrypted_password | string | null: false |

### Association
- has_many :comments

## news テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| category_id | integer | null: false, foreign_key:true |
| comment | references | null: false, foreign_key:true |

### Association
- has_many :commets

## comments テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user | references | null: false, foreign_key:true |
| new | references | null: false, foreign_key:true |

### Association
- belongs_to :user
- belongs_to :new