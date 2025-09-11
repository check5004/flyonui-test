# Step 01 — Bootstrap（AI 向けプロンプト／FlyonUI 版）

目的: インストール済みの Nuxt 雛形上で、初期ディレクトリとプレースホルダを整備する（コマンド実行・依存導入は行わない）。FlyonUI 固有の作業は後続 Step 02 で行う。

## 前提

- 人間による `steps/00_human_install.md` 完了（Nuxt 雛形作成、依存導入、初回起動確認済み）
- 本ステップはファイル/ディレクトリの作成と編集のみに限定

### タスク

1. ディレクトリ雛形の作成

- `components/`, `components/ui/`, `layouts/`, `pages/`, `stores/`, `plugins/`, `middleware/`, `assets/css/` が存在しなければ作成

2. プレースホルダの配置

- `layouts/default.vue`: 簡易ヘッダ/フッタ/スロット
- `pages/index.vue`: "Hello" と簡易 Tailwind クラスを用いたプレースホルダ
- `assets/css/tailwind.css`: プレースホルダとして作成（中身は空でも可）。Step 02 で以下へ差し替え・追記
  - `@import "tailwindcss";`（プレースホルダとして入れておいても良い）

3. 最低限の構成ファイル（存在しない場合のみ作成）

- `nuxt.config.ts`: 空の場合は後続 Step 02 で編集可能な骨子を用意
- `.eslintrc` または `eslint.config` は Step 02 で整備するため未作成でも可

### 成果物

- ディレクトリ構造とプレースホルダが整い、Step 02（設定）へ移行可能な状態
