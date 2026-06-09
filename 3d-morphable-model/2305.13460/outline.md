# 'Tax-free' 3DMM Conditional Face Generation

- **作者**：Yiwen Huang, Zhiqiu Yu, Xinjie Yi, Yue Wang, James Tompkin (2023)
- **arXiv**：https://arxiv.org/abs/2305.13460
- **PDF**：https://arxiv.org/pdf/2305.13460
- **分類**：cs.CV

## 綱要

### 研究問題
3DMM 條件式人臉生成具良好可控性，但**樣本品質較低**——如 DiscoFaceGAN、3D-FM GAN 與無條件 StyleGAN 之間存在顯著 FID 落差，暗示「可控性需付出品質稅」。可控與品質是否必然取捨？

### 方法
- **數學形式化** 3DMM 條件式人臉生成問題，定位先前方法的問題所在。
- 在所提框架下設計**簡單解法**。

### 核心發現
| 項目 | 內容 |
| --- | --- |
| 結果 | 新模型有效消除 3DMM 條件式 GAN 與無條件 StyleGAN 之間的「品質稅」(FID gap) |
| 論點 | 挑戰「品質與可控性無法並存」的假設 |

### 結論
可控性與生成品質可並存；以正確的問題形式化即可移除品質稅。

## 注意事項
- 具體 FID 數字 abstract 未列，**待全文補充，勿臆造**。
- 基於 GAN（對照 StyleGAN）框架，與 diffusion-based 條件生成路線不同。
