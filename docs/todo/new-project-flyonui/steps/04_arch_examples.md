# Step 04 — Architecture Examples（AI 向けプロンプト／FlyonUI 版）

目的: サービス層/プラグイン層の分離例を追加し、規模拡大時の拡張性を示す。FlyonUI の利用有無に依存しないため、構成は従来と同一。

## 指示

- `services/api.ts`: fetch ラッパ（エンドポイントはダミー）
- `plugins/api.client.ts`: 依存注入で `$api` を提供
- `composables/useApi.ts`: API 呼び出しのための補助関数
- サンプルページから `$api` を用いるコード例を追加

### タスク

1. `services/api.ts`

- `get`, `post` の薄いラッパを用意（`fetch` ベース）

2. `plugins/api.client.ts`

- Nuxt プラグインとして `$api` を `nuxtApp.provide('api', api)` する
- 型補助コメントを記載

3. `composables/useApi.ts`

- `const api = useNuxtApp().$api` を返す薄いフック

4. 利用例

- `pages/index.vue` でクリック時にダミー `GET /health` を呼び、レスポンスをトースト表示

### 成果物

- 依存注入経由でサービス層を呼べることが確認できる
