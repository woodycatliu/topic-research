# Objectron: A Large Scale Dataset of Object-Centric Videos in the Wild with Pose Annotations

- **作者**：Adel Ahmadyan, Liangkai Zhang, Jianing Wei, Artsiom Ablavatski, Matthias Grundmann (Google, 2020；CVPR 2021)
- **arXiv**：https://arxiv.org/abs/2012.09988
- **PDF**：https://arxiv.org/pdf/2012.09988
- **分類**：cs.CV
- **資料/程式**：http://www.objectron.dev

## 綱要

### 研究問題
3D 物件偵測（機器人、AR、自駕、影像檢索）興起，但缺乏大規模、帶姿態標註的資料集。

### 方法
- 釋出 **Objectron 資料集**：object-centric 短影片 + 姿態標註。
- 提出新評估指標 **3D Intersection over Union (3D IoU)**。
- 提供在此資料集上訓練的 baseline 模型。

### 核心發現
| 項目 | 內容（abstract 確認） |
| --- | --- |
| 類別數 | 9 類 |
| 標註影像 | 4,000,000 張 |
| 標註影片 | 14,819 部 |
| 新指標 | 3D IoU |
| 延伸應用 | 3D 物件追蹤、view synthesis、3D 形狀表示 |

### 結論
Objectron 推進行動端/在地 3D 物件偵測研究，並提供標準資料集、指標與 baseline。

## 注意事項
- ⚠️ 這是**資料集論文**，不是單一偵測模型方法；標題易被誤植為「...Baseline for Spatiotemporal 3D Object Detection」。
- 引用時應定位為「資料集 + 評估指標 + baseline」，勿當成方法學 SOTA。
