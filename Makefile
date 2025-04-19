#!/usr/bin/make -f

include droidian-snapshot.mk

DROIDIAN_VERSION_SLUG := $(subst .,-,$(strip $(DROIDIAN_VERSION)))

all: snapshot-control release

out/%: %.in
	mkdir -p out/$$(dirname $*)
	sed \
		-e 's|@DEBIAN_SNAPSHOT@|$(DEBIAN_SNAPSHOT)|g' \
		-e 's|@DEBIAN_SUITE@|$(DEBIAN_SUITE)|g' \
		-e 's|@DROIDIAN_VERSION@|$(DROIDIAN_VERSION)|g' \
		-e 's|@DROIDIAN_VERSION_SLUG@|$(DROIDIAN_VERSION_SLUG)|g' \
		-e 's|@DROIDIAN_INTERNAL_VERSION@|$(DROIDIAN_INTERNAL_VERSION)|g' \
		-e 's|@DROIDIAN_UPDATE_FROM@|$(DROIDIAN_UPDATE_FROM)|g' \
		$*.in > out/$*

out/droidian-current: droidian-current.in
	mkdir -p out
	sed \
		-e 's|@DEBIAN_SNAPSHOT@|$(DEBIAN_SNAPSHOT)|g' \
		-e 's|@DEBIAN_SUITE@|$(DEBIAN_SUITE)|g' \
		-e 's|@DROIDIAN_VERSION@|$(DROIDIAN_VERSION)|g' \
		-e 's|@DROIDIAN_VERSION_SLUG@|$(DROIDIAN_VERSION_SLUG)|g' \
		-e 's|@DROIDIAN_UPDATE_FROM@|$(DROIDIAN_UPDATE_FROM)|g' \
		droidian-current.in > out/droidian-current

	for feature_branch in $(DROIDIAN_FEATURE_BRANCHES); do \
		echo "\nSource: droidian:$${feature_branch}\nSuites: trixie\nComponents: main\nArchitectures: amd64 armhf arm64" >> out/droidian-current ; \
	done

	for group in $(DROIDIAN_GROUPS); do \
		echo "\nSource: droidian-group:$${group}\nSuites: trixie\nComponents: main\nArchitectures: amd64 armhf arm64" >> out/droidian-current ; \
	done

snapshot-control: out/droidian-current out/droidian-current.01_updates out/droidian-current.80_fxtec out/droidian-current.80_volla_mimir out/droidian-update out/support/buildd_support.list

release: out/info/droidian-release out/info/issue out/info/issue.net out/info/os-release

.PHONY: snapshot-control release
