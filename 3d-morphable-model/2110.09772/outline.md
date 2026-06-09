# Synergy between 3DMM and 3D Landmarks for Accurate 3D Facial Geometry (SynergyNet)

- **作者**：Cho-Ying Wu, Qiangeng Xu, Ulrich Neumann (2021)
- **arXiv**：https://arxiv.org/abs/2110.09772
- **PDF**：https://arxiv.org/pdf/2110.09772
- **專案頁**：https://choyingw.github.io/works/SynergyNet/
- **分類**：cs.CV, cs.GR

## 綱要

### 研究問題
能否讓 **3DMM 參數**與 **3D 臉部 landmark** 互相回饋，以更準確地預測完整 3D 臉部幾何（3D alignment、臉部朝向、3D 建模）？

### 方法
- 建立 3DMM 參數與 3D landmark 之間的**表徵循環（representation cycle）**：
  - 由 3DMM 參數建 mesh，再萃取並精修 3D landmark。
  - 反向：由稀疏 3D landmark 預測 3DMM 參數，改善資訊流。
- 僅採用簡單、常用的網路運算，以求快速且準確。

### 核心發現
| 項目 | 內容 |
| --- | --- |
| 任務涵蓋 | 3D alignment、face orientation、3D face modeling 全任務 |
| 表現 | 在多種情境下表現優越且穩健（具體數字待全文補充） |
| 效率 | 以簡單運算達快速推論 |

### 結論
利用 3D landmark 與 3DMM 參數的關係形成協同流程，兩者互補貢獻更佳效能。

## 注意事項
- 具體 NME／對齊誤差等數字 abstract 未列，**待全文補充**。
- 程式碼與資料見專案頁；引用效能時以全文表格為準。
