# Beyond 3DMM: Learning to Capture High-fidelity 3D Face Shape

- **作者**：Xiangyu Zhu, Chang Yu, Di Huang, Zhen Lei, Hao Wang, Stan Z. Li (2022)
- **arXiv**：https://arxiv.org/abs/2204.04379
- **PDF**：https://arxiv.org/pdf/2204.04379
- **分類**：cs.CV

## 綱要

### 研究問題
3DMM 擬合受限於：細節幾何流失（GT 3D 形狀不足、訓練策略不可靠、3DMM 表達力有限）。如何捕捉**個人化、與本人一致**的高保真臉形？

### 方法
- 給定單張 2D 影像，在多個**校準視角**虛擬渲染，正規化姿態變化同時保留原影像幾何。
- 以 **many-to-one hourglass 網路**作編解碼，融合多視角特徵、產生 **vertex displacement** 作為細節幾何。
- 直接**優化視覺效果**：以兩形狀多視角渲染影像的相似度衡量形狀差異。
- 以 RGB-D 影像 registration + 姿態/形狀增強生成 GT 3D 形狀，供訓練。

### 核心發現
| 項目 | 內容 |
| --- | --- |
| 重建精度 | 在多個挑戰性協定上優於 SOTA（具體數字待全文補充） |
| 關鍵貢獻 | 多視角虛擬渲染正規化 + vertex displacement + 視覺效果直接優化 + GT 生成流程 |

### 結論
提出完整方案捕捉個人化臉形，使重建結果在視覺上與本人一致。

## 注意事項
- 「優於 SOTA」之具體 metric 數字 abstract 未列，**待全文補充，勿臆造**。
- 依賴 RGB-D 影像生成 GT，資料取得成本與泛化性需留意。
