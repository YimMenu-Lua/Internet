internet_computers = gui.get_tab("GUI_TAB_NETWORK"):add_tab("Internet") --Internet, lol

internet_computers:add_button("Start Bunker Business Computer", function()
    script.run_in_fiber(function (script)
		if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("appBunkerBusiness")) == 0 then
			SYSTEM.START_NEW_SCRIPT('appBunkerBusiness', 1424)
		end
    end)
end)

internet_computers:add_button("Start Business Hub Computer", function()
    script.run_in_fiber(function (script)
		if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("appBusinessHub")) == 0 then
			SYSTEM.START_NEW_SCRIPT('appBusinessHub', 1424)
		end
    end)
end)

internet_computers:add_button("Start Arcade Computer", function()
    script.run_in_fiber(function (script)
		if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("appArcadeBusiness")) == 0 then
			SYSTEM.START_NEW_SCRIPT('appArcadeBusiness', 1424)
		end
    end)
end)

internet_computers:add_button("Start Master Control Terminal", function()
    script.run_in_fiber(function (script)
		if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("appArcadeBusinessHub")) == 0 then
			SYSTEM.START_NEW_SCRIPT('appArcadeBusinessHub', 1424)
		end
    end)
end)