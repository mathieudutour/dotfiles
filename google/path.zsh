export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$ANDROID_HOME:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f "${HOME}/google-cloud-sdk/path.zsh.inc" ]; then . "${HOME}/google-cloud-sdk/path.zsh.inc"; fi
