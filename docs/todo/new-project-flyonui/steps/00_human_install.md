# Step 00 — Human Only: インストールと雛形作成（人間向け／FlyonUI 版）

目的: インタラクティブな初期セットアップを人間が実施し、AI は以降の構成・実装に専念できるようにする。FlyonUI と Iconify Tailwind プラグインを追加します。

## 前提

- OS: Windows（PowerShell）
- Node.js: LTS（推奨）

## 手順

1. 作業用ディレクトリへ移動

```bash
cd C:\dev
```

2. 新規ディレクトリ作成と移動

```bash
mkdir <NEW_PROJECT_NAME>
cd <NEW_PROJECT_NAME>
```

3. Nuxt 3 雛形の生成（対話ありの場合は人間が選択）

```bash
npm create nuxt@latest
```

- プロジェクト名: `<NEW_PROJECT_NAME>`
- Package manager: `npm`
- UI framework: `None`
- Server framework: `None`
- Nuxt modules: 後で追加（ここでは未選択）
- Linting: 任意（後で `@nuxt/eslint-config` を導入）
- Testing / E2E: なし
- DevTools: `Yes`

4. 依存関係の追加

ランタイム:
```bash
npm i pinia @pinia/nuxt @nuxtjs/i18n @headlessui/vue @heroicons/vue flyonui
```

開発:
```bash
npm i -D @nuxt/eslint-config eslint @nuxtjs/tailwindcss @iconify/tailwind4
```

5. 初回起動確認

```bash
npm run dev
```

ブラウザで http://localhost:3000 を開き、初期ページが表示されることを確認

6. ここまで終わったら、AI に Step 01 以降を実行させてください。

## 次のステップ

- Step 01 から AI に渡す（インストール済みを前提）

参考: [Introduction](https://flyonui.com/docs/getting-started/introduction/), [Quick Start](https://flyonui.com/docs/getting-started/quick-start/)
