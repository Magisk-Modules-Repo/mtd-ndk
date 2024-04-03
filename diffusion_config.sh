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
  set_perm_recursive 0 0 755 755 $BIN/arm $BIN/arm64;
  if $BIN/arm64/nanddump --version >/dev/null 2>&1; then
    ui_print "Installing mtd-utils (arm64) to $BIN ...";
    cp -fp $BIN/arm64/* $BIN;
  else
    ui_print "Installing mtd-utils (arm) to $BIN ...";
    cp -fp $BIN/arm/* $BIN;
  fi;
  rm -rf $BIN/arm $BIN/arm64;
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


