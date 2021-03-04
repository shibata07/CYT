# CYT(continue your training)

## サイト概要
トレーニング内容と食事の両方を記録し、ユーザ同士で進捗を共有するサイト
サイト使用画像 https://www.pakutaso.com/

### サイトテーマ
トレーニングsns

### テーマを選んだ理由
昨今のコロナ禍の影響で手洗いうがいなど健康面を気にする方が増えたと思いますが、運動不足による健康被害も考慮しなければなりません。
そこで今回は「筋トレ」に着目してサイトを作成しました。
そもそも筋トレはプログラミングと同じで継続率がとても低く、１年ですら続けれる方は少ないでしょう。
ですが、外出自粛により在宅率が高くなってきた今だからこそ自宅でトレーニングを行い、
その内容を友人同士で共有できれば挫折や孤独感なく健康になれると思ったからです。

### ターゲットユーザ
自粛期間中の運動不足気味な方

### 主な利用シーン
休日の自宅やジム、隙間時間

## 設計書
テーブル定義書 https://docs.google.com/spreadsheets/d/1GqHNnImsEh9sKu8vnWMpSofNFD-xP-Be_1SvSzpReps/edit?usp=sharing

ER図 https://drive.google.com/file/d/1HIU_qPRsamWzhDl0Shd_NWCTrIeuizcr/view?usp=sharing

### 機能一覧
ユーザ機能
画像アップロード
トレーニング投稿
フォロー
ユーザ検索
コメント(ajax)
ページネーション(kaminari)

## 開発環境
- OS：Linux
- 言語：HTML,CSS,JavaScript,Ruby,SQL
- フレームワーク：Ruby on Rails
- 仮想環境：EC2, RDS

チャレンジ要素　https://docs.google.com/spreadsheets/d/1SCpZ2760sxtDXpLXDLoPSNZlrZBg2fJ3kjcvG9mK4Jc/edit?usp=sharing
