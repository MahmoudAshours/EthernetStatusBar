# EthernetStatusBar

A lightweight macOS menu bar application that monitors and displays the Ethernet connection status using SwiftUI and Network framework.

---

## 🧠 Overview

`EthernetStatusBar` is a minimal, always-running status bar app for macOS that:

- Monitors Ethernet (`wired`) connectivity
- Shows a system menu bar icon with status
- Runs silently in the background (no Dock or app switcher)
- Launches at login (manual setup)

Built with **SwiftUI** and **NWPathMonitor**, it's a helpful utility for developers, network admins, and power users.

---

## 📦 Features

- ✅ Menu bar icon (`network`) with connectivity text
- ✅ Realtime Ethernet connection detection
- ✅ Background-only behavior (Agent App)
- ✅ Minimal system impact

---

## 🛠 Setup Instructions

### 1. Clone the Project

```bash
git clone https://github.com/MahmoudAshours/EthernetStatusBar.git
cd EthernetStatusBar
open EthernetStatusBar.xcodeproj
```
2. Configure Info.plist
To make the app run as a menu bar agent, you need to modify the Info.plist:

### Using Xcode UI:
In Xcode, click your project in the navigator.

Go to the Info tab.

Under Custom macOS Application Target Properties, click the + button.

Add:

Key: Application is agent (UIElement)

Type: Boolean

Value: YES

## Directory structure
```
EthernetStatusBar/
├── EthernetStatusBarApp.swift    # App entry point
├── Info.plist                    # App metadata (agent mode)
├── EthernetMonitor.swift         # Network path monitor class
├── Assets.xcassets
└── Preview Content/
```
### 🧩 To-Do

- [ ] Add launch-at-login toggle inside app
- [ ] Auto-reconnect and status notifications
- [ ] Package into .pkg installer
