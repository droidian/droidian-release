# Control file for the current Droidian snapshot.

# The base Debian snapshot
DEBIAN_SNAPSHOT = 20250305T204837Z

# The base Debian suite
DEBIAN_SUITE = sid

# The "pretty" Droidian version
DROIDIAN_VERSION = 101

# The internal Droidian version
# It must be an integer. Current format is:
# (Major)(Minor)(Patch)
# i.e. for Droidian 100, (100)(0)(0) = 10000
#      for Droidian 100.1, (100)(1)(0) = 10010
#      for Droidian 100.1.1, (100)(1)(1) = 10011
DROIDIAN_INTERNAL_VERSION = 10100

# Update info
DROIDIAN_UPDATE_FROM = 100

# Droidian feature branches to inject
DROIDIAN_FEATURE_BRANCHES = \
 droidian-systemd:next-upgrade-257 \
 droidian-gnome-clocks:next-upgrade-47 \
 droidian-gnome-control-center:next-upgrade-47-rebase \
 droidian-gnome-settings-daemon:next-upgrade-47-autobrightness \
 droidian-network-manager:next-wwan-fix \
 droidian-firefox-esr-mobile-config:next-firefox \
 droidian-glib:next-pidfd \
 droidian-gtk4:next-droidian-4-16 \
 droidian-gmobile:next-upgrade-0-2 \
 droidian-ofono2mm:next-calls-mm \
 droidian-hadess-sensorfw-proxy:next-testing \
 droidian-ofono-binder-plugin:next-powersaving \
 droidian-pulseaudio-config-droid:next-gnumdk-autoswitch \
 droidian-gnome-initial-setup:next-droidian-47 \
 droidian-wlroots:next-upgrade-0-17-4 \
 droidian-wayfire:next-upgrade-0-9-0

DROIDIAN_GROUPS = \
 droidian:next-upgrade-0-44 \
 droidian:next-upgrade-6-3
