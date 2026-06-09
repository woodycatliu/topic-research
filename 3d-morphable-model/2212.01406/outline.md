# ClipFace: Text-guided Editing of Textured 3D Morphable Models

- **作者**：Shivangi Aneja, Justus Thies, Angela Dai, Matthias Nießner (2022)
- **arXiv**：https://arxiv.org/abs/2212.01406
- **PDF**：https://arxiv.org/pdf/2212.01406
- **分類**：cs.CV, cs.GR

## 綱要

### 研究問題
3DMM 幾何表達力強，但**可控性與紋理表達有限**。能否用**文字提示**控制帶紋理 3D 臉的表情與外觀？

### 方法
- 自監督生成模型，聯合合成**有表情、帶紋理、可 articulate** 的 3D 臉。
- **對抗式自監督訓練** + 可微渲染，對齊真實 RGB 影像集合，生成高品質紋理。
- 以預訓練 **CLIP** 模型的損失做語言引導，控制紋理與表情。
- 網路一次前向即預測 UV 空間紋理 + 表情 latent code。

### 核心發現
| 項目 | 內容 |
| --- | --- |
| 控制方式 | 文字提示編輯表情與外觀 |
| 輸出 | UV 紋理 + 表情參數（單次前向） |
| 延伸 | 可為給定動畫序列生成隨時間變化的紋理 |

### 結論
ClipFace 以文字引導編輯帶紋理 3DMM，於單次前向同時取得幾何與紋理變化。

## 注意事項
- 依賴預訓練 CLIP 先驗，編輯能力受 CLIP 語意空間限制。
- abstract 未提供量化品質指標（FID 等），**待全文補充**。
