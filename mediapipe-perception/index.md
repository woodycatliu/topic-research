# MediaPipe Perception — 已存檔論文清單

> 主題範圍：Google MediaPipe 的**行動端即時感知管線框架**與其輕量化模型解決方案。
> 與 `3d-morphable-model`（統計形狀建模）為不同領域，刻意分開；但人臉這條線兩者互補（見 `synthesis/`）。

## 框架
| arXiv ID | 作者 — *篇名* (年份) | 收藏日期 |
| --- | --- | --- |
| [1906.08172](1906.08172/outline.md) | Lugaresi et al. — *MediaPipe: A Framework for Building Perception Pipelines* (2019) | 2026-06-09 |

## 人臉相關（與手機端人臉建模目標直接相關）
| arXiv ID | 作者 — *篇名* (年份) | 收藏日期 |
| --- | --- | --- |
| [1907.05047](1907.05047/outline.md) | Bazarevsky et al. — *BlazeFace: Sub-millisecond Neural Face Detection on Mobile GPUs* (2019) | 2026-06-09 |
| [1907.06724](1907.06724/outline.md) | Kartynnik et al. — *Real-time Facial Surface Geometry from Monocular Video on Mobile GPUs (Face Mesh)* (2019) | 2026-06-09 |

## 其他輕量模型（身體 / 手 / 物件）
| arXiv ID | 作者 — *篇名* (年份) | 收藏日期 |
| --- | --- | --- |
| [2006.10204](2006.10204/outline.md) | Bazarevsky et al. — *BlazePose: On-device Real-time Body Pose tracking* (2020) | 2026-06-09 |
| [2006.10214](2006.10214/outline.md) | Zhang et al. — *MediaPipe Hands: On-device Real-time Hand Tracking* (2020) | 2026-06-09 |
| [2012.09988](2012.09988/outline.md) | Ahmadyan et al. — *Objectron: Large Scale Dataset of Object-Centric Videos with Pose Annotations* (2020, CVPR 2021) | 2026-06-09 |

## 綜述（synthesis）
- [手機端相機人臉建模：感知前端 × 3DMM 後端](synthesis/mobile-face-modeling-pipeline.md) — 串接本主題與 `3d-morphable-model`，實作前的 pipeline 知識地圖。

## 捨棄
- 見 [`rejected/index.md`](rejected/index.md)（目前無項目）。
