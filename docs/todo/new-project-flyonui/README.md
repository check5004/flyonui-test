# 新規プロジェクト立ち上げガイド（人間向け／FlyonUI 版）

このガイドは、既存フロントエンド（Nuxt 3 + Pinia + Tailwind CSS + @nuxtjs/i18n）の構成を踏襲しつつ、UI レイヤに FlyonUI を追加した「別リポジトリの新規プロジェクト」を短時間で立ち上げるための手順書です。単一ショット（一括実行）と段階実行の 2 通りを提供します。

—

## 前提

- 使用技術: Nuxt 3, Pinia, Tailwind CSS, @nuxtjs/i18n, ESLint（@nuxt/eslint-config）, FlyonUI
- 推奨 Node: LTS（現行）
- 本プロジェクト由来の構成をベースに、別プロジェクト名・別 Git リポジトリとして作成
- 最小サンプル画面（1 ページ）を作成し、アーキテクチャ分離の例も含める
- FlyonUI は Tailwind CSS と統合し、CSS 側でプラグイン宣言を行います（Quick Start 参照）
  - 参考: [FlyonUI Introduction](https://flyonui.com/docs/getting-started/introduction/), [Quick Start](https://flyonui.com/docs/getting-started/quick-start/), [Vue Integration](https://flyonui.com/docs/framework-integrations/vuejs/)

## 実行形態

- 一括実行（AI に一発でやってもらう）: `AI_PROMPT_SINGLE.md` を使用（人間による Step 00 完了を前提）
- 段階実行（ステップ毎に確実に進める）: `steps/` 配下の各プロンプトを順番に実行

## 成果物（期待値）

1. 新規 Nuxt 3 アプリ雛形（同等の依存関係・設定）
2. ディレクトリ構成（`components/`, `layouts/`, `pages/`, `stores/`, `plugins/`, `middleware/`）
3. Tailwind 設定（`@nuxtjs/tailwindcss`）+ FlyonUI 設定（CSS へのプラグイン宣言）
4. 国際化設定（`@nuxtjs/i18n`）
5. サンプル画面: 単一ページ（トップ）+ コンポーネント分離例（簡易トースト/ボタンなど）
6. ESLint 設定（`@nuxt/eslint-config`）
7. 実行スクリプト（`dev`, `build`, `preview`）

## 役割分担（重要）

- 人間（Step 00）: インタラクティブ操作や依存インストールを含む初期セットアップ（Nuxt 雛形生成、依存導入、初回起動確認）
- AI（Step 01 以降）: 設定ファイル編集、ディレクトリ/ファイル生成、コンポーネント実装、設定整備（インストール操作は行わない）

## 手順（段階実行の推奨フロー）

0. 人間のみ
   - `steps/00_human_install.md` に従い、Nuxt 雛形の作成と依存導入、初回起動確認を完了（本版では FlyonUI と `@iconify/tailwind4` の追加も実施）
1. 雛形の整備（AI）
   - `steps/01_bootstrap.md` を実行（ファイル/ディレクトリ作成・初期雛形の整備）
2. 依存関係と設定の適用（AI）
   - `steps/02_configure.md` を実行（Nuxt 設定、Tailwind+FlyonUI、ESLint、i18n）
3. サンプル画面作成（AI）
   - `steps/03_sample_page.md` を実行（サンプルページと UI 部品の作成）
4. アーキテクチャ分離例（AI・任意）
   - `steps/04_arch_examples.md`（サービス層/プラグイン層の例）
5. 仕上げ（AI/人間）
   - `steps/05_review_checklist.md` で確認し、README、ライセンス、CI 設定など必要に応じて追加

## チェックリスト

- [ ] `npm run dev` が正常起動（Step 00 完了時点）
- [ ] トップページが表示される
- [ ] Tailwind + FlyonUI が効いている（`btn` 等のクラス反映）
- [ ] i18n の言語切り替えが動作
- [ ] ESLint で致命的なエラーなし
- [ ] 例示コンポーネント（ボタン/トースト）が表示・動作

## トラブルシューティング

- 依存関係の不整合: `node_modules` と `package-lock.json` を削除し再インストール
- ポート競合: `npx kill-port 3000` 等で解消
- Tailwind / FlyonUI が効かない:
  - `assets/css/tailwind.css` に `@plugin "flyonui";` と `@plugin "@iconify/tailwind4";` が記載されているか
  - `@import "flyonui/variants.css";` と `@source` の記載（JS コンポーネント利用時）
  - 参考: [Quick Start](https://flyonui.com/docs/getting-started/quick-start/), [Vue Integration](https://flyonui.com/docs/framework-integrations/vuejs/)

—

詳細は `steps/00_human_install.md`、`AI_PROMPT_SINGLE.md` および `steps/` の各プロンプトを参照してください。
