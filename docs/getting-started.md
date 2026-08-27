# 🚀 快速开始

本节引导你完成 Nebula-OS 生态各组件的安装。建议按需安装，不需要全部装齐。

> 系统要求：Debian Testing/12+ 或 Ubuntu 24.04+，KDE Plasma 5.27+（或 6.x），amd64 架构。

---

## 1. 从哪个组件开始？

| 你的需求 | 推荐组件 |
|:---|:---|
| 想让桌面更好看、更顺手 | [Nebula Theme](#安装主题包) |
| 想提升游戏帧率和流畅度 | [Nebula Gaming Optimizer](#安装游戏优化包) |
| 想要一个常驻的 AI 聊天助手 | Nebula AI *（开发中，即将发布）* |

---

## 2. 安装主题包

### 通过 .deb 包安装（推荐）

```bash
# KDE Plasma 5
wget https://github.com/GWC-Studio/Nebula-Theme_For_KDE-Plasma/releases/download/Beta/nebula-theme_0.1_all.deb
sudo apt install ./nebula-theme_0.1_all.deb

# KDE Plasma 6
wget https://github.com/GWC-Studio/Nebula-Theme_For_KDE-Plasma/releases/download/Beta/nebula-theme-kde6_0.1_all.deb
sudo apt install ./nebula-theme-kde6_0.1_all.deb
```

### 从源码安装

```bash
git clone https://github.com/GWC-Studio/Nebula-Theme_For_KDE-Plasma
cd Nebula-Theme_For_KDE-Plasma
./install.sh
```

### 应用主题

```bash
# 深色主题
lookandfeeltool -a NebulaOSDark

# 浅色主题
lookandfeeltool -a NebulaOS
```

也可以在 **系统设置 → 外观 → 全局主题** 中选择 **Nebula**。

> ⚠️ 请确保在 **系统设置 → 桌面效果** 中开启「模糊」(Blur)，否则毛玻璃效果不会生效。

更多细节见 [Nebula Theme 安装指南](nebula-theme/installation.md) 与 [自定义配置](nebula-theme/customization.md)。

---

## 3. 安装游戏优化包

```bash
wget https://github.com/GWC-Studio/Nebula-Gaming-Optimizer/releases/download/v0.1-alpha/nebula-gaming-optimizer.deb
sudo apt install ./nebula-gaming-optimizer.deb
sudo reboot  # 必须重启以启用 Liquorix 内核
```

### 验证安装

```bash
uname -r              # 应包含 liquorix 字样
gamemoded -t          # GameMode 自检
apt-fast --version    # 多线程下载工具
```

更多细节见 [Nebula Gaming 安装指南](nebula-gaming/installation.md)。

---

## 4. Nebula AI（即将发布）

Nebula AI 目前仍在开发中，预计 v0.1 Alpha 将于 2026 年 9 月发布。发布后你将可以通过：

```bash
# 待发布
wget https://github.com/GWC-Studio/Nebula-AI/releases/download/v0.1-alpha/nebula-ai.deb
sudo apt install ./nebula-ai.deb
```

安装并按下 `Ctrl+Alt+S` 即可从屏幕右侧呼出悬浮侧栏。

---

## 5. 下一步

- 想深入了解某个组件？前往 [文档中心](index.md) 查看全部文档
- 遇到问题？先看看 [常见问题](index.md#常见问题)，或提交 [Issue](https://github.com/GWC-Studio/Nebula-OS/issues)
- 想参与共建？查看 [贡献指南](CONTRIBUTING.md)