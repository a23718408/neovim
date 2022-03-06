local dap_install = require "dap-install"
dap_install.config("dart", {
  configurations = {
    {
      type = "dart",
      request = "launch",
      name = "Launch flutter",
      dartSdkPath = os.getenv "HOME" .. "/snap/flutter/common/flutter/bin/cache/dart-sdk/",
      flutterSdkPath = os.getenv "HOME" .. "/snap/flutter",
      program = "${workspaceFolder}/lib/main.dart",
      cwd = "${workspaceFolder}",
    },
  },
})
