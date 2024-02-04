Config = {}
Config.UsingTarget = GetConvar('UseTarget', 'false') == 'true'
Config.Commission = 0.10                              -- Percent that goes to sales person from a full car sale 10%
Config.FinanceCommission = 0.05                       -- Percent that goes to sales person from a finance sale 5%
Config.PaymentWarning = 10                            -- time in minutes that player has to make payment before repo
Config.PaymentInterval = 24                           -- time in hours between payment being due
Config.MinimumDown = 10                               -- minimum percentage allowed down
Config.MaximumPayments = 24                           -- maximum payments allowed
Config.PreventFinanceSelling = false                  -- allow/prevent players from using /transfervehicle if financed
Config.FilterByMake = false                           -- adds a make list before selecting category in shops
Config.SortAlphabetically = true                      -- will sort make, category, and vehicle selection menus alphabetically
Config.HideCategorySelectForOne = false                -- will hide the category selection menu if a shop only sells one category of vehicle or a make has only one category
Config.Shops = {
    ['pdm'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {      --polygon that surrounds the shop
                vector2(-56.727394104004, -1086.2325439453),
                vector2(-60.612808227539, -1096.7795410156),
                vector2(-58.26834487915, -1100.572265625),
                vector2(-35.927803039551, -1109.0034179688),
                vector2(-34.427627563477, -1108.5111083984),
                vector2(-33.9, -1108.96),
                vector2(-35.95, -1114.32),
                vector2(-31.58, -1115.21),
                vector2(-27.48, -1103.42),
                vector2(-33.342102050781, -1101.0377197266),
                vector2(-31.292987823486, -1095.3717041016)
            },
            ['minZ'] = 25.0,                                         -- min height of the shop zone
            ['maxZ'] = 28.0,                                         -- max height of the shop zone
            ['size'] = 2.75                                          -- size of the vehicles zones
        },
        ['Job'] = 'none',                                            -- Name of job or none
        ['ShopLabel'] = 'Premium Deluxe Motorsport',                 -- Blip name
        ['showBlip'] = false,                                         -- true or false
        ['blipSprite'] = 326,                                        -- Blip sprite
        ['blipColor'] = 3,                                           -- Blip color
        ['TestDriveTimeLimit'] = 0.5,                                -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-45.67, -1098.34, 26.42),             -- Blip Location
        ['ReturnLocation'] = vector3(-44.74, -1082.58, 26.68),       -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-56.79, -1109.85, 26.43, 71.5),   -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(-56.79, -1109.85, 26.43, 71.5), -- Spawn location for test drive
        ['FinanceZone'] = vector3(-29.53, -1103.67, 26.42),          -- Where the finance menu is located
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-36.31, -1100.76, 25.52, 167.41), -- where the vehicle will spawn on display
                defaultVehicle = 'greenwood', -- Default display vehicle
                chosenVehicle = 'greenwood', -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-40.2, -1097.8, 25.52, 165.87), -- where the vehicle will spawn on display  vector4(-40.2, -1097.8, 26.42, 153.85)
                defaultVehicle = 'blista2', -- Default display vehicle
                chosenVehicle = 'blista2', -- Same as default but is dynamically changed when swapping vehicles
            },
            [3] = {
                coords = vector4(-46.18, -1097.96, 25.52, 122.21), -- where the vehicle will spawn on display  
                defaultVehicle = 'rhapsody', -- Default display vehicle
                chosenVehicle = 'rhapsody', -- Same as default but is dynamically changed when swapping vehicles
            },
            [4] = {
                coords = vector4(-48.35, -1093.54, 25.52, 98.97), -- where the vehicle will spawn on display  
                defaultVehicle = 'vigero', -- Default display vehicle
                chosenVehicle = 'vigero', -- Same as default but is dynamically changed when swapping vehicles
            }
        },
    },
    ['luxury'] = {
        ['Type'] = 'free-use', -- meaning a real player has to sell the car
        ['Zone'] = {
            ['Shape'] = {
                vector2(-1260.6973876953, -349.21334838867),
                vector2(-1268.6248779297, -352.87365722656),
                vector2(-1274.1533203125, -358.29794311523),
                vector2(-1273.8425292969, -362.73715209961),
                vector2(-1270.5701904297, -368.6716003418),
                vector2(-1266.0561523438, -375.14080810547),
                vector2(-1244.3684082031, -362.70278930664),
                vector2(-1249.8704833984, -352.03326416016),
                vector2(-1252.9503173828, -345.85726928711)
            },
            ['minZ'] = 36.646457672119,
            ['maxZ'] = 37.516143798828,
            ['size'] = 2.75    -- size of the vehicles zones
        },
        ['Job'] = 'cardealer', -- Name of job or none
        ['ShopLabel'] = 'Luxury Vehicle Shop',
        ['showBlip'] = false,   -- true or false
        ['blipSprite'] = 326,  -- Blip sprite
        ['blipColor'] = 3,     -- Blip color
        ['TestDriveTimeLimit'] = 0.5,
        ['Location'] = vector3(-1255.6, -361.16, 36.91),
        ['ReturnLocation'] = vector3(-1231.46, -349.86, 37.33),
        ['VehicleSpawn'] = vector4(-1231.46, -349.86, 37.33, 26.61),
        ['TestDriveSpawn'] = vector4(-1232.81, -347.99, 37.33, 23.28), -- Spawn location for test drive
        ['FinanceZone'] = vector3(-1256.18, -368.23, 36.91),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-1263.6, -353.46, 36.18, 257.2),
                defaultVehicle = 'ellie',
                chosenVehicle = 'ellie'
            },
            [2] = {
                coords = vector4(-1256.25, -367.22, 36.17, 77.45),
                defaultVehicle = 'coquette2',
                chosenVehicle = 'coquette2'
            },
            [3] = {
                coords = vector4(-1269.51, -364.69, 36.18, 246.16),
                defaultVehicle = 'nightshade',
                chosenVehicle = 'nightshade'
            },
            [4] = {
                coords = vector4(-1270.52, -358.29, 36.18, 330.29),
                defaultVehicle = 'eudora',
                chosenVehicle = 'eudora'
            },
            [5] = {
                coords = vector4(-1243.36, -359.53, 39.57, 72.84),
                defaultVehicle = 'rapidgt3',
                chosenVehicle = 'rapidgt3'
            },
            [6] = {
                coords = vector4(-1244.9, -356.24, 39.57, 70.48),
                defaultVehicle = 'stingergt',
                chosenVehicle = 'stingergt'
            },
        },
    },
    ['larrys'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {
                vector2(1237.29, 2727.74),
                vector2(1240.6, 2723.35),
                vector2(1251.28, 2720.66),
                vector2(1253.32, 2716.07),
                vector2(1252.89, 2706.18),
                vector2(1259.0, 2695.23),
                vector2(1203.97, 2693.62),
                vector2(1204.79, 2728.79),
                vector2(1215.96, 2729.65)
            },
            ['minZ'] = 36.646457672119,
            ['maxZ'] = 39.516143798828,
            ['size'] = 2.75   -- size of the vehicles zones
        },
        ['Job'] = 'none',     -- Name of job or none
        ['ShopLabel'] = 'Larrys Used Car Lot',
        ['showBlip'] = false, -- true or false
        ['blipSprite'] = 745, -- Blip sprite
        ['blipColor'] = 3,    -- Blip color
        ['TestDriveTimeLimit'] = 2.0,
        ['Location'] = vector3(1224.77, 2728.74, 36.91),
        ['ReturnLocation'] = vector3(1213.2, 2735.1, 38.01),
        ['VehicleSpawn'] = vector4(1248.18, 2715.29, 38.01, 187.39),
        ['TestDriveSpawn'] = vector4(1208.22, 2720.07, 38.0, 182.67), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(1225.68, 2703.01, 37.01, 172.19), -- triler
                defaultVehicle = 'boattrailer',
                chosenVehicle = 'boattrailer'
            },
            [2] = {
                coords = vector4(1222.27, 2702.66, 37.01, 180.52), --trailer
                defaultVehicle = 'boattrailer',
                chosenVehicle = 'boattrailer'
            },
            [3] = {
                coords = vector4(1217.8, 2702.08, 37.01, 174.54), -- trialer
                defaultVehicle = 'boattrailer',
                chosenVehicle = 'boattrailer'
            },
            [4] = {
                coords = vector4(1209.76, 2704.66, 37.01, 252.16), -- camper
                defaultVehicle = 'camper',
                chosenVehicle = 'camper'
            },
            [5] = {
                coords = vector4(1209.95, 2708.65, 37.01, 258.12), --camper
                defaultVehicle = 'camper',
                chosenVehicle = 'camper'
            },
            [6] = {
                coords = vector4(1209.89, 2712.39, 37.01, 253.46), --camper
                defaultVehicle = 'camper',
                chosenVehicle = 'camper'
            },
            [7] = {
                coords = vector4(1218.29, 2712.58, 37.01, 230.66),  --small trailer
                defaultVehicle = 'trailersmall',
                chosenVehicle = 'trailersmall'
            },
            [8] = {
                coords = vector4(1229.34, 2712.7, 37.01, 125.73), --small trailer
                defaultVehicle = 'trailersmall',
                chosenVehicle = 'trailersmall'
            },
            [9] = {
                coords = vector4(1210.15, 2717.08, 37.0, 251.51), --camper
                defaultVehicle = 'camper',
                chosenVehicle = 'camper'
            },
            [10] = {
                coords = vector4(1217.67, 2720.97, 37.0, 185.29), --
                defaultVehicle = 'journey2',
                chosenVehicle = 'journey2'
            },
            [11] = {
                coords = vector4(1220.83, 2721.38, 37.0, 185.77), --
                defaultVehicle = 'journey2',
                chosenVehicle = 'journey2'
            },
            [12] = {
                coords = vector4(1224.03, 2721.74, 37.0, 190.23), --camper
                defaultVehicle = 'journey2',
                chosenVehicle = 'journey2'
            },
            [13] = {
                coords = vector4(1228.02, 2720.84, 37.0, 192.23), --journey2
                defaultVehicle = 'journey2',
                chosenVehicle = 'journey2'
            },
        }
    },                         -- Add your next table under this comma
    ['rogers'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {
                vector2(-468.36, -1725.92), -- vector3(, 18.69)
                vector2(-475.3, -1705.1),   -- vector3(, 18.7)
                vector2(-446.61, -1689.36), -- vector3(, 18.99)
                vector2(-412.62, -1706.74), -- vector3(, 19.51)
                vector2(-419.09, -1724.39), -- vector3(, 19.43)
                vector2(-448.44, -1735.53), -- vector3(, 18.71)
            },
            ['minZ'] = 6.646457672119,
            ['maxZ'] = 39.516143798828,
            ['size'] = 2.75   -- size of the vehicles zones
        },
        ['Job'] = 'none',     -- Name of job or none
        ['ShopLabel'] = 'Rogers Scrap Emporium',
        ['showBlip'] = false, -- true or false
        ['blipSprite'] = 326, -- Blip sprite
        ['blipColor'] = 3,    -- Blip color
        ['TestDriveTimeLimit'] = 2.0,
        ['Location'] = vector3(-458.49, -1715.73, 18.64),
        ['ReturnLocation'] = vector4(-451.48, -1693.97, 18.94, 156.99),
        ['VehicleSpawn'] = vector4(-451.48, -1693.97, 18.94, 156.99),
        ['TestDriveSpawn'] = vector4(-451.48, -1693.97, 18.94, 156.99), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-467.58, -1721.33, 17.65, 280.46),
                defaultVehicle = 'ratloader',
                chosenVehicle = 'ratloader'
            },
            [2] = {
                coords = vector4(-468.74, -1717.65, 17.69, 281.52),
                defaultVehicle = 'surfer2',
                chosenVehicle = 'surfer2'
            },
            [3] = {
                coords = vector4(-451.24, -1716.21, 17.73, 64.74),
                defaultVehicle = 'tornado3',
                chosenVehicle = 'tornado3'
            },
            [4] = {
                coords = vector4(-450.83, -1719.91, 17.7, 61.7),
                defaultVehicle = 'voodoo2',
                chosenVehicle = 'voodoo2'
            },
            [5] = {
                coords = vector4(-451.49, -1723.91, 17.69, 70.48),
                defaultVehicle = 'ratbike',
                chosenVehicle = 'ratbike'
            },
            [6] = {
                coords = vector4(-464.22, -1707.29, 17.74, 179.73),
                defaultVehicle = 'tornado4',
                chosenVehicle = 'tornado4'
            },
        }
    },                         -- Add your next table under this comma
    ['sportbikes'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {
                vector2(-858.84, -204.22), --
                vector2(-873.96, -204.24), --
                vector2(-883.41, -185.71), --   vector3(-863.2, -199.75, 37.85)
                vector2(-872.48, -180.03), --
            },
            ['minZ'] = 6.646457672119,
            ['maxZ'] = 40.516143798828,
            ['size'] = 2.75   -- size of the vehicles zones
        },
        ['Job'] = 'none',     -- Name of job or none
        ['ShopLabel'] = 'Rockford Hills Motorcycles',
        ['showBlip'] = false, -- true or false
        ['blipSprite'] = 326, -- Blip sprite
        ['blipColor'] = 3,    -- Blip color
        ['TestDriveTimeLimit'] = 2.0,
        ['Location'] = vector3(-871.43, -193.56, 36.84),
        ['ReturnLocation'] = vector4(-869.97, -196.2, 36.84, 30.92),
        ['VehicleSpawn'] = vector4(-869.97, -196.2, 36.84, 30.92),
        ['TestDriveSpawn'] = vector4(-869.97, -196.2, 36.84, 30.92), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-876.97, -194.02, 36.87, 338.56), --
                defaultVehicle = 'akuma',
                chosenVehicle = 'akuma'
            },
            [2] = {
                coords = vector4(-878.45, -191.3, 36.87, 333.92), --
                defaultVehicle = 'bati',
                chosenVehicle = 'bati'
            },
            [3] = {
                coords = vector4(-879.97, -188.75, 36.87, 333.06), --
                defaultVehicle = 'diablous2',
                chosenVehicle = 'diablous2'
            },
            [4] = {
                coords = vector4(-876.4, -183.61, 36.87, 151.08), --
                defaultVehicle = 'double',
                chosenVehicle = 'double'
            },
            [5] = {
                coords = vector4(-871.8, -184.23, 36.87, 158.29), --
                defaultVehicle = 'fcr',
                chosenVehicle = 'fcr'
            },
            [6] = {
                coords = vector4(-870.28, -186.81, 36.87, 152.95), --
                defaultVehicle = 'fcr2',
                chosenVehicle = 'fcr2'
            },
            [7] = {
                coords = vector4(-868.78, -189.37, 36.87, 151.61), --
                defaultVehicle = 'pcj',
                chosenVehicle = 'pcj'
            },
            [8] = {
                coords = vector4(-864.0, -197.63, 36.87, 155.58), --
                defaultVehicle = 'shinobi',
                chosenVehicle = 'shinobi'
            },
            [9] = {
                coords = vector4(-862.63, -199.95, 36.87, 155.09), --
                defaultVehicle = 'vader',
                chosenVehicle = 'vader'
            },
            [10] = {
                coords = vector4(-861.27, -202.3, 36.87, 151.87), --
                defaultVehicle = 'esskey',
                chosenVehicle = 'esskey'
            },
        }
    },                         -- Add your next table under this comma
    ['choppers'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {
                vector2(52.97, 6458.98), --
                vector2(32.84, 6438.2),  --
                vector2(10.44, 6464.22), --
                vector2(26.75, 6468.35), --
            },
            ['minZ'] = 6.646457672119,
            ['maxZ'] = 40.516143798828,
            ['size'] = 2.75   -- size of the vehicles zones
        },
        ['Job'] = 'none',     -- Name of job or none
        ['ShopLabel'] = 'Rockford Hills Motorcycles',
        ['showBlip'] = false, -- true or false
        ['blipSprite'] = 326, -- Blip sprite
        ['blipColor'] = 3,    -- Blip color
        ['TestDriveTimeLimit'] = 2.0,
        ['Location'] = vector3(-871.43, -193.56, 36.84),
        ['ReturnLocation'] = vector4(32.28, 6458.2, 31.43, 238.26),
        ['VehicleSpawn'] = vector4(32.28, 6458.2, 31.43, 238.26),
        ['TestDriveSpawn'] = vector4(32.28, 6458.2, 31.43, 238.26), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(32.8, 6445.4, 30.43, 253.22), --
                defaultVehicle = 'avarus',
                chosenVehicle = 'avarus'
            },
            [2] = {
                coords = vector4(34.22, 6447.22, 30.43, 255.67), --
                defaultVehicle = 'bagger',
                chosenVehicle = 'bagger'
            },
            [3] = {
                coords = vector4(36.0, 6448.91, 30.43, 246.84), --
                defaultVehicle = 'chimera',
                chosenVehicle = 'chimera'
            },
            [4] = {
                coords = vector4(47.32, 6460.03, 30.43, 183.32), --
                defaultVehicle = 'cliffhanger',
                chosenVehicle = 'cliffhanger'
            },
            [5] = {
                coords = vector4(45.57, 6458.66, 30.43, 183.2), --
                defaultVehicle = 'daemon',
                chosenVehicle = 'daemon'
            },
            [6] = {
                coords = vector4(43.42, 6456.53, 30.43, 168.98), --
                defaultVehicle = 'daemon2',
                chosenVehicle = 'daemon2'
            },
            [7] = {
                coords = vector4(32.27, 6452.81, 30.43, 17.31), --
                defaultVehicle = 'deathbike',
                chosenVehicle = 'deathbike'
            },
            [8] = {
                coords = vector4(30.32, 6450.92, 30.43, 21.59), --
                defaultVehicle = 'gargoyle',
                chosenVehicle = 'gargoyle'
            },
            [9] = {
                coords = vector4(27.66, 6449.07, 30.43, 37.08), --
                defaultVehicle = 'hexer',
                chosenVehicle = 'hexer'
            },
            [10] = {
                coords = vector4(25.25, 6462.74, 30.43, 180.53), --
                defaultVehicle = 'innovation',
                chosenVehicle = 'innovation'
            },
            [11] = {
                coords = vector4(27.56, 6465.0, 30.43, 195.94), --
                defaultVehicle = 'sovereign',
                chosenVehicle = 'sovereign'
            },
        }
    },                         -- Add your next table under this comma
    ['helmuts'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {
                vector2(-229.37, 6176.82), --
                vector2(-266.82, 6215.8),  --
                vector2(-231.69, 6251.98), --
                vector2(-195.93, 6204.29), --
            },
            ['minZ'] = 6.646457672119,
            ['maxZ'] = 40.516143798828,
            ['size'] = 2.75   -- size of the vehicles zones
        },
        ['Job'] = 'none',     -- Name of job or none
        ['ShopLabel'] = 'Rockford Hills Motorcycles',
        ['showBlip'] = false, -- true or false
        ['blipSprite'] = 326, -- Blip sprite
        ['blipColor'] = 3,    -- Blip color
        ['TestDriveTimeLimit'] = 2.0,
        ['Location'] = vector3(-871.43, -193.56, 36.84),
        ['ReturnLocation'] = vector4(-222.6, 6234.81, 30.49, 47.22),
        ['VehicleSpawn'] = vector4(-222.6, 6234.81, 30.49, 47.22),
        ['TestDriveSpawn'] = vector4(-222.6, 6234.81, 30.49, 47.22), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-239.88, 6211.88, 30.95, 49.85), --
                defaultVehicle = 'manchez',
                chosenVehicle = 'manchez'
            },
            [2] = {
                coords = vector4(-234.66, 6215.05, 30.95, 132.87), --
                defaultVehicle = 'enduro',
                chosenVehicle = 'enduro'
            },
            [3] = {
                coords = vector4(-242.73, 6216.88, 30.95, 127.3), --
                defaultVehicle = 'winky',
                chosenVehicle = 'winky'
            },
            [4] = {
                coords = vector4(-225.55, 6205.1, 30.49, 194.1), --
                defaultVehicle = 'yosemite3',
                chosenVehicle = 'yosemite3'
            },
            [5] = {
                coords = vector4(-221.54, 6208.31, 30.49, 211.11), --
                defaultVehicle = 'rebel2',
                chosenVehicle = 'rebel2'
            },
            [6] = {
                coords = vector4(-217.3, 6211.7, 30.49, 192.68), --
                defaultVehicle = 'rancherxl',
                chosenVehicle = 'rancherxl'
            },
            [7] = {
                coords = vector4(-224.03, 6226.05, 30.75, 89.99), --  nice podemium
                defaultVehicle = 'seminole2',
                chosenVehicle = 'seminole2'
            },
            [8] = {
                coords = vector4(-232.78, 6224.81, 30.49, 6.93), --
                defaultVehicle = 'bifta',
                chosenVehicle = 'bifta'
            },
            [9] = {
                coords = vector4(-223.36, 6217.73, 30.49, 87.24), --
                defaultVehicle = 'bodhi2',
                chosenVehicle = 'bodhi2'
            },
            [10] = {
                coords = vector4(-215.87, 6225.49, 30.49, 3.58), --
                defaultVehicle = 'kalahari',
                chosenVehicle = 'kalahari'
            },
        }
    },
    --[[ ['boats'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a vehicle
        ['Zone'] = {
            ['Shape'] = {      --polygon that surrounds the shop
                vector2(-729.39, -1315.84),
                vector2(-766.81, -1360.11),
                vector2(-754.21, -1371.49),
                vector2(-716.94, -1326.88)
            },
            ['minZ'] = 0.0,                                            -- min height of the shop zone
            ['maxZ'] = 5.0,                                            -- max height of the shop zone
            ['size'] = 6.2                                             -- size of the vehicles zones
        },
        ['Job'] = 'none',                                              -- Name of job or none
        ['ShopLabel'] = 'Marina Shop',                                 -- Blip name
        ['showBlip'] = true,                                           -- true or false
        ['blipSprite'] = 410,                                          -- Blip sprite
        ['blipColor'] = 3,                                             -- Blip color
        ['TestDriveTimeLimit'] = 1.5,                                  -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-738.25, -1334.38, 1.6),                -- Blip Location
        ['ReturnLocation'] = vector3(-714.34, -1343.31, 0.0),          -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-727.87, -1353.1, -0.17, 137.09),   -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(-722.23, -1351.98, 0.14, 135.33), -- Spawn location for test drive
        ['FinanceZone'] = vector3(-729.86, -1319.13, 1.6),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-727.05, -1326.59, 0.00, 229.5), -- where the vehicle will spawn on display
                defaultVehicle = 'seashark',                      -- Default display vehicle
                chosenVehicle = 'seashark'                        -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-732.84, -1333.5, -0.50, 229.5),
                defaultVehicle = 'dinghy',
                chosenVehicle = 'dinghy'
            },
            [3] = {
                coords = vector4(-737.84, -1340.83, -0.50, 229.5),
                defaultVehicle = 'speeder',
                chosenVehicle = 'speeder'
            },
            [4] = {
                coords = vector4(-741.53, -1349.7, -2.00, 229.5),
                defaultVehicle = 'marquis',
                chosenVehicle = 'marquis'
            },
        },
    },
    ['air'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a vehicle
        ['Zone'] = {
            ['Shape'] = {      --polygon that surrounds the shop
                vector2(-1607.58, -3141.7),
                vector2(-1672.54, -3103.87),
                vector2(-1703.49, -3158.02),
                vector2(-1646.03, -3190.84)
            },
            ['minZ'] = 12.99,                                            -- min height of the shop zone
            ['maxZ'] = 16.99,                                            -- max height of the shop zone
            ['size'] = 7.0,                                              -- size of the vehicles zones
        },
        ['Job'] = 'none',                                                -- Name of job or none
        ['ShopLabel'] = 'Air Shop',                                      -- Blip name
        ['showBlip'] = true,                                             -- true or false
        ['blipSprite'] = 251,                                            -- Blip sprite
        ['blipColor'] = 3,                                               -- Blip color
        ['TestDriveTimeLimit'] = 1.5,                                    -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-1652.76, -3143.4, 13.99),                -- Blip Location
        ['ReturnLocation'] = vector3(-1628.44, -3104.7, 13.94),          -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-1617.49, -3086.17, 13.94, 329.2),    -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(-1625.19, -3103.47, 13.94, 330.28), -- Spawn location for test drive
        ['FinanceZone'] = vector3(-1619.52, -3152.64, 14.0),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-1651.36, -3162.66, 12.99, 346.89), -- where the vehicle will spawn on display
                defaultVehicle = 'volatus',                          -- Default display vehicle
                chosenVehicle = 'volatus'                            -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-1668.53, -3152.56, 12.99, 303.22),
                defaultVehicle = 'luxor2',
                chosenVehicle = 'luxor2'
            },
            [3] = {
                coords = vector4(-1632.02, -3144.48, 12.99, 31.08),
                defaultVehicle = 'nimbus',
                chosenVehicle = 'nimbus'
            },
            [4] = {
                coords = vector4(-1663.74, -3126.32, 12.99, 275.03),
                defaultVehicle = 'frogger',
                chosenVehicle = 'frogger'
            },
        },
    },
    ['truck'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {      --polygon that surrounds the shop
                vector2(856.91046142578, -1181.4660644532),
                vector2(922.666015625, -1178.8934326172),
                vector2(921.7074584961, -1153.4362792968),
                vector2(894.02233886718, -1153.185180664),
                vector2(894.08135986328, -1154.2734375),
                vector2(887.91284179688, -1154.3431396484),
                vector2(887.76403808594, -1155.2556152344),
                vector2(872.04608154296, -1155.3488769532),
                vector2(872.05163574218, -1139.1412353516),
                vector2(857.6060180664, -1139.501953125)
            },
            ['minZ'] = 22.0,                                         -- min height of the shop zone
            ['maxZ'] = 28.0,                                         -- max height of the shop zone
            ['size'] = 5.75                                          -- size of the vehicles zones
        },
        ['Job'] = 'none',                                            -- Name of job or none
        ['ShopLabel'] = 'Truck Motor Shop',                          -- Blip name
        ['showBlip'] = true,                                         -- true or false
        ['blipSprite'] = 477,                                        -- Blip sprite
        ['blipColor'] = 2,                                           -- Blip color
        ['TestDriveTimeLimit'] = 0.5,                                -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(900.47, -1155.74, 25.16),             -- Blip Location
        ['ReturnLocation'] = vector3(900.47, -1155.74, 25.16),       -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(909.35, -1181.58, 25.55, 177.57), -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(867.65, -1192.4, 25.37, 95.72), -- Spawn location for test drive
        ['FinanceZone'] = vector3(900.46, -1154.86, 25.16),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(890.84, -1170.92, 25.08, 269.58), -- where the vehicle will spawn on display
                defaultVehicle = 'hauler',                         -- Default display vehicle
                chosenVehicle = 'hauler',                          -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(878.45, -1171.04, 25.05, 273.08),
                defaultVehicle = 'phantom',
                chosenVehicle = 'phantom'
            },
            [3] = {
                coords = vector4(880.44, -1163.59, 24.87, 273.08),
                defaultVehicle = 'mule',
                chosenVehicle = 'mule'
            },
            [4] = {
                coords = vector4(896.95, -1162.62, 24.98, 273.08),
                defaultVehicle = 'mixer',
                chosenVehicle = 'mixer'
            },
        },
    }, ]]
}
