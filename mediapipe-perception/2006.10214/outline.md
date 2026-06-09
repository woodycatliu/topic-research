# MediaPipe Hands: On-device Real-time Hand Tracking

- **作者**：Fan Zhang, Valentin Bazarevsky, Andrey Vakunov, ... Matthias Grundmann (Google, 2020)
- **arXiv**：https://arxiv.org/abs/2006.10214
- **PDF**：https://arxiv.org/pdf/2006.10214
- **分類**：cs.CV
- **開源**：https://mediapipe.dev

## 綱要

### 研究問題
如何用**單一 RGB 相機**在行動端做**即時手部追蹤**（供 AR/VR 應用）？

### 方法
- 兩段式管線：
  1. **palm detector**（手掌邊界框偵測）
  2. **hand landmark model**（手部關鍵點預測）
- 以 MediaPipe 框架實作，跨平台。

### 核心發現
| 項目 | 內容 |
| --- | --- |
| 架構 | palm detector + hand landmark 兩模型管線 |
| 效能 | 行動 GPU 上即時推論、高預測品質（abstract 為定性描述） |
| 關鍵點數 | 一般認知為 21 個手部關節 3D 座標，**惟 abstract 未明述，待全文確認** |

### 結論
提出開源的 on-device 即時手部骨架追蹤管線。

## 注意事項
- ⚠️ **標題易誤植**：正式名為 *MediaPipe Hands: On-device Real-time Hand Tracking*（非「On-Device, Real-Time Hand Tracking with MediaPipe」）。
- 「21 個 3D 關鍵點」雖為常見描述，但**不在 abstract 內**——引用該數字前須查全文，勿憑記憶填入。
- 證據層級：Google 工程團隊技術報告。
