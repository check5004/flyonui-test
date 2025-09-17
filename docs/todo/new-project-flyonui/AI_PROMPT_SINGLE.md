# AI 一括実行プロンプト（新規 Nuxt 3 プロジェクト雛形＋サンプル画面／FlyonUI 版）

以下を厳密に実行してください。OS は Windows 想定。Docker 上で既存プロジェクトと同等のライブラリ・設定で、新規プロジェクトを構成します。

## 前提（必読）

- 人間が `steps/00_human_install.md`（Docker 版）を実行し、`docker compose up` でコンテナが起動していること（初回は自動で Nuxt 雛形生成・依存導入・サンプル配置）
- 本プロンプトではホスト側でのパッケージマネージャ実行（npm/pnpm/yarn）や `nuxi` 実行は行わない（必要な生成はコンテナ側の自動処理が担保）
- 本プロンプトは「既に作成されたプロジェクト」に対するファイル編集・追加のみを行う

## 要件

- Nuxt 3、Pinia、@nuxtjs/tailwindcss、@nuxtjs/i18n、ESLint（@nuxt/eslint-config）を前提とした設定/構成ファイルの整備
- ディレクトリ構成: `components/`, `layouts/`, `pages/`, `stores/`, `plugins/`, `middleware/`
- Tailwind + FlyonUI のセットアップを CSS へ反映（`@plugin "flyonui";` ほか）。初回起動時にテンプレートが自動生成されるため、差分のみ適用。
- サンプルページ（トップ）＋簡易 UI（ボタン、トースト）＋ i18n 切替

## 実行手順（ファイル編集のみ）

1. Nuxt 設定

- `nuxt.config.ts` を作成/更新し、以下を有効化:
  - `modules: ['@pinia/nuxt', '@nuxtjs/i18n', '@nuxtjs/tailwindcss']`
  - `devtools: { enabled: true }`
  - i18n: `locales: ['ja', 'en']`, `defaultLocale: 'ja'`
  - CSS 取り込み（必要なら）: `css: ['~/assets/css/tailwind.css']`

2. Tailwind + FlyonUI 設定

- `tailwind.config.js` を生成/更新（必要最小限）
- `content` は `components`, `layouts`, `pages`, `plugins`, `app.vue`, `error.vue`
- `assets/css/tailwind.css` を作成し、以下を記述

```
@import "tailwindcss";
@plugin "flyonui";
@plugin "@iconify/tailwind4";
@import "flyonui/variants.css"; /* JS コンポーネントを使う場合に必要 */

@source "./node_modules/flyonui/dist/index.js"; /* JS コンポーネントを使う場合に必要 */
```

- `app.vue` または `nuxt.config.ts` の `css` で上記 CSS を取り込む
- 既存プロジェクトの色/フォント/spacing/animation の要点を必要最小限反映

3. ディレクトリ/ファイル作成（自動生成ベースに追記）

- `layouts/default.vue`: ヘッダ/フッタ簡易（言語切替ボタン ja/en）
- `pages/index.vue`: サンプル画面。FlyonUI の `btn` 系クラスを用いたボタンと、簡易トースト（自作）を配置、i18n 文言切替 UI
- `components/ui/AppButton.vue`, `components/ui/Toast.vue`
- `stores/toast.ts`（Pinia）: 簡易トーストの状態管理
- `middleware/` は空で作成

4. ESLint

- ファイル編集のみで `@nuxt/eslint-config` ベースの設定を配置

5. 確認（人間が実行）

- 人間が `npm run dev` を実行し、以下を確認:
  - ボタン押下でトーストが表示/自動で消える
  - 言語切替が反映
  - Tailwind + FlyonUI クラスが効いている（`btn`, `btn-primary` など）

6. 出力

- 最終的なディレクトリ構成と主要ファイルのパスを一覧出力

## 注意

- 既存リポジトリとは別ディレクトリで作成済みのプロジェクトを対象
- コマンド実行や依存追加は原則行わず、ファイル編集に限定（生成・依存導入は Docker の自動処理に委任）
- Windows PowerShell 上での実行を想定（ただし本プロンプト自身はコマンドを実行しない）

参考: [Introduction](https://flyonui.com/docs/getting-started/introduction/), [Quick Start](https://flyonui.com/docs/getting-started/quick-start/), [Vue Integration](https://flyonui.com/docs/framework-integrations/vuejs/)
