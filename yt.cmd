@ECHO OFF
IF "%~1"=="" GOTO end
set "av_arg=-f best/bestvideo+bestaudio"
IF "%~1"=="-a" (
  set av_arg=--extract-audio
  shift
)
set args=%*
set args=%args:-a =%
if [%2]==[] set args=%~1
set args="%args%"
set mpv_args=--force-window --autofit=10%% --ontop --geometry=100%%:100%% --no-border
for /f "tokens=*" %%g in ('yt-dlp --get-url %av_arg% ytsearch:%args%') do (
    SET url=%%g
)
mpv %mpv_args% "%url%"
:end

