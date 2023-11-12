local function StartScript(string, stack_size)
    if not SCRIPT.DOES_SCRIPT_EXIST(string) then
        return false
    end
    if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat(str)) > 0 then
        return true
    end
    SCRIPT.REQUEST_SCRIPT(string)
    while not SCRIPT.HAS_SCRIPT_LOADED (string) do
        script_util:yield()
    end
    SYSTEM.START_NEW_SCRIPT(string, arg_count or 0)
    SCRIPT.SET_SCRIPT_AS_NO_LONGER_NEEDED(string)
    return true
end

internet_computers = gui.get_tab("GUI_TAB_NETWORK"):add_tab("Internet") --Internet, lol

internet_computers:add_button("Start Bunker Business Computer", function()
    script.run_in_fiber(function (script)
		StartScript('appBunkerBusiness', 1424)
    end)
end)

internet_computers:add_button("Start Business Hub Computer", function()
    script.run_in_fiber(function (script)
		StartScript('appBusinessHub', 1424)
    end)
end)

internet_computers:add_button("Start Arcade Computer", function()
    script.run_in_fiber(function (script)
		StartScript('appArcadeBusiness', 1424)
    end)
end)

internet_computers:add_button("Start Master Control Terminal", function()
    script.run_in_fiber(function (script)
		StartScript('appArcadeBusinessHub', 1424)
    end)
end)

internet_computers:add_button("Start Terrorbyte Computer", function()
    script.run_in_fiber(function (script)
		StartScript('appHackerTruck', 4592)
    end)
end)