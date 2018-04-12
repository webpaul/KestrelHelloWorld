if [[ $1 -eq 0 ]] ; then
    echo 'Must pass 1, 2 or 3 for image to build and run'
    exit 1
fi

#echo "{\"SiteNumber\":\"$1\"}" > appsettings.json
docker build -t paulbkroll/kestrelhelloworld .

docker run -it -d -p 808$1:80 --rm --name test paulbkroll/kestrelhelloworld
firefox "http://localhost:808$1"

