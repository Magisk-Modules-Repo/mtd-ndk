# Diffusion Installer Config
# osm0sis @ xda-developers

INST_NAME="mtd-utils Installer Script";
AUTH_NAME="osm0sis @ xda-developers";

USE_ARCH=false
USE_ZIP_OPTS=true

custom_setup() {
  return # stub
}

custom_zip_opts() {
  return # stub
}

custom_target() {
  return # stub
}

custom_install() {
  ui_print " ";
  ui_print "Installing mtd-utils to $BIN ...";
  set_perm 0 0 755 $BIN/flash_erase $BIN/nanddump $BIN/nandwrite;
}

custom_postinstall() {
  return # stub
}

custom_uninstall() {
  return # stub
}

custom_postuninstall() {
  return # stub
}

custom_cleanup() {
  return # stub
}

custom_exitmsg() {
  return # stub
}

# additional custom functions


