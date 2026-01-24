# Homebrew Tap

Custom Homebrew tap for Zaphkiel-Ivanovna projects.

## How to Use

### Add the Tap

```bash
brew tap zaphkiel-ivanovna/tap
```

### Install Casks

| Cask | Description | Install Command |
|------|-------------|-----------------|
| `adb-studio` | Native macOS app for managing Android devices via ADB | `brew install --cask adb-studio` |

## Available Casks

### ADB Studio

A beautiful, native macOS application for managing Android devices via ADB (Android Debug Bridge).

**Requirements:**
- macOS 14 (Sonoma) or later
- Apple Silicon (arm64)

**Features:**
- Device discovery and wireless pairing
- Port forwarding management
- APK installation with drag & drop
- Installed apps management
- Screenshot capture

**Installation:**

```bash
brew install --cask adb-studio
```

**Update:**

```bash
brew upgrade --cask adb-studio
```

**Uninstall:**

```bash
brew uninstall --cask adb-studio
```

**Full cleanup (including preferences and caches):**

```bash
brew uninstall --cask --zap adb-studio
```

## Documentation

- [Homebrew Tap Documentation](https://docs.brew.sh/Taps)
- [Homebrew Cask Cookbook](https://docs.brew.sh/Cask-Cookbook)
