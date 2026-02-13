# Museografía de Trajes AR

Project of Augmented Reality for the visualization of costumes in a Spanish museographic environment.

## 🚀 How to Run the Project

Due to browser security restrictions with the camera (Webcam), **you cannot open `index.html` directly**. You must use a local server.

### Option 1: Visual Studio Code (Recommended)
1. Install the **Live Server** extension in VS Code.
2. Right-click on `index.html`.
3. Select **Open with Live Server**.
4. Allow access to the camera in the browser.

### Option 2: Python (If installed)
1. Open a terminal in this folder.
2. Run `python -m http.server`.
3. Open `http://localhost:8000` in your browser.

## 📱 How to Test on Mobile
For the mobile to access the camera, the site must be served over **HTTPS** (or be localhost, which is not possible from the mobile unless you use port forwarding/USB debugging).

**The easiest way is to upload it to GitHub Pages:**
1. Create a repository on GitHub.
2. Upload all files from this folder.
3. Go to **Settings > Pages**.
4. Activate GitHub Pages in the `main` branch.
5. Use the link provided by GitHub on your mobile.

## 📂 Structure
- `index.html`: Main application code.
- `assets/models/`: The 4 models (`modelo1.glb` to `modelo4.glb`).
- `assets/textures/`: Place textures here (e.g., `floor.jpg`).
- `assets/audio/`: Place audio here (e.g., `ambience.mp3`).

## 🎛️ Controls
- **PC**: Click on the `<` and `>` buttons to change models.
- **Mobile**: Swipe left/right or use the buttons.
- **Interaction**: Point the camera at a Hiro Marker.

## 📤 Manual Upload to GitHub (Without Git installed)

Since you don't have Git installed, follow these steps to upload via the web:

1.  **Access your Repository**: Go to [https://github.com/andresfelipegomezbeltran-bit/museografia-de-trajes](https://github.com/andresfelipegomezbeltran-bit/museografia-de-trajes).
2.  **Upload Files**:
    - **IMPORTANT**: Instead of dragging the *folder*, open the folder on your computer, select **all the files inside** (Ctrl+A), and drag them into the browser.
    - If you drag the folder, your link will change.
    - Wait for all files (including assets) to upload.
    - In "Commit changes", type "Fix upload" and click the green **Commit changes** button.
3.  **Check the Link**:
    - Go to **Settings > Pages**.
    - If the link still gives 404, try adding `/index.html` at the end or wait 2-3 minutes.

