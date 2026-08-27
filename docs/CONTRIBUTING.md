# 🤝 贡献指南

欢迎来到 Nebula-OS 贡献指南！Nebula-OS 是一个社区驱动的开源项目，无论你是开发者、设计师还是普通用户，都能找到适合自己的贡献方式。

本指南适用于 Nebula-OS 组织下的所有仓库：

- [GWC-Studio/Nebula-OS](https://github.com/GWC-Studio/Nebula-OS) — 文档中心（本仓库）
- [Nebula-Theme_For_KDE-Plasma](https://github.com/GWC-Studio/Nebula-Theme_For_KDE-Plasma) — KDE 主题包
- [Nebula-Gaming-Optimizer](https://github.com/GWC-Studio/Nebula-Gaming-Optimizer) — 游戏优化包
- [Nebula-AI](https://github.com/GWC-Studio/Nebula-AI) — AI 聊天客户端 *（开发中）*

---

## 贡献方式

### 🎨 主题设计

- 优化 KDE 主题的视觉细节（配色、间距、阴影）
- 设计新的配色方案或壁纸
- 改进 Dock、顶栏、窗口按钮的交互体验

### 🐧 性能调优

- 改进内核参数与 sysctl 配置
- 优化 GameMode 配置、MangoHud 布局
- 提供不同硬件平台的基准测试数据

### 🧪 测试反馈

- 在不同硬件/发行版上测试并填写 [Issue](https://github.com/GWC-Studio/Nebula-OS/issues)
- 如实描述环境（发行版、Plasma 版本、显卡驱动）、复现步骤与期望结果

### 📝 文档编写

- 修正错别字、补充安装/使用细节
- 新增 FAQ、排错指南、截图

### 💬 社区运营

- 在群组/论坛帮助解答用户问题
- 撰写使用心得与教程文章

---

## 贡献流程

1. **Fork** 目标仓库到你的账号
2. 创建特性分支：

   ```bash
   git checkout -b feature/amazing-feature
   ```

3. 提交改动（建议使用清晰、描述性的 commit message）：

   ```bash
   git commit -m "Add some amazing feature"
   ```

4. 推送到你的远程分支：

   ```bash
   git push origin feature/amazing-feature
   ```

5. 在 GitHub 上开启 **Pull Request**，等待维护者 review。

---

## 代码规范

- **commit message**：使用英文祈使句，如 `Add Dock autohide option`；Fix 类提交建议关联 Issue 编号，如 `Fix #12: blur not working on Plasma 6`
- **Shell 脚本**：以 `#!/usr/bin/env bash` 开头，设置 `set -euo pipefail`，变量使用 `$()` 风格
- **Markdown 文档**：使用中文写作，标题层级从 `##` 开始（`#` 留给页面标题），代码块标注语言
- **版本号**：遵循语义化版本 `MAJOR.MINOR.PATCH`，Alpha/Beta 阶段注明状态

---

## Pull Request 检查清单

- [ ] PR 标题清晰，描述了改动内容
- [ ] 已在真实环境（KDE Plasma）测试通过
- [ ] 相关文档已同步更新
- [ ] 不包含无关的格式改动或文件

---

## Issue 模板建议

### Bug 报告

```markdown
**环境**
- 发行版 / 版本：
- KDE Plasma 版本：
- 会话（X11 / Wayland）：
- 显卡与驱动：

**描述**
清楚描述遇到的问题。

**复现步骤**
1. ...
2. ...

**期望行为**
应该发生什么？

**实际行为**
实际发生了什么？（附截图/日志）
```

### 功能请求

```markdown
**需求描述**
你想解决什么问题？

**期望方案**
希望如何实现？

**替代方案**
是否考虑过其他实现方式？
```

---

## 致谢

每一个 Issue、每一行代码、每一篇文档，都是对 Nebula-OS 生态的贡献。期待在社区见到你！🌟