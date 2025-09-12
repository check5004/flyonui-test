# FlyonUI 対話型セットアップガイド

![FlyonUI](https://img.shields.io/badge/FlyonUI-Tailwind%20CSS%20Framework-blue)
![Nuxt 3](https://img.shields.io/badge/Nuxt-3.x-00C58E)
![License](https://img.shields.io/badge/License-MIT-green)

Windows環境でNuxt.js 3とUIフレームワーク「FlyonUI」を使用して、新しいフロントエンドプロジェクトを効率的に立ち上げるための包括的なガイドです。

## 📋 目次

- [概要](#概要)
- [技術スタック](#技術スタック)
- [プロジェクト構成](#プロジェクト構成)
- [クイックスタート](#クイックスタート)
- [対話型セットアップガイド](#対話型セットアップガイド)
- [段階的セットアップ](#段階的セットアップ)
- [アーキテクチャ](#アーキテクチャ)
- [トラブルシューティング](#トラブルシューティング)
- [貢献](#貢献)
- [ライセンス](#ライセンス)

## 🎯 概要

このプロジェクトは、開発者がWindows環境で効率的にモダンなフロントエンドアプリケーションを構築できるように設計された、包括的なセットアップガイドです。

### 主な特徴

- **対話型ガイド**: ブラウザ上で実行できるインタラクティブなセットアップ手順
- **段階的アプローチ**: 確実に進められる詳細なステップバイステップガイド
- **AI支援**: AIアシスタントによる自動化されたセットアップオプション
- **Windows最適化**: Windows環境での開発に特化した設定

## 🛠 技術スタック

### フロントエンド
- **[Nuxt 3](https://nuxt.com/)** - Vue.jsベースのフルスタックフレームワーク
- **[FlyonUI](https://flyonui.com/)** - Tailwind CSSベースのUIコンポーネントライブラリ
- **[Tailwind CSS](https://tailwindcss.com/)** - ユーティリティファーストのCSSフレームワーク

### 状態管理・機能
- **[Pinia](https://pinia.vuejs.org/)** - Vue.js用の直感的な状態管理ライブラリ
- **[@nuxtjs/i18n](https://i18n.nuxtjs.org/)** - 国際化対応
- **[HeadlessUI](https://headlessui.com/)** - アクセシブルなUIコンポーネント
- **[Heroicons](https://heroicons.com/)** - 美しいSVGアイコンセット

### 開発ツール
- **[ESLint](https://eslint.org/)** - コード品質管理
- **[@iconify/tailwind4](https://iconify.design/)** - アイコンシステム

## 📁 プロジェクト構成

```
/
├── docs/                           # ドキュメント
│   └── todo/
│       └── new-project-flyonui/
│           ├── README.md           # プロジェクト概要
│           ├── ARCHITECTURE.md     # アーキテクチャ設計
│           ├── AI_PROMPT_SINGLE.md # AI一括実行用プロンプト
│           └── steps/              # 段階的セットアップ手順
│               ├── 00_human_install.md
│               ├── 01_bootstrap.md
│               ├── 02_configure.md
│               ├── 03_sample_page.md
│               ├── 04_arch_examples.md
│               └── 05_review_checklist.md
├── index.html                      # 対話型セットアップガイド
├── LICENSE                         # MITライセンス
└── README.md                       # このファイル
```

## 🚀 クイックスタート

### 前提条件

- **OS**: Windows 10/11
- **Node.js**: LTS版 (v18.x, v20.x推奨)
- **ターミナル**: PowerShell または コマンドプロンプト

### インストール手順

1. **対話型ガイドの起動**
   ```bash
   # プロジェクトをクローン
   git clone <repository-url>
   cd <project-directory>
   
   # 対話型ガイドを開く
   start index.html
   ```

2. **ブラウザでの操作**
   - `index.html`をブラウザで開く
   - サイドバーのナビゲーションに従って手順を実行
   - コードブロックの「Copy」ボタンでコマンドを簡単にコピー

## 🖥 対話型セットアップガイド

`index.html`は、フルスタックの対話型セットアップ体験を提供します：

### 機能
- **ステップバイステップナビゲーション**: 左サイドバーで進捗を追跡
- **アコーディオンUI**: 各ステップの詳細を展開/折りたたみ
- **ワンクリックコピー**: すべてのコマンドにコピーボタンを配置
- **レスポンシブデザイン**: デスクトップとモバイルの両方に対応
- **プログレス追跡**: 現在のセクションをハイライト表示

### セクション構成

1. **はじめに** - プロジェクト概要と技術スタック
2. **前提条件** - 必要なソフトウェアと環境
3. **プロジェクトセットアップ** - Nuxtプロジェクトの作成
4. **各種設定** - 設定ファイルの構成
5. **サンプルページ作成** - 基本的なページとコンポーネント
6. **最終確認** - 動作確認とトラブルシューティング

## 📚 段階的セットアップ

より確実で詳細なセットアップを希望する場合は、`docs/todo/new-project-flyonui/steps/`の段階的ガイドを使用してください。

### ステップ概要

| ステップ | ファイル | 担当 | 内容 |
|---------|---------|------|------|
| 00 | `00_human_install.md` | 人間 | Nuxt雛形作成、依存関係インストール |
| 01 | `01_bootstrap.md` | AI | ディレクトリ構造とプレースホルダー作成 |
| 02 | `02_configure.md` | AI | Nuxt設定、Tailwind+FlyonUI、ESLint設定 |
| 03 | `03_sample_page.md` | AI | サンプルページとUIコンポーネント作成 |
| 04 | `04_arch_examples.md` | AI | サービス層とプラグイン層の実装例 |
| 05 | `05_review_checklist.md` | AI/人間 | 最終確認とテスト |

### AI支援オプション

`AI_PROMPT_SINGLE.md`を使用することで、Step 01-05をAIアシスタントに一括実行させることができます。

## 🏗 アーキテクチャ

### ディレクトリ構成（生成後）

```
my-flyonui-project/
├── components/
│   └── ui/
│       ├── AppButton.vue
│       └── Toast.vue
├── layouts/
│   └── default.vue
├── pages/
│   └── index.vue
├── stores/
│   └── toast.ts
├── plugins/
│   └── api.client.ts
├── services/
│   └── api.ts
├── composables/
│   └── useApi.ts
├── middleware/
├── assets/
│   └── css/
│       └── tailwind.css
├── nuxt.config.ts
├── tailwind.config.js
└── package.json
```

### 設計原則

- **レイヤー分離**: UI、状態管理、サービス、プラグインの明確な分離
- **依存注入**: Nuxtプラグインシステムを活用したサービス提供
- **コンポーネント指向**: 再利用可能なUIコンポーネントの設計
- **国際化対応**: 多言語サポートの組み込み

### FlyonUI統合

```css
/* assets/css/tailwind.css */
@import "tailwindcss";
@plugin "flyonui";
@plugin "@iconify/tailwind4";
@import "flyonui/variants.css";
@source "./node_modules/flyonui/dist/index.js";
```

## 🔧 トラブルシューティング

### よくある問題と解決方法

#### 依存関係の問題
```bash
# node_modulesとpackage-lock.jsonを削除して再インストール
rm -rf node_modules package-lock.json
npm install
```

#### ポート競合
```bash
# ポート3000を使用しているプロセスを終了
npx kill-port 3000
```

#### Tailwind/FlyonUIが効かない場合
1. `assets/css/tailwind.css`の設定を確認
2. `@plugin "flyonui"`が記載されているか確認
3. `nuxt.config.ts`でCSS取り込み設定を確認

#### Windows固有の問題
- PowerShellの実行ポリシー設定
- パスの区切り文字（`\` vs `/`）
- 文字エンコーディング（UTF-8推奨）

### 参考リンク
- [FlyonUI公式ドキュメント](https://flyonui.com/docs/)
- [Nuxt 3ドキュメント](https://nuxt.com/docs)
- [Tailwind CSSドキュメント](https://tailwindcss.com/docs)

## 🎨 カスタマイズ

### テーマのカスタマイズ
`tailwind.config.js`でカスタムテーマを設定：

```javascript
export default {
  theme: {
    extend: {
      colors: {
        primary: {
          50: '#eff6ff',
          500: '#3b82f6',
          900: '#1e3a8a',
        }
      }
    }
  }
}
```

### コンポーネントの拡張
FlyonUIコンポーネントをベースに独自コンポーネントを作成：

```vue
<!-- components/ui/MyButton.vue -->
<template>
  <button class="btn btn-primary custom-button">
    <slot />
  </button>
</template>
```

## 🤝 貢献

プロジェクトへの貢献を歓迎します！

### 貢献方法
1. このリポジトリをフォーク
2. 機能ブランチを作成 (`git checkout -b feature/amazing-feature`)
3. 変更をコミット (`git commit -m 'Add amazing feature'`)
4. ブランチにプッシュ (`git push origin feature/amazing-feature`)
5. プルリクエストを作成

### 報告・提案
- バグレポート: [Issues](../../issues)
- 機能提案: [Discussions](../../discussions)
- 質問: [Q&A](../../discussions/categories/q-a)

## 📄 ライセンス

このプロジェクトは[MIT License](LICENSE)の下で公開されています。

---

## 🔗 関連リンク

- [FlyonUI公式サイト](https://flyonui.com/)
- [Nuxt 3公式サイト](https://nuxt.com/)
- [Tailwind CSS公式サイト](https://tailwindcss.com/)
- [Vue.js公式サイト](https://vuejs.org/)

---

**作成者**: check5004  
**最終更新**: 2025年9月12日

---

> 💡 **ヒント**: 初回セットアップでは`index.html`の対話型ガイドから始めることをお勧めします。より詳細な制御が必要な場合は、段階的セットアップを使用してください。