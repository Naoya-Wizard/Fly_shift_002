
# アプリケーション名
## FlyShift

# アプリケーション概要
- ログイン状態でのみアプリの機能を使用できる
- 任意の月のシフトを簡単に作成できる
- 作成したシフトを簡単に編集できる
- 過去に作成したシフトはトップページにて一覧表示される
- 過去に作成したシフトは削除できる
- シフト作成をするときに便利なテンプレートが作成できる
- テンプレートは編集及び削除できる

# URL
- http://52.194.34.219:3000/

# テスト用アカウント
- nicknane:   naoya
- email:   a@a
- password:   111111

# 利用方法
## シフト作成機能
###### ※カレンダーに中のプルダウンには **空白** がデフォルトでついている 
###### ※ **日勤** などは例であり任意の文字でも可能
1. テスト用アカウントでログインする
2. トップページ上部の ***シフト作成*** をクリックする
3. 作成したいシフトの年をプルダウンから選択
4. 作成したいシフトの月をプルダウンから選択
5. 月の選択が終わると出てくるテキストフィールドに **日勤** と入力し ***追加*** を押す
6. 先程のテキストフィールドに **夜勤** と入力し ***追加*** を押す
7. 先程のテキストフィールドに **休み** と入力し ***追加*** を押す
8. ***終了*** を押す
9. 選択した年月に対応するカレンダーとともにプルダウンが出力されるので、プルダウンからシフトを自由に選択する
10. 選択が終わると ***終了*** を押す

## シフト削除機能
1. テスト用アカウントでログインする
2. 過去に作成したシフトがあった場合、シフトの概要と ***削除*** ボタンが出るので押す
3. 過去に作成したシフトがない場合は作成する

## シフト一覧機能
1. TOPページにアクセスすると、過去に作ったシフトが一覧表示されている
2. 一覧表示されたシフトがない場合は、シフトを作成する

## シフト編集機能
1. テスト用アカウントでログインする
2. TOPページに一覧表示されている任意のシフトをクリックすると編集ページに遷移する
3. カレンダーに表示されているテキストフィールドに編集内容を記入する
4.  ***更新*** を押す

## テンプレート作成機能
1. テスト用アカウントでログインする
2. TOPページの ***テンプレート作成*** を押す
3. 表示されているテキストフィールドにテンプレート名として **病院** と記入し、***決定*** を押す 
4. 次に表示されるテキストフィールドにシフト名として **日勤** と入力し、**追加** を押す
5. 先程のテキストフィールドに **夜勤** と入力し ***追加*** を押す
6. 先程のテキストフィールドに **休み** と入力し ***追加*** を押す
7. ***登録*** を押す

# 目指した課題解決
見にくい職場のシフトではなく、自分だけのシフトを作成し、いつでも確認できるようにすること。


病院などの24時間稼働する施設では、勤務体制をシフト制で行うことが多い。発表されたシフト表にはたくさんのスタッフの名前とたくさんの日付が書かれており、ユーザーが必要としている情報にアクセスしずらい。ユーザーに必要な情報は自分のシフトのみであるが、シフト表から自分の情報を探すのはとても大変である。あらかじめ自分のシフトだけを入力し、いつでも自分のシフトを確認できるアプリがあれば便利である。

# 洗い出した要件
https://docs.google.com/spreadsheets/d/1kXHKEl2FXs5n0chtvUWUEuJdRaCx9lwCarb-dWgh9Hk/edit?usp=sharing

# 実装した機能についての画像やGIFおよびその説明
## シフト作成機能を使用するGIF
# ※見せたいところを集約
- TOPページからの遷移、作成するシフトの年月を指定
[![Image from Gyazo](https://i.gyazo.com/d11862aff1e3704b90817e8db8f20d33.gif)](https://gyazo.com/d11862aff1e3704b90817e8db8f20d33)
- シフトを入力し ***追加*** する
[![Image from Gyazo](https://i.gyazo.com/e4c6e10e0de5d097d50291dac775c44c.gif)](https://gyazo.com/e4c6e10e0de5d097d50291dac775c44c)
- ***終了*** を押しカレンダーが表示される
[![Image from Gyazo](https://i.gyazo.com/268995bd3a49ac884833bf204cabea75.gif)](https://gyazo.com/268995bd3a49ac884833bf204cabea75)
- シフトを選択し、***終了*** を押しDBに保存
[![Image from Gyazo](https://i.gyazo.com/a38956fd381531f95d5d6c2dd3081ed0.gif)](https://gyazo.com/a38956fd381531f95d5d6c2dd3081ed0)

## シフト編集機能を使用するGIF
- TOPページから編集ページに遷移
[![Image from Gyazo](https://i.gyazo.com/1d3457185499fdb0361b6bfd890a9efb.gif)](https://gyazo.com/1d3457185499fdb0361b6bfd890a9efb)
- シフトを編集後 ***更新*** する
[![Image from Gyazo](https://i.gyazo.com/348a333fdd7ff92de5eccc4a060eb3d2.gif)](https://gyazo.com/348a333fdd7ff92de5eccc4a060eb3d2)

## シフト削除機能を使用するGIF
[![Image from Gyazo](https://i.gyazo.com/cd6eac0f9d90b0754786a4da9a2b49f3.gif)](https://gyazo.com/cd6eac0f9d90b0754786a4da9a2b49f3)


# 実装予定の機能
シフトfly機能：googleAPIを利用し、google calender にシフトの内容を飛ばす事ができる

# データベース設計
## ER図
[![Image from Gyazo](https://i.gyazo.com/6b1ade5bd638c7e3e4696784b526a085.png)](https://gyazo.com/6b1ade5bd638c7e3e4696784b526a085)
## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false               |
| password | string  | null: false                        |
| encrypted_password | string | null: false               |

### Association

- has_many :shifts
- has_many :templates


## shifts テーブル

| Column             | Type      | Options                   |
| ------------------ | --------- | ------------------------- |
| shift              | text      | null: false               |
| month_id           | integer   | null: false               |
| year_id            | integer   | null: false               |
| user               | reference | foreign_key: true         | 

### Association

- belongs_to :user

## templates テーブル

| Column             | Type      | Options                   |
| ------------------ | --------- | ------------------------- |
| template           | string    | null: false               |
| shift              | text      | null: false               |
| user               | reference | foreign_key: true         | 

### Association

- belongs_to :user

# ローカルでの動作方法
アプリを１からリファクタリング予定です。終わり次第UPします。
