
# Installing and Updating Visual Studio Code Manually on Linux

---

## Conversation Summary  

### You:  
```bash
~/Downloads/VSCode-linux-x64 λ ls
LICENSES.chromium.html  chrome_crashpad_handler  libffmpeg.so          resources.pak
bin                     code                     libvk_swiftshader.so  snapshot_blob.bin
chrome-sandbox          icudtl.dat               libvulkan.so.1        v8_context_snapshot.bin
chrome_100_percent.pak  libEGL.so                locales               vk_swiftshader_icd.json
chrome_200_percent.pak  libGLESv2.so             resources
```

How can I install it so it appears as if installed from the store?

---

### ChatGPT:

To make your manually downloaded **Visual Studio Code** appear like a system-installed app on Linux, follow these steps:

1️⃣ **Move the folder to `/opt`:**

```bash
sudo mv ~/Downloads/VSCode-linux-x64 /opt/vscode
```

2️⃣ **Create a system-wide symbolic link in `/usr/bin`:**

```bash
sudo ln -s /opt/vscode/code /usr/bin/code
```

3️⃣ **Create a Desktop Entry:**

```bash
sudo nano /usr/share/applications/vscode.desktop
```

Paste the following inside the file:

```ini
[Desktop Entry]
Name=Visual Studio Code
Comment=Code Editing. Redefined.
Exec=/opt/vscode/code --no-sandbox --unity-launch %F
Icon=/opt/vscode/resources/app/resources/linux/code.png
Type=Application
StartupNotify=true
StartupWMClass=Code
Categories=Utility;TextEditor;Development;IDE;
MimeType=text/plain;inode/directory;
```

> **Note:** Make sure the icon exists at:  
`/opt/vscode/resources/app/resources/linux/code.png`  
If not, use a valid icon path.

4️⃣ **Update the applications database:**

```bash
update-desktop-database ~/.local/share/applications
```

5️⃣ **Now you can launch it by searching "Visual Studio Code" from your menu.**

---

📄 **Official Documentation on Manual Installation:**  
[https://code.visualstudio.com/docs/setup/linux](https://code.visualstudio.com/docs/setup/linux)

📄 **Desktop Entry Specification Reference:**  
[https://specifications.freedesktop.org/desktop-entry-spec/latest/](https://specifications.freedesktop.org/desktop-entry-spec/latest/)

---

### You:
How do I update it?

---

### ChatGPT:

To update **Visual Studio Code** when using the manually downloaded version, follow this manual update procedure:

1️⃣ **Download the latest version from the official website:**  
[https://code.visualstudio.com/Download](https://code.visualstudio.com/Download)

2️⃣ **Close VS Code if it is running:**

```bash
pkill code
```

3️⃣ **Remove the old version:**

```bash
sudo rm -rf /opt/vscode
```

4️⃣ **Extract the new version and move it to `/opt`:**

```bash
tar -xf VSCode-linux-x64.tar.gz
sudo mv VSCode-linux-x64 /opt/vscode
```

5️⃣ **No need to update the symbolic link:**

```bash
which code
# Should show: /usr/bin/code
```

6️⃣ **Desktop Entry stays valid, no need to edit.**

---

### Summary:
- ❗ Delete the old version.
- ✅ Install the new version the same way.

📄 **Microsoft Manual Install Reference:**  
[https://code.visualstudio.com/docs/setup/linux#_manual-installation](https://code.visualstudio.com/docs/setup/linux#_manual-installation)

---

💡 **For Automatic Updates:**
- **Debian/Ubuntu:**

```bash
sudo apt install code
```

- **Arch Linux (via AUR):**

```bash
paru -S visual-studio-code-bin
```

> Let me know if you want guidance for this method.
