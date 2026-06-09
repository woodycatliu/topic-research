# Towards High-Fidelity 3D Face Reconstruction from In-the-Wild Images Using Graph Convolutional Networks

- **作者**：Jiangke Lin, Yi Yuan, Tianjia Shao, Kun Zhou (2020)
- **arXiv**：https://arxiv.org/abs/2003.05653
- **PDF**：https://arxiv.org/pdf/2003.05653
- **分類**：cs.CV

## 綱要

### 研究問題
3DMM-based 方法能恢復 3D 臉形，但**紋理保真度不足**；近期高品質紋理法需依賴大規模、高解析的 UV map 資料庫（難準備且未公開）。能否不靠大型紋理庫，從 in-the-wild 單張影像重建高保真紋理？

### 方法
- 以 3DMM-based 方法產生初始紋理，再用**輸入影像的臉部細節精修**。
- 關鍵：用**圖卷積網路(GCN)** 重建 **mesh 頂點的細節顏色**，而非重建 UV map。

### 核心發現
| 項目 | 內容 |
| --- | --- |
| 資料需求 | 不需大規模臉部紋理資料庫 |
| 輸入 | in-the-wild 單視角影像 |
| 表現 | 質化與量化比較均優於 SOTA（具體數字待全文補充） |

### 結論
以 GCN 在頂點層級重建細節顏色，達成 in-the-wild 高保真臉部紋理重建。

## 注意事項
- 「優於 SOTA」之量化指標 abstract 未列，**待全文補充**。
- 重建的是頂點顏色而非 UV map，與多數紋理重建路線不同，引用時應區分。
