# README

## アプリケーション名

### Weight Management

## アプリケーションの概要

### 体重の増減を折れ線グラフで管理

## URL

## テスト用アカウント

## 利用方法

### 新規登録したのちに、マイページから体重登録ページに進む。体重と開始から何日目かを入力し登録。登録が保存されると、折れ線グラフに反映される。

## 目指した課題解決

### 体重の増減を折れ線グラフで確認でき、ダイエットや体型維持などの可視化ができる

## 洗い出した要件

### ユーザー登録機能
### 体重管理機能
### 折れ線グラフ機能

## 実装した機能についてのGIF

## テーブル設計

## users テーブル

| Column            | Type    | Options     |
| --------          | ------  | ----------- |
| name              | string  | null: false |
| password          | string  | null: false |

### Association

- has_many :weight

## weight テーブル

| Column            | Type       | Options                                     |
| --------          | ------     | ------------------------------------------- |
| weight            | string     | null: false                                 |
| date              | string     | null: false                                 |
| user_id           | references | null: false, foreign_key: foreign_key: true |

### Association

- belongs_to : users

## ローカルでの動作方法
