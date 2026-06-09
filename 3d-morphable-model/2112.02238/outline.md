# Sphere Face Model: A 3D Morphable Model with Hypersphere Manifold Latent Space

- **作者**：Diqiong Jiang, Yiwei Jin, Fanglue Zhang, Zhe Zhu, Yun Zhang, Ruofeng Tong, Min Tang (2021)
- **arXiv**：https://arxiv.org/abs/2112.02238
- **PDF**：https://arxiv.org/pdf/2112.02238
- **分類**：cs.CV

## 綱要

### 研究問題
傳統 3DMM 形狀參數服從**多變量高斯分布**，但人臉**身分嵌入**服從**超球面分布**；此衝突使人臉重建難以同時兼顧保真度與形狀一致性。

### 方法
- 提出 **Sphere Face Model (SFM)**，用於單眼人臉重建。
- 核心是可重建 3D 形狀的 **basis matrix**，以兩階段訓練學得（第一階段用 3D 資料、第二階段用 2D 資料）。
- 設計新損失，使形狀參數落於**超球面潛空間**，化解分布不匹配。

### 核心發現
| 項目 | 內容 |
| --- | --- |
| 表徵力 | 高表徵能力 |
| 潛空間 | 形狀參數空間的聚類效能佳 |
| 重建 | 產生保真臉形，且在挑戰條件下單眼重建形狀一致 |

### 結論
SFM 是兼顧形狀保真與身分一致的單眼人臉重建 3DMM。

## 注意事項
- abstract 為定性描述，**未提供量化指標**；「高表徵力／聚類效能佳／保真」皆需全文數據佐證。
- 「超球面潛空間」的核心論點是為了對齊身分嵌入分布，引用時應與一般高斯 3DMM 區分。
