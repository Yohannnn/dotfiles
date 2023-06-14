rule = {
  matches = {
    {
      { "device.name", "matches", "bluez_card.2C_32_6A_C2_78_0D" },
    },
  },
  apply_properties = {
    ["bluez5.auto-connect"]  = "[ a2dp_sink ]"  },
}

table.insert(bluez_monitor.rules, rule)
