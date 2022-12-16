# whisper-transcription

Simple implementation of using [{av}](https://docs.ropensci.org/av/index.html) to convert audio files to `wav` format, and [{audio.whisper}](https://github.com/bnosac/audio.whisper) for transcribing them with the "Whisper" Automatic Speech Recognition model.

## Setup

I recommend using [RStudio](https://posit.co/products/open-source/rstudio/).

### R dependencies

[{renv}](https://rstudio.github.io/renv/index.html) tracks R package dependencies. When you open the R project for the first time, {renv} should bootstrap the setup of the R environment. You can manually restore the project's dependencies with

```R
renv::restore()
```

and update any dependencies with

```R
renv::snapshot()
```
