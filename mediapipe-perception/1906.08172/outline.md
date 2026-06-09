# MediaPipe: A Framework for Building Perception Pipelines

- **作者**：Camillo Lugaresi, Jiuqiang Tang, Hadon Nash, ... Matthias Grundmann (Google, 2019)
- **arXiv**：https://arxiv.org/abs/1906.08172
- **PDF**：https://arxiv.org/pdf/1906.08172
- **分類**：cs.DC
- **開源**：https://github.com/google/mediapipe

## 綱要

### 研究問題
打造會「感知世界」的應用很難：需 (a) 選擇/開發 ML 演算法與模型、(b) 做原型與 demo、(c) 在資源消耗與品質間取捨、(d) 找出並緩解問題案例。如何用單一框架涵蓋這些挑戰？

### 方法
- 提出 **MediaPipe** 框架：以組合既有感知元件來建原型，再推進為打磨後的跨平台應用。
- 可在目標平台上量測系統效能與資源消耗。
- （框架核心概念 Graph / Calculator / Packet、CPU-GPU 協同、時間序列同步——abstract 未展開，需全文。）

### 核心發現
| 項目 | 內容 |
| --- | --- |
| 定位 | 跨平台、多模態 ML 管線框架 |
| 價值 | 讓開發者專注演算法/模型，迭代改進應用 |
| 可重現性 | 結果可在不同裝置與平台間重現 |

### 結論
MediaPipe 提供從原型到跨平台應用的一致開發環境，並開源。

## 注意事項
- 這是**工程框架論文（cs.DC）**，非 ML 方法學論文；引用時勿當成某演算法的精度來源。
- abstract 未給延遲/吞吐等量化數字；Packet/Graph/Calculator 設計、時間同步機制需查全文。
- 證據層級：Google 工程團隊技術報告，偏系統說明。
