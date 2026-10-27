# NARRATION_TIMESTAMP_ENGINE

Purpose:

SCRIPT -> TTS NARRATION -> ACTUAL AUDIO -> WORD/SENTENCE ALIGNMENT -> TIMESTAMP JSON

## Input

Put your script here:

`INPUT/script.txt`

## Run

Double-click:

`START.bat`

## Main output

`OUTPUT/narration.mp3`

`OUTPUT/narration_timestamps.json`

The JSON contains:
- audio duration
- sentence start/end
- word start/end
- source text
- generated narration filename

## Accuracy

The timestamps are calculated from the generated audio using Whisper/faster-whisper.
They are NOT estimated from character count or average speaking speed.

## Configuration

Edit:

`CONFIG/config.json`

You can select:
- TTS voice
- speech rate
- speech pitch
- Whisper model
- compute type
- language


## Windows memory / ONNX "bad allocation" fix

This fixed build disables the optional Silero VAD pre-filter by default. VAD can
crash inside ONNX Runtime on some Windows/Python setups with `Conv ... bad
allocation`. Whisper alignment still runs on the audio and generates word and
sentence timestamps. If VAD is enabled manually in `CONFIG/config.json`, the
engine also retries without VAD when it detects the ONNX allocation failure.

If the error changes to a model-memory error, close other applications and set
`alignment.model` to `base` (or `tiny`) in `CONFIG/config.json`. Keep
`device` as `cpu` and `compute_type` as `int8` for lower RAM use.
