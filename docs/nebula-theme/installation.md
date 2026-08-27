# 🔧 Nebula Theme 安装指南

> 前置要求：KDE Plasma 5.27+（或 6.x）、Debian Testing/12+ 或 Ubuntu 24.04+、amd64 架构。安装前建议先备份当前主题配置。

---

## 1. 检查系统环境

```bash
plasmashell --version          # 检查 Plasma 版本（需 5.27 或 6.x）
uname -m                       # 检查架构（需 amd64/x86_64）
```

---

## 2. 安装方式

### 方式一：.deb 包（推荐）

升级/卸载方便，由包管理器统一管理。

```bash
# KDE Plasma 5
wget https://github.com/GWC-Studio/Nebula-Theme_For_KDE-Plasma/releases/download/Beta/nebula-theme_0.1_all.deb
sudo apt install ./nebula-theme_0.1_all.deb

# KDE Plasma 6
wget https://github.com/GWC-Studio/Nebula-Theme_For_KDE-Plasma/releases/download/Beta/nebula-theme-kde6_0.1_all.deb
sudo apt install ./nebula-theme-kde6_0.1_all.deb
```

> 从 Beta 版本起发布 .deb；若当前为预发布版本，请到 [Releases 页面](https://github.com/GWC-Studio/Nebula-Theme_For_KDE-Plasma/releases) 手动下载。

### 方式二：源码安装（开发者）

```bash
git clone https://github.com/GWC-Studio/Nebula-Theme_For_KDE-Plasma
cd Nebula-Theme_For_KDE-Plasma
./install.sh
```

`install.sh` 会把主题文件复制到 `~/.local/share/` 对应目录，仅对当前用户生效。

---

## 3. 应用主题

### 图形化方式

1. 打开 **系统设置 → 外观 → 全局主题**
2. 选择 **Nebula**（或根据 `nebula-mode` 选择深浅色）
3. 点击 **应用**，等待几秒即可生效

### 命令行方式

```bash
# 深色主题
lookandfeeltool -a NebulaOSDark

# 浅色主题
lookandfeeltool -a NebulaOS

# 一键切换深浅色（由主题包提供）
nebula-mode dark    # 或 light
```

---

## 4. 安装后必做

- ✅ 开启 **桌面效果 → 模糊 (Blur)**：系统设置 → 桌面效果 → 搜索「模糊」→ 勾选。不开启则 Dock 和标题栏毛玻璃不会显示。
- ✅ 确认 Dock 可自动隐藏：将 Dock 面板设为**覆盖式自动隐藏**（右键 Dock → 编辑…）。
- ✅ 部分应用若顶部无全局菜单，启动前设置：

```bash
export QT_QPA_PLATFORMTHEME=qt5ct
```

---

## 5. 验证安装

```bash
ls ~/.local/share/plasma/look-and-feel/ 2>/dev/null || ls /usr/share/plasma/look-and-feel/
# 应能看到 NebulaOSDark / NebulaOS
```

---

## 6. 卸载

### .deb 包安装的

```bash
sudo apt remove nebula-theme
```

### 源码安装的

```bash
cd Nebula-Theme_For_KDE-Plasma
./uninstall.sh    # 若存在；否则手动删除 ~/.local/share/ 下相关目录
```

卸载后如有残留配置：

```bash
rm -rf ~/.config/nebulatheme ~/.local/share/plasma/look-and-feel/NebulaOS*
```

---

## 7. 疑难排查

| 问题 | 解决方案 |
|:---|:---|
| 主题应用后无毛玻璃效果 | 开启「模糊」桌面效果后重新应用主题 |
| Dock 没有图标/不自动隐藏 | 检查 Dock 面板配置是否为覆盖式自动隐藏，是否处于全屏模式 |
| 全局菜单不显示 | 设置 `QT_QPA_PLATFORMTHEME=qt5ct` 后重启应用 |
| 窗口按钮位置不对 | 确认使用的窗口装饰是 Aurorae 的 Nebula 红绿灯按钮 |

> 已知问题：Wayland 会话下部分窗口装饰不生效，建议使用 X11 会话获得最佳体验。更多信息见 [README](README.md)。