# BlazeFace: Sub-millisecond Neural Face Detection on Mobile GPUs

- **作者**：Valentin Bazarevsky, Yury Kartynnik, Andrey Vakunov, Karthik Raveendran, Matthias Grundmann (Google, 2019)
- **arXiv**：https://arxiv.org/abs/1907.05047
- **PDF**：https://arxiv.org/pdf/1907.05047
- **分類**：cs.CV
- **查證來源**：arXiv 官方頁（本 arXiv MCP 後端未收錄此 ID，改以 WebFetch 查證）

## 綱要

### 研究問題
AR pipeline 需要**準確的人臉 ROI** 作為下游任務（2D/3D 臉部關鍵點或幾何估計、表情分類、臉部分割）的輸入。如何在**手機 GPU** 上做超即時人臉偵測？

### 方法
- **輕量特徵萃取網路**：受 MobileNetV1/V2 啟發但有別於它。
- **GPU-friendly anchor scheme**：改自 Single Shot MultiBox Detector (SSD)。
- **改良的 tie resolution 策略**：取代 non-maximum suppression (NMS)。

### 核心發現
| 項目 | 內容（abstract 確認） |
| --- | --- |
| 速度 | 旗艦機 **200–1000+ FPS**（次毫秒級） |
| 定位 | 為任何 AR pipeline 提供準確臉部 ROI 的前端偵測器 |
| 三項貢獻 | 輕量特徵網路、GPU-friendly anchor、改良 tie resolution |

### 結論
BlazeFace 是超即時的手機端人臉偵測器，作為下游臉部任務的前置模組。

## 注意事項
- 這是**偵測器**（輸出臉部 ROI / bbox），**不是** landmark 或 3D geometry 本身——在人臉建模 pipeline 屬「最前端」。
- 技術報告型論文，abstract 未給精度（mAP/AP）數字；anchor 設計與 tie resolution 細節需查全文。
- **本庫定位**：手機端相機人臉建模 pipeline 的「偵測前端」，下游接 Face Mesh（`1907.06724`）與 3DMM 擬合。
