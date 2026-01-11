# Control file for the current Droidian snapshot.

# Set this flag to 1 if this release is in development,
# to 0 if not.
IS_DEVELOPMENT = 1

# The base Debian snapshot
DEBIAN_SNAPSHOT = 20260111T203533Z

# The base Debian suite
DEBIAN_SUITE = sid

# The "pretty" Droidian version
DROIDIAN_VERSION = 102

# The internal Droidian version
# It must be an integer. Current format is:
# (Major)(Minor)(Patch)
# i.e. for Droidian 100, (100)(0)(0) = 10000
#      for Droidian 100.1, (100)(1)(0) = 10010
#      for Droidian 100.1.1, (100)(1)(1) = 10011
DROIDIAN_INTERNAL_VERSION = 10200

# Update info
DROIDIAN_UPDATE_FROM = 101

# Droidian feature branches to inject
DROIDIAN_FEATURE_BRANCHES = \
 droidian-geoclue:next-2-7-2 \
 droidian-feedbackd:next-upgrade-0-8 \
 droidian-systemd:next-upgrade-257 \
 droidian-gnome-control-center:next-upgrade-47-rebase \
 droidian-network-manager:next-wwan-fix \
 droidian-firefox-esr-mobile-config:next-firefox \
 droidian-qt6-base:next-gles \
 droidian-glib:next-pidfd-286 \
 droidian-gtk-3.0:next-upgrade-3-24 \
 droidian-gmobile:next-upgrade-0-4 \
 droidian-ofono2mm:next-calls-mm \
 droidian-hadess-sensorfw-proxy:next-testing \
 droidian-ofono-binder-plugin:next-powersaving \
 droidian-pulseaudio-config-droid:next-gnumdk-autoswitch \
 droidian-gnome-initial-setup:next-droidian-47 \
 droidian-wlroots:next-backport-0-18 \
 droidian-wlroots:next-upgrade-0-17-4-no-libdroid \
 droidian-wayfire:next-upgrade-0-9-0

DROIDIAN_GROUPS = \
 droidian:next-phosh-0-47 \
 droidian:next-phosh-0-49 \
 droidian:next-gnome-48 \
 droidian:next-plasma-6-5
