# Linux Firmware Dev Environment Setup

這是我個人在 **Ubuntu 24.04 (ZBook G11)** 上使用的開發環境自動化佈署腳本。核心目標是建立一個**極簡、高專注度、且具備肌肉記憶**的韌體開發環境。

## 核心特性
- **字體視覺大掃除**：移除數百個冗餘系統字體，僅保留開發者專用的微軟核心字體、蘋方 (PingFang) 與 Powerlevel10k 符號字體。
- **輸入法自動化**：整合 **Fcitx5** 體系，配合 Vim 實現 Insert Mode 自動切換語系。
- **韌體開發工具鏈**：一鍵安裝 `gcc`, `make`, `davfs2`, `nfs-common` 等底層開發必備工具。
- **Vim 配置**：自動部署 `vim-plug` 並恢復個人化的 `.vimrc` 配置。
- **終端機一致性**：透過 `dconf` 恢復 GNOME Terminal 的配色與布局。

## 包含組件
1. **Fonts**: Microsoft Core Fonts, PingFangTC, Powerlevel10k icons.
2. **Input Method**: Fcitx5 (Chewing / Chinese Addons).
3. **Terminal**: GNOME Terminal settings (via `dconf`).
4. **Vim**: Full `.vimrc` with plug-in management.

## 快速開始 (Quick Start)

在你的 Ubuntu 24.04 乾淨環境中執行：

```bash
git clone [https://github.com/edwardhome/Ubuntu_Autosetup.git](https://github.com/edwardhome/Ubuntu_Autosetup.git)
cd Ubuntu_Autosetup
chmod +x setup.sh
./setup.sh
