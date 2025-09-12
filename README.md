## FlyonUI 対話型セットアップガイド（Windows）

### 概要

このリポジトリは、Windows 環境で Nuxt 3 + FlyonUI を用いた新規フロントエンドプロジェクトを短時間で立ち上げるための「対話型セットアップガイド」を提供します。実行用のアプリ本体ではなく、ガイド用の単一 HTML ページ（`index.html`）と補助ドキュメント群で構成されています。

- **対象読者**: Nuxt 3 を使って新規プロジェクトを始めたい方、FlyonUI を Tailwind CSS と統合して使いたい方
- **ゴール**: Nuxt 雛形作成 → 依存導入 → 設定追加 → サンプル画面表示 までを迷わず完了

### 収録物のハイライト

- **`index.html`**: ブラウザで開くだけで使える、対話型（サイドバー/アコーディオン/コピー機能付き）セットアップガイド
  - セクション構成: はじめに / 前提条件 / プロジェクトセットアップ / 各種設定 / サンプルページ作成 / 最終確認
  - コマンドや設定スニペットを1クリックでコピー可能
- **ドキュメント**: 実施順に沿った人間用/AI 用プロンプトやアーキテクチャ概要
  - `docs/todo/new-project-flyonui/README.md`（人間向けの全体像）
  - `docs/todo/new-project-flyonui/AI_PROMPT_SINGLE.md`（一括実行プロンプト）
  - `docs/todo/new-project-flyonui/steps/*.md`（段階実行プロンプト）
  - `docs/todo/new-project-flyonui/ARCHITECTURE.md`（アーキテクチャ概要）

### 技術スタック

- **ガイド自体**: HTML + Tailwind CSS（CDN）+ Vanilla JS
- **セットアップ対象（ガイドが案内する先）**:
  - Nuxt 3 / Pinia / @nuxtjs/i18n / @nuxtjs/tailwindcss / ESLint（@nuxt/eslint-config）
  - FlyonUI（Tailwind CSS プラグインとして統合）
  - 参考: [FlyonUI Introduction](https://flyonui.com/docs/getting-started/introduction/), [Quick Start](https://flyonui.com/docs/getting-started/quick-start/), [Vue Integration](https://flyonui.com/docs/framework-integrations/vuejs/)

### 使い方（最短）

1. このリポジトリを取得します。
2. `index.html` をダブルクリックしてブラウザで開きます（インターネット接続が必要です）。
3. 画面の手順に沿って、Nuxt プロジェクトの雛形作成から設定/サンプル作成まで進めてください。

ローカルサーバ経由で開きたい場合は、任意の静的サーバを使えます。

```bash
# 例: Python の簡易サーバ
python3 -m http.server 5500
# → http://localhost:5500/index.html を開く

# 例: npm の静的サーバ（任意）
npx serve . --listen 5500 --single
# → http://localhost:5500/index.html を開く
```

### セットアップの流れ（ダイジェスト）

詳細は `index.html` の各セクションを参照してください。以下は主な実行ポイントの抜粋です。

1. **Nuxt 3 雛形作成**

```bash
npm create nuxt@latest
```

2. **依存関係の導入**

```bash
# ランタイム
npm i pinia @pinia/nuxt @nuxtjs/i18n @headlessui/vue @heroicons/vue flyonui

# 開発時
npm i -D @nuxt/eslint-config eslint @nuxtjs/tailwindcss @iconify/tailwind4
```

3. **nuxt.config.ts の設定（例）**

```ts
export default defineNuxtConfig({
  devtools: { enabled: true },
  modules: ['@pinia/nuxt', '@nuxtjs/i18n', '@nuxtjs/tailwindcss'],
  i18n: { locales: ['ja', 'en'], defaultLocale: 'ja' },
  css: ['~/assets/css/tailwind.css']
})
```

4. **Tailwind + FlyonUI の設定**

```css
@import "tailwindcss";
@plugin "flyonui";
@plugin "@iconify/tailwind4";
@import "flyonui/variants.css"; /* JS コンポーネントを使う場合に必要 */
@source "./node_modules/flyonui/dist/index.js"; /* JS コンポーネントを使う場合に必要 */
```

5. **サンプル画面の作成**

- `layouts/default.vue` にレイアウト
- `pages/index.vue` に FlyonUI クラス（`btn`, `badge` など）を用いた簡易 UI

### ドキュメントマップ

- `docs/todo/new-project-flyonui/README.md`: ガイド全体像と実施順序、チェックリスト
- `docs/todo/new-project-flyonui/AI_PROMPT_SINGLE.md`: 一括実行用のプロンプト（人間による初期セットアップ済み前提）
- `docs/todo/new-project-flyonui/steps/00_human_install.md`: Nuxt 雛形生成と依存導入、初回起動確認
- `docs/todo/new-project-flyonui/steps/01_bootstrap.md`: 初期雛形の整備（ファイル/ディレクトリ）
- `docs/todo/new-project-flyonui/steps/02_configure.md`: Nuxt/Tailwind/FlyonUI/ESLint/i18n 設定
- `docs/todo/new-project-flyonui/steps/03_sample_page.md`: サンプル画面の追加
- `docs/todo/new-project-flyonui/steps/04_arch_examples.md`: アーキテクチャ分離例
- `docs/todo/new-project-flyonui/steps/05_review_checklist.md`: 最終チェック
- `docs/todo/new-project-flyonui/ARCHITECTURE.md`: ディレクトリ論理構成と依存/データフロー

### リポジトリ構成

```text
.
├─ index.html
├─ LICENSE
└─ docs/
   └─ todo/
      └─ new-project-flyonui/
         ├─ README.md
         ├─ ARCHITECTURE.md
         ├─ AI_PROMPT_SINGLE.md
         └─ steps/
            ├─ 00_human_install.md
            ├─ 01_bootstrap.md
            ├─ 02_configure.md
            ├─ 03_sample_page.md
            ├─ 04_arch_examples.md
            └─ 05_review_checklist.md
```

### トラブルシューティング（抜粋）

- **ポート競合**: 既存プロセスを終了するか、ポートを変更（例: `npx kill-port 3000`）
- **依存関係の不整合**: `node_modules` と `package-lock.json` を削除して再インストール
- **Tailwind / FlyonUI が効かない**:
  - `assets/css/tailwind.css` に `@plugin "flyonui";` と `@plugin "@iconify/tailwind4";` があるか
  - JS コンポーネント利用時、`@import "flyonui/variants.css";` と `@source` の記載があるか
  - 参考: [Quick Start](https://flyonui.com/docs/getting-started/quick-start/), [Vue Integration](https://flyonui.com/docs/framework-integrations/vuejs/)

### 開発メモ（本ガイドの改修方法）

- 本ガイドは **ビルド不要の静的 HTML** です。`index.html` 内のスタイル（Tailwind CDN）とスクリプト（Vanilla JS）を編集します。
- セクションを増やす場合は `<section>` ブロックを追加し、サイドバーのアンカー（`.sidebar-link`）も合わせて増やしてください。
- コードスニペットのコピー機能は `.code-block` 要素に自動でボタンを付与しています。表示したいコードは `<pre><code>...</code></pre>` に入れてください。

### ライセンス

このリポジトリは **MIT License** のもとで公開されています。詳細は `LICENSE` を参照してください。

