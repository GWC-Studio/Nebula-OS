# Nebula-OS 文档中心

欢迎来到 Nebula-OS 文档！这里你可以找到所有组件的详细安装和使用指南。

> **🚀 终极目标**：基于 Debian Testing 构建一个独立的 GNU/Linux 发行版，将主题、游戏优化与 AI 工具整合为开箱即用的游戏系统。

## 快速导航

### 🎨 [Nebula Theme for KDE Plasma](nebula-theme/)

macOS 风格 KDE 主题包，包含：
- 26px 顶部栏 + 全局菜单
- 46px 自动隐藏 Dock
- 红绿灯窗口按钮 (Aurorae)
- 深色/浅色配色方案
- 支持 KDE Plasma 5.27+ 和 6.x

→ [查看文档](nebula-theme/)

### 🎮 [Nebula Gaming Optimizer](nebula-gaming/)

游戏性能优化元包，一键安装：
- Liquorix 游戏内核
- GameMode 性能守护进程
- MangoHud 游戏内监控
- PortProton Windows 兼容层
- 系统级性能调优参数

→ [查看文档](nebula-gaming/)

### 🤖 [Nebula AI](nebula-ai/)

拟真 AI 聊天客户端：
- 支持全局热键呼出（Ctrl+Alt+S）
- 悬浮侧栏设计，不干扰游戏
- 多角色群聊模式
- 流式输出

→ [查看文档](nebula-ai/) *（开发中）*

---

## 🐧 系统要求

| 组件 | 最低版本 |
|:---|:---|
| KDE Plasma | 5.27+ (或 6.x) |
| Debian | Testing / 12+ |
| Ubuntu | 24.04+ |
| 架构 | amd64 |

---

## ❓ 常见问题

**Q: 主题安装后没有生效？**

A: 请确保在系统设置中开启了桌面效果 → 搜索「模糊」(Blur) 并勾选。

**Q: PortProton 无法启动？**

A: 尝试在 X11 会话下运行，Wayland 兼容性目前仍在优化中。

**Q: 安装优化包后需要重启吗？**

A: 是的，Liquorix 内核需要重启才能生效。

**Q: 如何卸载？**

A: `sudo apt remove nebula-gaming-optimizer nebula-theme`

---

## 📚 更多资源

- [GWC-Studio GitHub 组织](https://github.com/GWC-Studio)
- [Issue 反馈](https://github.com/GWC-Studio/Nebula-OS/issues)
- [贡献指南](CONTRIBUTING.md)