#!/usr/bin/make -f

include droidian-snapshot.mk

all: snapshot-control release

out/%: %.in
	mkdir -p out/$$(dirname $*)
	sed \
		-e 's|@DEBIAN_SNAPSHOT@|$(DEBIAN_SNAPSHOT)|g' \
		-e 's|@DROIDIAN_VERSION@|$(DROIDIAN_VERSION)|g' \
		$*.in > out/$*

snapshot-control: out/droidian-current

release: out/info/droidian-release out/info/issue out/info/issue.net out/info/os-release

.PHONY: snapshot-control release
