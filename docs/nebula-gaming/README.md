# Nebula Gaming Optimizer

一键安装游戏性能优化全家桶。

[![Release](https://img.shields.io/github/v/release/GWC-Studio/Nebula-Gaming-Optimizer?style=flat-square&color=purple)](https://github.com/GWC-Studio/Nebula-Gaming-Optimizer/releases)
[![Status](https://img.shields.io/badge/Status-Alpha-orange?style=flat-square)](https://github.com/GWC-Studio/Nebula-Gaming-Optimizer)
[![Platform](https://img.shields.io/badge/Platform-Debian%2FUbuntu-blue?style=flat-square)](https://debian.org/)

---

## ✨ 自动安装的组件

| 组件 | 版本 | 用途 |
|:---|:---|:---|
| [Liquorix](https://liquorix.net) | 最新 | 低延迟游戏内核 |
| [GameMode](https://github.com/FeralInteractive/gamemode) | 1.8+ | 性能优化守护进程 |
| [MangoHud](https://github.com/flightlessmango/MangoHud) | 0.6+ | 游戏内性能监控 |
| [vkBasalt](https://github.com/DadSchoorse/vkBasalt) | 0.3+ | Vulkan 图像后处理 |
| [Lutris](https://lutris.net) | 0.5+ | 游戏管理平台 |
| [Steam](https://store.steampowered.com/) | 最新 | 游戏客户端 |
| [PortProton](https://github.com/Castro-Fidel/PortProton) | 最新 | Windows 游戏兼容层 |
| [apt-fast](https://github.com/ilikenwf/apt-fast) | 最新 | 多线程包下载 |
| [libstrangle](https://gitlab.com/torkel104/libstrangle) | 最新 | 帧率限制工具 |

---

## 📦 安装

```bash
wget https://github.com/GWC-Studio/Nebula-Gaming-Optimizer/releases/download/v0.1-alpha/nebula-gaming-optimizer.deb
sudo apt install ./nebula-gaming-optimizer.deb
sudo reboot  # 必须重启以启用 Liquorix 内核
```

---

## 🔧 验证安装

```bash
# 检查内核
uname -r  # 应包含 liquorix 字样

# 测试 GameMode
gamemoded -t

# 检查 apt-fast
apt-fast --version

# 查看优化参数
cat /etc/sysctl.d/99-nebula-gaming.conf
```

---

## 📊 性能对比

> *（待补充基准测试数据）*

| 游戏 | 原生帧率 | 优化后帧率 | 提升 |
|:---|:---|:---|:---|
| *待测试* | - | - | - |

---

## 🐛 已知问题

- PortProton 在 Wayland 下可能存在兼容性问题
- 部分反作弊系统（EAC、BattlEye）的游戏无法通过 Proton 运行
- 首次安装后需重启生效

---

## 🔗 相关项目

- [Nebula Theme for KDE Plasma](https://github.com/GWC-Studio/Nebula-Theme_For_KDE-Plasma)
- [Nebula AI](https://github.com/GWC-Studio/Nebula-AI) *（开发中）*