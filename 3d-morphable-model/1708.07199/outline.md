# 3D Morphable Models as Spatial Transformer Networks

- **作者**：Anil Bas, Patrik Huber, William A. P. Smith, Muhammad Awais, Josef Kittler (2017)
- **arXiv**：https://arxiv.org/abs/1708.07199
- **PDF**：https://arxiv.org/pdf/1708.07199
- **分類**：cs.CV, cs.LG

## 綱要

### 研究問題
能否把 3DMM（一類物件 3D 形狀的統計模型）當成 CNN 內部的一個**可微空間轉換模組**，用來解釋並正規化 3D 姿態變化與自我遮擋？

### 方法
- 提出 **3DMM-STN**：將 3DMM 作為模組嵌入 Spatial Transformer Network，是原始 STN 的延伸。
- 網路中的 localiser 學習把 3DMM 擬合到**單張影像**。
- 僅用**簡單的幾何損失函數**、在相對小的資料集上訓練。

### 核心發現
| 項目 | 內容 |
| --- | --- |
| 能力 | 可解釋並正規化 3D 姿態與自我遮擋 |
| 魯棒性 | 對遮擋、自我遮擋、大姿態變化的高度不受控影像仍能穩健正規化 |
| 副產物 | 訓練後的 localiser 可獨立用於「單張影像擬合 3DMM」 |

### 結論
3DMM 可作為 CNN 中的可微模組（3DMM-STN），且 localiser 部分本身即為實用的單張影像 3DMM 擬合器。

## 注意事項
- 屬**概念驗證**性質；abstract 未提供量化基準（誤差、與其他方法的數值比較）。
- 「簡單幾何損失」的具體形式與資料集規模需查全文，勿憑摘要外推。
