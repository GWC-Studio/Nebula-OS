# 🔧 Nebula Gaming Optimizer 安装指南

> 前置要求：Debian Testing/12+ 或 Ubuntu 24.04+（amd64）、已安装 Steam 或 Lutris 等游戏平台。安装过程需要 `sudo` 权限，且**安装后必须重启**才能启用 Liquorix 内核。

---

## 1. 安装

```bash
# 下载 .deb 包
wget https://github.com/GWC-Studio/Nebula-Gaming-Optimizer/releases/download/v0.1-alpha/nebula-gaming-optimizer.deb

# 安装（会自动拉取依赖）
sudo apt install ./nebula-gaming-optimizer.deb

# 重启以启用 Liquorix 内核
sudo reboot
```

> 提示：如果当前系统默认使用其他内核启动器，可在重启后的 GRUB 菜单中确认选中的内核已切换为 Liquorix。

---

## 2. 验证安装

重启后按以下步骤确认各组件就绪：

```bash
# 2.1 检查内核版本（应包含 liquorix）
uname -r

# 2.2 GameMode 自检
gamemoded -t

# 2.3 apt-fast
apt-fast --version

# 2.4 MangoHud 版本
mangohud --version

# 2.5 查看系统级优化参数
cat /etc/sysctl.d/99-nebula-gaming.conf
```

`gamemoded -t` 输出 `... is running` 或返回成功状态即正常。

---

## 3. 启动 GameMode

GameMode 默认在支持它的启动器中自动启用（Steam、Lutris、PortProton 均内置集成）。手动启动：

```bash
gamemoderun <你的游戏命令>
# 例如：gamemoderun steam
```

不使用启动器或想手动控制时，也可以在 `~/.config/gamemode.ini` 中配置自定义参数（如 CPU/GPU 频率策略）。

---

## 4. MangoHud 使用

MangoHud 已在系统级初始化（`/usr/share/environment.d/`），游戏启动时默认开启 HUD 覆盖层。键盘快捷键：

| 键位 | 功能 |
|:---|:---|
| `Shift + F12` | 显示/隐藏 HUD |
| 单击 | 切换显示模式 |
| 长按拖动 | 移动 HUD 位置 |

自定义 HUD 布局：编辑 `~/.config/MangoHud/MangoHud.conf`，如只想显示 FPS 和温度：

```ini
fps_limit=0
fps=1
gpu_temp=1
cpu_temp=1
```

---

## 5. PortProton 使用

已随优化包完成首装配置。在 **Lutris** 中选择 PortProton 作为运行器，或直接运行 `portproton` 命令打开图形界面，即可安装 Windows 游戏。

- 推荐在 **X11 会话** 下运行（Wayland 兼容性仍在优化中）
- 部分反作弊（EAC、BattlEye）游戏可能无法通过兼容层运行

---

## 6. 卸载

```bash
sudo apt remove nebula-gaming-optimizer
```

可选：如需恢复默认内核，通过 `sudo apt install linux-image-amd64`（或发行版默认内核包）安装后重启即可。

---

## 7. 疑难排查

| 问题 | 解决方案 |
|:---|:---|
| `uname -r` 不包含 liquorix | 检查 GRUB 是否选择了 Liquorix 内核启动项 |
| GameMode 报错无法运行 | `gamemoded` 服务是否启动：`systemctl --user status gamemoded` |
| MangoHud 不显示 | 确认游戏为原生 Linux/Vulkan 或 Proton 运行；必要时以 `mangohud %command%` 启动 |
| PortProton 闪退 | 切换到 X11 会话，并在 PortProton 设置中选择合适的 Wine 版本 |

> 基准测试与性能对比见 [benchmarks.md](benchmarks.md)，更多信息见 [README](README.md)。