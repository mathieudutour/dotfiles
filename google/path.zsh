export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$ANDROID_HOME:$PATH"
export PATH="$HOME/Downloads/Fortify_ScanCentral_Client_22.2.1_x64/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f "${HOME}/google-cloud-sdk/path.zsh.inc" ]; then . "${HOME}/google-cloud-sdk/path.zsh.inc"; fi

export PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
export PUPPETEER_EXECUTABLE_PATH=`which chromium`
