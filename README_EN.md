# Desktop Entry Creator

A simple bash script for quickly creating shortcuts (`.desktop` files) in Linux.

## Installation

### Method 1: Download the ready-made file (recommended)

Download the latest stable version from [Releases](https://github.com/DarkHolocron/Desktop-entry-creator/releases).

### Method 2: Clone the repository

To get the latest version, including unstable ones, clone the `dev` branch:

```bash
git clone -b dev https://github.com/DarkHolocron/Desktop-entry-creator.git
cd Desktop-entry-creator
```

## Usage

1. Make the script executable:
   ```bash
   chmod +x create-desktop.sh
   ```

2. Run the script:
   ```bash
   ./create-desktop.sh
   ```

3. Follow the prompts:
   - Enter the file name (without the `.desktop` extension)
   - Enter the application name
   - Specify the full path to the executable file
   - Specify the full path to the icon

4. Once completed, the shortcut will be created in `/usr/share/applications/`
