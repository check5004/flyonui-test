# Step 03 — Sample Page（AI 向けプロンプト／FlyonUI 版）

目的: シンプルなトップ画面を 1 枚作成し、UI 分離（ボタン、トースト）と i18n 切替を例示。FlyonUI のセマンティッククラス（`btn` など）を使用します。

## 指示

- `layouts/default.vue`: ベースレイアウト
- `pages/index.vue`: FlyonUI の `btn` を用いたボタン＋シンプルトースト
- `components/ui/AppButton.vue`: 汎用ボタン（`btn`, `btn-primary` など）
- `components/ui/Toast.vue`: シンプルトースト
- `stores/toast.ts`: Pinia でトースト状態管理

### タスク

1. レイアウト

- ヘッダ（タイトル、言語切替ボタン ja/en）/ メイン / フッタ

2. トースト状態管理

- `message` と `visible` を管理し、`show(message, timeoutMs=2000)` で表示 → 自動消去

3. UI コンポーネント

- `AppButton.vue`: `variant`（primary/secondary）と `size`（sm/md）を FlyonUI のクラスで表現（例: `btn`, `btn-primary`, `btn-secondary`, `btn-sm`）
- `Toast.vue`: 固定右上表示、フェードアニメーション

4. ページ

- ボタン押下で `show('保存しました')` を呼び出し
- 文言は i18n から取得（ja/en）
- FlyonUI と Tailwind ユーティリティを併用

### 成果物

- `npm run dev` でサンプル画面が動作し、トーストと i18n 切替が確認できる

参考: [Usage](https://flyonui.com/docs/getting-started/usage/), [Components](https://flyonui.com/docs/components/button/)
