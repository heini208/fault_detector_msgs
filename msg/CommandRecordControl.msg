# Name of the recording file (without path)
string name

# Mode: "start", "stop", "play", "delete", "pause", "resume", or "set_retries".
# Pause/resume only control command inclusion in the active recording.
# They do not stop command execution or sensor acquisition.
string mode

# Additional playback attempts for mode "set_retries"; zero clears the setting.
uint32 retries
