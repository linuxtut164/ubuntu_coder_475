/#/!//bin//bash
  189  chmod u+x $SCRIPT_NAME.sh;
  190  #1674391925
  191  # Open the newly created script with vim
  192  #1674391925
  193  vim $SCRIPT_NAME.sh;
  194  #1674391950
  195  ~
  196  HISTTIMEFORMAT="%d/%m/%y %T "
  197  #1674391984
  198  # echo shabang line and x number of lines of history to new script
  199  #1674391984
  200  echo /#/!//bin//bash > $SCRIPT_NAME.sh; history | tail -n $NUMBER_OF_LINES_BACK >> $SCRIPT_NAME.sh;
  201  #1674391984
  202  chmod u+x $SCRIPT_NAME.sh;
  203  #1674391984
  204  # Open the newly created script with vim
  205  #1674391984
  206  vim $SCRIPT_NAME.sh;
  207  #1674391998
  208  ~
  209  # echo shabang line and x number of lines of history to new script
  210  echo /#/!//bin//bash > $SCRIPT_NAME.sh; history | tail -n $NUMBER_OF_LINES_BACK >> $SCRIPT_NAME.sh;
