has_bought_something = 1943376
global_computer_type = 1963007

function start_script(script_name, stack_size, script)
    if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat(script_name)) >= 1 then
        return
    end
    SCRIPT.REQUEST_SCRIPT(script_name)
    repeat script:yield() until SCRIPT.HAS_SCRIPT_LOADED(script_name)
    SYSTEM.START_NEW_SCRIPT(script_name, stack_size)
    SCRIPT.SET_SCRIPT_AS_NO_LONGER_NEEDED(script_name)
    script:sleep(100)
    if script_name == 'appArcadeBusinessHub' then
        while SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat(script_name)) >= 1 do
            if globals.get_int(global_computer_type) == -1 then
                globals.set_int(has_bought_something, 0)
            end
            script:yield()
        end
    else
        repeat script:yield() until SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat(script_name)) == 0
        globals.set_int(has_bought_something, 0)
    end
end

internet_computers = gui.get_tab("GUI_TAB_NETWORK"):add_tab("Internet") --Internet, lol

internet_computers:add_button("Start Bunker Business Computer", function()
    script.run_in_fiber(function (script)
        start_script('appBunkerBusiness', 1424, script)
    end)
end)
internet_computers:add_sameline()
internet_computers:add_button("Start Nightclub Computer", function()
    script.run_in_fiber(function (script)
        start_script('appBusinessHub', 1424, script)
    end)
end)

internet_computers:add_button("Start Terrorbyte Computer", function()
    script.run_in_fiber(function (script)
        start_script('appHackerTruck', 4592, script)
    end)
end)
internet_computers:add_sameline()
internet_computers:add_button("Start Air Freight Cargo Computer", function()
    script.run_in_fiber(function (script)
        start_script('appSmuggler', 4592, script)
    end)
end)

internet_computers:add_button("Start Internet", function()
    script.run_in_fiber(function (script)
        start_script('appInternet', 4592, script)
    end)
end)
internet_computers:add_sameline()
internet_computers:add_button("Start Arcade Computer", function()
    script.run_in_fiber(function (script)
        start_script('appArcadeBusiness', 4592, script)
    end)
end)

internet_computers:add_button("Start Cocaine Lockup Computer", function()
    script.run_in_fiber(function (script)
        globals.set_int(global_computer_type, 8)
        start_script('appBikerBusiness', 4592, script)
    end)
end)
internet_computers:add_sameline()
internet_computers:add_button("Start Methamphetamine Lab Computer", function()
    script.run_in_fiber(function (script)
        globals.set_int(global_computer_type, 6)
        start_script('appBikerBusiness', 4592, script)
    end)
end)

internet_computers:add_button("Start Weed Farm Computer", function()
    script.run_in_fiber(function (script)
        globals.set_int(global_computer_type, 7)
        start_script('appBikerBusiness', 4592, script)
    end)
end)
internet_computers:add_sameline()
internet_computers:add_button("Start Counterfeit Cash Factory Computer", function()
    script.run_in_fiber(function (script)
        globals.set_int(global_computer_type, 9)
        start_script('appBikerBusiness', 4592, script)
    end)
end)

internet_computers:add_button("Start Document Forgery Computer", function()
    script.run_in_fiber(function (script)
        globals.set_int(global_computer_type, 10)
        start_script('appBikerBusiness', 4592, script)
    end)
end)
internet_computers:add_sameline()
internet_computers:add_button("Start Avenger Operations Computer", function()
    script.run_in_fiber(function (script)
        start_script('appAvengerOperations', 4592, script)
    end)
end)

internet_computers:add_button("Start Biker Business Computer", function()
    script.run_in_fiber(function (script)
        start_script('appBikerBusiness', 4592, script)
    end)
end)
internet_computers:add_sameline()
internet_computers:add_button("Start Franklin & Associates Computer", function()
    script.run_in_fiber(function (script)
        start_script('appFixerSecurity', 4592, script)
    end)
end)

internet_computers:add_button("Start Master Control Terminal", function()
    script.run_in_fiber(function (script)
        start_script('appArcadeBusinessHub', 1424, script)
    end)
end)
internet_computers:add_sameline()
internet_computers:add_button("Fill Drug Supplies", function()
    script.run_in_fiber(function (script)
        for i = 1, 7 do
            globals.set_int(1662873 + i, 1)
            script:yield()
        end
    end)
end)