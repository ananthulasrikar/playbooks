# go learning
package is a way to group functions

get         download and install packages and dependencies
build       compile packages and dependencies
run         - build + run => compile and run Go program
install     - get + build => compile and install packages and dependencies
clean       remove object files and cached files
test        test packages
list        list packages or modules

# go path is used by go build
go env GOPATH

# bin directory holds compiled commands



Here's an example directory layout:

    GOPATH=/home/user/go

    /home/user/go/
        src/
            foo/
                bar/               (go code in package bar)
                    x.go
                quux/              (go code in package main)
                    y.go
        bin/
            quux                   (installed command)
        pkg/
            linux_amd64/
                foo/
                    bar.a          (installed package object)


When using modules, GOPATH is no longer used for resolving imports
