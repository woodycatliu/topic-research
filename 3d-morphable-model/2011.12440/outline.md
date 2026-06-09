# Building 3D Morphable Models from a Single Scan

- **作者**：Skylar Sutherland, Bernhard Egger, Joshua Tenenbaum (2020)
- **arXiv**：https://arxiv.org/abs/2011.12440
- **PDF**：https://arxiv.org/pdf/2011.12440
- **分類**：cs.CV, cs.GR

## 綱要

### 研究問題
傳統 3DMM 須以**多個高品質 3D 掃描 + PCA** 建構。能否僅從**單一 3D mesh／掃描**建出生成式 3DMM，並推廣到缺乏多掃描密集對應的物件類別？

### 方法
- 以**高斯過程（Gaussian processes）**表示形狀與 albedo。
- 形狀形變定義於物理（3D）空間；albedo 形變則結合物理空間與色彩空間形變。
- 可由單一掃描或範本建模，亦可納入多個掃描以提升效能（不需密集對應）。

### 核心發現
| 項目 | 內容 |
| --- | --- |
| 建模來源 | 單一掃描／範本即可建出 3DMM |
| 應用 | 2D inverse graphics 重建、3D registration |
| 人臉辨識 | 僅用單一 3D 掃描（全體共一個，非每人一個）即可進行 |
| 推廣性 | 另建魚、鳥等類別的 3DMM，做簡單 inverse rendering |

### 結論
在無法取得多掃描密集對應時也能建 3DMM，並可推廣至非人臉的 3D 物件類別。作者公開了程式碼。

## 注意事項
- abstract 未給人臉辨識準確率等量化數字；與傳統 PCA-based 3DMM 的精度差距需查全文。
- 「單一掃描即可」是相對於傳統多掃描法的賣點，但表達力上限是否因此受限，摘要未交代。
