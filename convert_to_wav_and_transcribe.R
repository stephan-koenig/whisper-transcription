# Packages ----------------------------------------------------------------
library(av)
library(audio.whisper)

# Covert audio to wav --------------------------------------------
audio_file_input <- "<path>"
audio_file_output <- paste0(tools::file_path_sans_ext(audio_file_input), ".wav")

av_audio_convert(
  audio_file_input,
  output = audio_file_output,
  format = "wav",
  sample_rate = 16000
)

# Transcribe audio to text ------------------------------------------------
# Determine model size
model <- whisper("small")
transcription <- predict(
  model,
  newdata = audio_file_output,
  language = "en",
  n_threads = 2
)
