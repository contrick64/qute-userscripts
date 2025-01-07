@ECHO OFF
IF "%~1"=="" GOTO end
set "av_arg=-f best/bestvideo+bestaudio"
IF "%~1"=="-a" (
  set av_arg=--extract-audio
)
set args=%*
set args=%args:-a =%
set mpv_args=--force-window --autofit=10%% --ontop --geometry=100%%:100%%
for /f "tokens=*" %%g in ('C:/Users/cmurph52/Downloads/bootstrapper/yt-dlp.exe --get-url %av_arg% ytsearch:%args%') do (SET url=%%g)
C:/Users/cmurph52/Downloads/bootstrapper/mpv.exe %mpv_args% "%url%"
:end

