# BlazePose: On-device Real-time Body Pose tracking

- **作者**：Valentin Bazarevsky, Ivan Grishchenko, Karthik Raveendran, Tyler Zhu, Fan Zhang, Matthias Grundmann (Google, 2020)
- **arXiv**：https://arxiv.org/abs/2006.10204
- **PDF**：https://arxiv.org/pdf/2006.10204
- **分類**：cs.CV

## 綱要

### 研究問題
如何在行動裝置上做**即時**人體姿態估計？

### 方法
- 輕量 CNN 架構，專為行動裝置即時推論設計。
- 同時使用 **heatmap 與回歸到關鍵點座標**兩種方式。
- 提出新的人體姿態追蹤方案 + 輕量姿態估計網路。

### 核心發現
| 項目 | 內容（abstract 確認） |
| --- | --- |
| 關鍵點數 | 單人 **33 個 body keypoints** |
| 速度 | 在 **Pixel 2** 手機上 **>30 fps** |
| 適用場景 | fitness tracking、手語辨識等即時用例 |

### 結論
BlazePose 是適合行動端即時推論的輕量人體姿態估計方案。

## 注意事項
- **技術報告型論文**，abstract 未給精度指標（PCK/mAP 等），與其他方法的數值比較需查全文。
- 「33 keypoints / Pixel 2 >30 fps」已由 abstract 證實，可放心引用。
- 證據層級：Google 工程團隊報告，偏系統/產品說明，缺嚴謹消融。
