if ping -c 1 -W 1 "$CHRONOS_IP_ADDR" > /dev/null 2>&1; then
  echo "chronos($CHRONOS_IP_ADDR) is up"
else
  echo "chronos($CHRONOS_IP_ADDR) is turned off waking it up"
  wol $CHRONOS_MAC_ADDR

  echo "Waiting for chronos to boot..."
  until ping -c 1 -W 1 "$CHRONOS_IP_ADDR" > /dev/null 2>&1; do
    echo -n "."
    sleep 2
  done

  sleep 3
  echo "Chronos is up connecting to it"
fi

waypipe ssh $CHRONOS_IP_ADDR
