
    awful.key({ modkey, altkey  }, "Return", function () awful.util.spawn("xtrlock") end),
    awful.key({ altkey, "Shift"    }, "k",     function () awful.client.incwfact( 0.05)    end),
    awful.key({ altkey, "Shift"    }, "j",     function () awful.client.incwfact(-0.05)    end),
    awful.key({ modkey }, "r", function () awful.util.spawn("dmenu_run") end),
    awful.key({ modkey, "Shift" }, "r", function () mypromptbox[mouse.screen]:run() end)
