# 🎨 Nebula Theme 自定义配置

Nebula Theme 提供开箱即用的 macOS 风格布局，同时支持按个人喜好调整。所有图形化配置均在 KDE 自带设置中完成，无需修改文件。

---

## 1. 配色切换

```bash
# 命令行一键切换
nebula-mode dark    # NebulaOSDark（深色）
nebula-mode light   # NebulaOS（浅色）
```

或通过 **系统设置 → 外观 → 颜色** 手动选择 `NebulaOSDark` / `NebulaOS` 配色。

---

## 2. Dock 调整

右键 Dock → **编辑 Dock…** 可配置：

| 选项 | 推荐值 | 说明 |
|:---|:---|:---|
| 位置 | 底部居中 | macOS 风格 |
| 大小 | 46px | 可调 40–60px |
| 面板厚度 | 46px | 与图标大小联动 |
| 自动隐藏 | 覆盖式 | 游戏时自动收纳 |
| 不透明度 | 0.25 | 配合毛玻璃效果 |
| 启用智能隐藏 | 可选 | 全屏时始终隐藏 |

编辑器内拖动即可微调图标顺序；不需要的应用可以从 Dock 中移除。

---

## 3. 顶栏调整

顶部栏也是标准 KDE 面板，右键 → **编辑面板…** 可：

- 增删组件（如添加天气、CPU 监控）
- 调整左右两侧组件排列
- 修改时钟显示格式与 `%d %b %a %H:%M` 等自定义格式

---

## 4. 窗口按钮与标题栏

红绿灯按钮由 Aurorae 窗口装饰提供，可在 **系统设置 → 窗口装饰** 中：

- 切换按钮排列（左/右）
- 调整标题栏高度
- 选择标题栏毛玻璃强度

自定义标题栏圆角/阴影需要编辑 `~/.local/share/themes/nebulatitle/metadata.desktop` 等文件，修改前建议先备份。

---

## 5. 壁纸

主题自带两张壁纸：

- **Nebula-Verse** — 深色星云主题
- **Nebula-Gaming** — 游戏主题

更换方式：右键桌面 → **配置桌面…** → 从已安装壁纸中选择，或添加自己的图片到 `~/.local/share/wallpapers/`。

---

## 6. 深浅色联动（跟随系统）

在 **系统设置 → 颜色** 中可开启「在日落与日出时在深色和浅色之间自动切换」，配合 `nebula-mode` 实现早晚自动换肤。

---

## 7. 配置导出 / 迁移

```bash
# 导出全局主题与面板配置
cp ~/.config/plasma-org.kde.plasma.desktop-appletsrc ~/nebulaconfig-backup

# 备份配色与其他外观设置
cp -r ~/.config/*kde* ~/nebulaconfig-backup/ 2>/dev/null
```

新机器上还原即可快速复原桌面布局。

---

## 8. 提示与限制

- 修改面板/组件后留意 **锁定小组件**（右键面板 → 锁定），避免误拖
- Wayland 下部分装饰效果不可用，自定义前建议在 X11 会话测试
- 若 after 修改外观异常，可在 **系统设置 → 外观** 重新应用一次主题

---

如有自定义需求不在此列，欢迎到 [Issue](https://github.com/GWC-Studio/Nebula-Theme_For_KDE-Plasma/issues) 提出建议。