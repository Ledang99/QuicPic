#!/usr/bin/env bash
# Install apktool and Android SDK build-tools for local builds.

set -euo pipefail

ANDROID_HOME="${ANDROID_HOME:-${HOME}/android-sdk}"
APKTOOL_DIR="${HOME}/tools/apktool"

echo "==> Installing apktool..."
mkdir -p "$APKTOOL_DIR"
wget -q -O "$APKTOOL_DIR/apktool.jar" \
  https://github.com/iBotPeaches/Apktool/releases/download/v2.11.1/apktool_2.11.1.jar
cat > "$APKTOOL_DIR/apktool.sh" << 'EOF'
#!/bin/bash
java -jar "$HOME/tools/apktool/apktool.jar" "$@"
EOF
chmod +x "$APKTOOL_DIR/apktool.sh"

echo "==> Installing Android SDK command-line tools..."
mkdir -p "$ANDROID_HOME/cmdline-tools"
TMP_ZIP="/tmp/cmdline-tools.zip"
wget -q -O "$TMP_ZIP" \
  https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip
unzip -qo "$TMP_ZIP" -d "$ANDROID_HOME/cmdline-tools"
mv "$ANDROID_HOME/cmdline-tools/cmdline-tools" "$ANDROID_HOME/cmdline-tools/latest"
rm -f "$TMP_ZIP"

export PATH="$ANDROID_HOME/cmdline-tools/latest/bin:$PATH"
yes | sdkmanager --licenses 2>/dev/null || true
sdkmanager "build-tools;34.0.0" "platform-tools"

echo ""
echo "Setup complete. Add to your shell profile:"
echo "  export ANDROID_HOME=$ANDROID_HOME"
echo "  export PATH=\"\$ANDROID_HOME/cmdline-tools/latest/bin:\$ANDROID_HOME/build-tools/34.0.0:\$HOME/tools/apktool:\$PATH\""
echo ""
echo "Then run: ./build.sh"
