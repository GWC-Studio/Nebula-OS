# Nebula Theme for KDE Plasma

macOS 风格 KDE 主题包，为游戏玩家打造的优雅桌面体验。

[![Release](https://img.shields.io/github/v/release/GWC-Studio/Nebula-Theme_For_KDE-Plasma?style=flat-square&color=purple)](https://github.com/GWC-Studio/Nebula-Theme_For_KDE-Plasma/releases)
[![Plasma 5.27+](https://img.shields.io/badge/Plasma-5.27+-blue?style=flat-square)](https://kde.org/)
[![Plasma 6.x](https://img.shields.io/badge/Plasma-6.x-blue?style=flat-square)](https://kde.org/)

---

## ✨ 功能特性

| 组件 | 说明 |
|:---|:---|
| **顶部栏 (26px)** | 左侧：工作区切换 + 当前应用 + 全局菜单<br>右侧：系统托盘 + 时钟 + 显示桌面按钮 |
| **Dock (46px)** | 居中布局、自动隐藏（覆盖式）、0.25 半透明毛玻璃<br>内置 Kickoff Dash 全屏应用启动器 |
| **窗口按钮** | 红绿灯风格 (Aurorae)、圆角毛玻璃标题栏<br>深色/浅色两套配色 |
| **配色方案** | `NebulaOSDark`（深色）/ `NebulaOS`（浅色）<br>`nebula-mode` 命令一键切换 |
| **默认壁纸** | Nebula-Verse + Nebula-Gaming |

---

## 📦 安装

### 方法一：下载 .deb 包（推荐）

```bash
# KDE Plasma 5
wget https://github.com/GWC-Studio/Nebula-Theme_For_KDE-Plasma/releases/download/Beta/nebula-theme_0.1_all.deb
sudo apt install ./nebula-theme_0.1_all.deb

# KDE Plasma 6
wget https://github.com/GWC-Studio/Nebula-Theme_For_KDE-Plasma/releases/download/Beta/nebula-theme-kde6_0.1_all.deb
sudo apt install ./nebula-theme-kde6_0.1_all.deb
```

### 方法二：从源码安装

```bash
git clone https://github.com/GWC-Studio/Nebula-Theme_For_KDE-Plasma
cd Nebula-Theme_For_KDE-Plasma
./install.sh
```

---

## 🎨 应用主题

### 图形化方式
1. 打开 **系统设置 → 外观**
2. 在 **全局主题** 中选择 **Nebula**
3. 应用即可

### 命令行方式
```bash
# 切换到深色主题
lookandfeeltool -a NebulaOSDark

# 切换到浅色主题
lookandfeeltool -a NebulaOS
```

---

## ⚙️ 注意事项

- **必须开启「模糊」(Blur) 桌面效果**：系统设置 → 桌面效果 → 搜索「模糊」→ 勾选
- 如果 Dock 不自动隐藏，检查是否处于全屏模式
- 若顶部栏全局菜单不生效，需在应用启动时设置 `QT_QPA_PLATFORMTHEME=qt5ct`（部分应用）

---

## 🐛 已知问题

- Wayland 下部分应用窗口装饰可能不生效
- 建议在 X11 会话下获得最佳体验

---

## 🔗 相关项目

- [Nebula Gaming Optimizer](https://github.com/GWC-Studio/Nebula-Gaming-Optimizer)
- [Nebula AI](https://github.com/GWC-Studio/Nebula-AI) *（开发中）*