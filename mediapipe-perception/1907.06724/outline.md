# Real-time Facial Surface Geometry from Monocular Video on Mobile GPUs (MediaPipe Face Mesh)

- **作者**：Yury Kartynnik, Artsiom Ablavatski, Ivan Grishchenko, Matthias Grundmann (Google, 2019)
- **arXiv**：https://arxiv.org/abs/1907.06724
- **PDF**：https://arxiv.org/pdf/1907.06724
- **分類**：cs.CV
- **查證來源**：arXiv 官方頁（本 arXiv MCP 後端未收錄此 ID，改以 WebFetch 查證）

## 綱要

### 研究問題
如何從**單相機輸入**即時推出近似的 **3D 臉部 mesh**，供 AR 應用使用？

### 方法
- end-to-end 神經網路模型，由單張相機影像推論臉部 3D mesh 表示。
- 輸出相對稠密的 **468 頂點** mesh，適合 face-based AR 效果。

### 核心發現
| 項目 | 內容（abstract 確認） |
| --- | --- |
| mesh 密度 | **468 個頂點** |
| 速度 | 手機 GPU 上 **100–1000+ FPS**（super-realtime，依裝置與模型變體而定） |
| 品質 | 與「同一影像人工標註的變異程度」相當 |

### 結論
提供手機端即時、AR 適用的臉部表面幾何估計。

## 注意事項
- ⚠️ **這是固定拓樸的 canonical mesh 回歸（468 點），不是統計 3DMM**：沒有低維的身分/表情/紋理基底，給的是「臉表面長在哪」，不是「可參數化係數」。選型時這點與 3DMM 主題的方法是互補而非等價。
- abstract 自述為「**approximate** 3D mesh」；技術報告型論文，未提供與其他方法的數值比較。
- **本庫定位**：人臉建模 pipeline 的「臉部幾何/landmark 前端」，上接 BlazeFace（`1907.05047`）偵測、下游可作為 3DMM 擬合（如 SynergyNet `2110.09772`）的約束。
