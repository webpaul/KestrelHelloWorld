if "%~1"=="" GOTO BLANK

if not exist ".\build%1" dotnet publish .\KestrelHelloWorld.sln -c Release -o ..\..\build%1

cd build%1
copy ..\docker\Dockerfile .
echo {'SiteNumber':'%1'} > appsettings.json
docker build -t kestrel%1 .
cd ..

docker run -it -d -p 808%1:80 --rm --name kestrel%1 kestrel%1
explorer "http://localhost:808%1"
GOTO DONE

:BLANK
ECHO Must pass 1, 2 or 3 for image to build and run

:DONE
