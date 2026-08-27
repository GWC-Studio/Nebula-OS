# 🔧 Nebula AI 安装指南

> **🚧 开发中**
>
> Nebula AI 目前仍在开发阶段，v0.1 Alpha 预计于 **2026 年 9 月**发布，届时本页面将补充完整的安装步骤。

---

## 系统要求（预计）

| 项目 | 要求 |
|:---|:---|
| 发行版 | Debian 12+ / Ubuntu 24.04+ |
| 桌面环境 | KDE Plasma（推荐）或其他桌面均可 |
| 架构 | amd64 |
| WebView 依赖 | 需安装 `libqt6webenginecore6` 等 Qt WebEngine 依赖（随 .deb 自动解决） |

---

## 安装方式（待发布）

### .deb 包（计划）

```bash
# 占位——发布后替换为可用的下载地址
wget https://github.com/GWC-Studio/Nebula-AI/releases/download/v0.1-alpha/nebula-ai.deb
sudo apt install ./nebula-ai.deb
```

### 从源码运行（开发者预览）

```bash
git clone https://github.com/GWC-Studio/Nebula-AI
cd Nebula-AI
pip install -r requirements.txt
python -m nebula_ai
```

---

## 安装后验证

发布后补充：

```bash
# 占位
nebula-ai --version
```

---

## 卸载

发布后补充：

```bash
sudo apt remove nebula-ai
```

---

## 更新日志

| 版本 | 状态 |
|:---|:---|
| v0.1-alpha | 🚧 计划中（2026-09） |

有任何建议请前往 [Issue](https://github.com/GWC-Studio/Nebula-AI/issues) 反馈。