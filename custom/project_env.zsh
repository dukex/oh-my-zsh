function activate() {
  PROJECT_DIR=`pwd`
  PROJECT_RC=$PROJECT_DIR/.project.rc
  if [[ -a $PROJECT_RC ]]; then
    source $PROJECT_RC
  fi
  unset PROJECT_RC
  unset PROJECT_DIR
}
