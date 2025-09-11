# Step 02 — Configure（AI 向けプロンプト／FlyonUI 版）

目的: Nuxt 設定、Tailwind+FlyonUI、ESLint、i18n を設定して既存プロジェクト相当の基礎を整える。

## 指示

- `nuxt.config.ts` を作成/更新
- Tailwind を `@nuxtjs/tailwindcss` で導入し、FlyonUI を CSS プラグインとして有効化
- i18n を `@nuxtjs/i18n` で導入（ja/en）
- ESLint を `@nuxt/eslint-config` ベースに設定

### タスク

1. `nuxt.config.ts`

- `modules: ['@pinia/nuxt', '@nuxtjs/i18n', '@nuxtjs/tailwindcss']`
- `devtools: { enabled: true }`
- `i18n` 設定: `locales: ['ja', 'en']`, `defaultLocale: 'ja'`
- CSS を取り込む（どちらか）
  - `css: ['~/assets/css/tailwind.css']` を追加
  - または `app.vue` で `~/assets/css/tailwind.css` を読み込み

2. Tailwind + FlyonUI

- `tailwind.config.js` を生成（必要最小限で可）
- `content` は `components`, `layouts`, `pages`, `plugins`, `app.vue`, `error.vue`
- `assets/css/tailwind.css` を作成し、以下を記述

```
@import "tailwindcss";
@plugin "flyonui";
@plugin "@iconify/tailwind4";
@import "flyonui/variants.css"; /* JS コンポーネントを使う場合に必要 */

@source "./node_modules/flyonui/dist/index.js"; /* JS コンポーネントを使う場合に必要 */
```

- 既存プロジェクトの色/フォント/spacing の一部を引用（必要最小限）

3. ESLint

- `eslint` を `@nuxt/eslint-config` に基づいて設定
- `npm run lint` が通るように調整

4. スクリプト

- `package.json` の scripts を確認し、`dev`, `build`, `preview`, `postinstall: nuxt prepare` を揃える

### 成果物

- `npm run dev` が起動し、Tailwind と FlyonUI と i18n が有効

参考: [Quick Start](https://flyonui.com/docs/getting-started/quick-start/), [Vue Integration](https://flyonui.com/docs/framework-integrations/vuejs/)
