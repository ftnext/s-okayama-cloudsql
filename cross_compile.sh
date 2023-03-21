SOURCE=cloudsql
VERSION=v1.2.4
DIR=release

mkdir -p ${DIR}
GOOS=darwin  GOARCH=amd64 go build -o ./${DIR}/${SOURCE}_${VERSION}_darwin_amd64 ${SOURCE}.go
GOOS=darwin  GOARCH=arm64 go build -o ./${DIR}/${SOURCE}_${VERSION}_darwin_arm64 ${SOURCE}.go
GOOS=linux   GOARCH=386   go build -o ./${DIR}/${SOURCE}_${VERSION}_linux_386 ${SOURCE}.go
GOOS=linux   GOARCH=amd64 go build -o ./${DIR}/${SOURCE}_${VERSION}_linux_amd64 ${SOURCE}.go
GOOS=linux   GOARCH=arm64 go build -o ./${DIR}/${SOURCE}_${VERSION}_linux_arm64 ${SOURCE}.go
GOOS=windows   GOARCH=arm64 go build -o ./${DIR}/${SOURCE}_${VERSION}_windows_amd64 ${SOURCE}.go
GOOS=windows   GOARCH=arm64 go build -o ./${DIR}/${SOURCE}_${VERSION}_windows_arm64 ${SOURCE}.go

tar zcvf ./${DIR}/${SOURCE}_${VERSION}_darwin_amd64.tar.gz ./${DIR}/${SOURCE}_${VERSION}_darwin_amd64
tar zcvf ./${DIR}/${SOURCE}_${VERSION}_darwin_arm64.tar.gz ./${DIR}/${SOURCE}_${VERSION}_darwin_arm64
tar zcvf ./${DIR}/${SOURCE}_${VERSION}_linux_386.tar.gz ./${DIR}/${SOURCE}_${VERSION}_linux_386
tar zcvf ./${DIR}/${SOURCE}_${VERSION}_linux_amd64.tar.gz ./${DIR}/${SOURCE}_${VERSION}_linux_amd64
tar zcvf ./${DIR}/${SOURCE}_${VERSION}_linux_arm64.tar.gz ./${DIR}/${SOURCE}_${VERSION}_linux_arm64
tar zcvf ./${DIR}/${SOURCE}_${VERSION}_windows_amd64.tar.gz ./${DIR}/${SOURCE}_${VERSION}_windows_amd64
tar zcvf ./${DIR}/${SOURCE}_${VERSION}_windows_arm64.tar.gz ./${DIR}/${SOURCE}_${VERSION}_windows_arm64