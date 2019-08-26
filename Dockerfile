FROM mcr.microsoft.com/dotnet/core/aspnet:2.2
ARG PublishPath
WORKDIR app
COPY $PublishPath .
ENV SOLUTION_DLL = "anotherapi.dll"
ENTRYPOINT dotnet ${SOLUTION_DLL}