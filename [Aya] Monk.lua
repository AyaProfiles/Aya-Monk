TellMeWhenDB = {
	["Version"] = 90301,
	["profiles"] = {
		["[Aya] Monk"] = {
			["CodeSnippets"] = {
				{
					["Name"] = "ProfileUI",
					["Code"] = "--#########################################\n--######### AYA'S MONK PROFILE UI##########\n--#########################################\n\nlocal _G, select, setmetatable                        = _G, select, setmetatable\n\nlocal TMW                                             = _G.TMW \n\nlocal A                                             = _G.Action\nlocal CONST                                            = A.Const\nlocal toNum                                         = A.toNum\nlocal Print                                            = A.Print\nlocal GetSpellInfo                                    = A.GetSpellInfo\nlocal GetToggle                                        = A.GetToggle\nlocal GetLatency                                    = A.GetLatency\nlocal InterruptIsValid                                = A.InterruptIsValid\nlocal Unit                                            = A.Unit \n\nlocal ACTION_CONST_MONK_BREWMASTER                    = CONST.MONK_BREWMASTER\nlocal ACTION_CONST_MONK_MISTWEAVER                    = CONST.MONK_MISTWEAVER\nlocal ACTION_CONST_MONK_WINDWALKER                    = CONST.MONK_WINDWALKER\n\nlocal S                                                = {\n    PurifyingBrew                                    = (GetSpellInfo(119582)),\n    ZenMeditation                                    = (GetSpellInfo(115176)),\n    CelestialBrew                                    = (GetSpellInfo(322507)),\n    HealingElixir                                    = (GetSpellInfo(122281)),\n    Stoneform                                        = (GetSpellInfo(20594)),\n    DampenHarm                                        = (GetSpellInfo(122278)),\n    FortifyingBrew                                    = (GetSpellInfo(115203)),\n    DiffuseMagic                                    = (GetSpellInfo(122783)),\n    RenewingMist                                    = (GetSpellInfo(115151)),\n    SoothingMist                                    = (GetSpellInfo(115175)),\n    LifeCocoon                                        = (GetSpellInfo(116849)),\n    SpinningCraneKick                                = (GetSpellInfo(101546)),\n    RisingSunKick                                    = (GetSpellInfo(107428)),\n    RenewingMist                                    = (GetSpellInfo(115151)),\n    EnvelopingMist                                    = (GetSpellInfo(124682)),\n    SurgingMist                                        = (GetSpellInfo(227344)),\n    Vivify                                            = (GetSpellInfo(116670)),\n    EssenceFont                                        = (GetSpellInfo(191837)),\n    Revival                                            = (GetSpellInfo(115310)),\n    ThunderFocusTea                                    = (GetSpellInfo(116680)),\n    ZenFocusTea                                        = (GetSpellInfo(209584)),\n    RefreshingJadeWind                                = (GetSpellInfo(196725)),\n    HealingSphere                                    = (GetSpellInfo(205234)),\n    Paralysis                                        = (GetSpellInfo(115078)),\n    GrappleWeapon                                    = (GetSpellInfo(233759)),\n    ReverseHarm                                        = (GetSpellInfo(287771)),\n    TouchofKarma                                    = (GetSpellInfo(122470)),\n    TouchofDeath                                    = (GetSpellInfo(115080)),\n    StormEarthAndFire                                = (GetSpellInfo(137639)),\n    SolarBeam                                        = (GetSpellInfo(78675)),\n    FlyingSerpentKick                                = (GetSpellInfo(101545)),\n    LegSweep                                        = (GetSpellInfo(119381)),\n}\n\nlocal L                                             = {}\nL.AUTO                                                = {\n    enUS = \"Auto\",\n    ruRU = \"Авто \",\n}\nL.OFF                                                = {\n    enUS = \"Off\",\n    ruRU = \"Выкл.\",\n}\nL.PVP                                                 = {\n    ANY = \"PvP\",\n}\nL.SHOULDPURIFY                                        = {\n    ANY = S.PurifyingBrew,\n}\nL.PURIFYINGBREW                                        = {\n    enUS = S.PurifyingBrew .. \" Level\",\n    ruRU = S.PurifyingBrew .. \" Уровень\",\n}\nL.PURIFYINGBREWTT                                    = {\n    enUS = \"Stagger level on which need\\n'\" .. S.PurifyingBrew .. \"' (5 super high, 1 very low)\\n\\nRight click: Create macro\", \n    ruRU = \"Уровень пошатывания на котором\\nнужно '\" .. S.PurifyingBrew .. \"' (5 супер много, 1 очень мало)\\n\\nПравая кнопка мышки: Создать макрос\", \n}\nL.SHOULDPURIFY_LEVEL2                                = {\n    enUS = \"Level 2\",\n    ruRU = \"Уровень 2\",\n}\nL.SHOULDPURIFY_LEVEL3                                = {\n    enUS = \"Level 3\",\n    ruRU = \"Уровень 3\",\n}\nL.SHOULDPURIFY_LEVEL4                                = {\n    enUS = \"Level 4\",\n    ruRU = \"Уровень 4\",\n}\nL.SHOULDPURIFY_LEVEL5                                = {\n    enUS = \"Level 5\",\n    ruRU = \"Уровень 5\",\n}\nL.ZENMEDITATION                                        = {\n    enUS = S.ZenMeditation .. \"\\nHealth Percent\",\n    ruRU = S.ZenMeditation .. \"\\nПроцент Здоровья\",\n}\nL.CelestialBrew                                                = {\n    enUS = S.CelestialBrew .. \"\\nHealth Percent\",\n    ruRU = S.CelestialBrew .. \"\\nПроцент Здоровья\",\n}\nL.ADDITIONALTAUNT                                    = {\n    enUS = \"Additional Taunt\",\n    ruRU = \"Дополнительный Таунт\",\n}\nL.ADDITIONALTAUNT_INVOKENIUZAOTHEBLACKOX            = {\n    enUS = \"Invoke Niuzao the BlackOx\",\n    ruRU = \"Призыв Нюцзао, Черного Быка\",\n}\nL.ADDITIONALTAUNT_SUMMONBLACKOXSTATUE                = {\n    enUS = \"Summon BlackOx Statue\",\n    ruRU = \"Призыв статуи Черного Быка\",\n}\nL.ADDITIONALTAUNT_PROVOKEONBLACKOXSTATUE            = {\n    enUS = \"'Provoke' On BlackOx Statue\",\n    ruRU = \"'Вызов' на статую Черного Быка\",\n}\nL.MOUSEOVER                                            = {\n    enUS = \"Use\\n@mouseover\", \n    ruRU = \"Использовать\\n@mouseover\", \n}\nL.MOUSEOVERTT                                        = {\n    enUS = \"Will unlock use actions for @mouseover units\\nExample: Resuscitate, Healing\\n\\nRight click: Create macro\", \n    ruRU = \"Разблокирует использование действий для @mouseover юнитов\\nНапример: Воскрешение, Хилинг\\n\\nПравая кнопка мышки: Создать макрос\", \n}\nL.FOCUSTARGET                                        = {\n    enUS = \"Use\\n@focustarget\", \n    ruRU = \"Использовать\\n@focustarget\",  \n}\nL.FOCUSTARGETTT                                        = {\n    enUS = \"Will unlock use actions\\nfor enemy @focustarget units\\n\\nRight click: Create macro\", \n    ruRU = \"Разблокирует использование\\nдействий для вражеских @focustarget юнитов\\n\\nПравая кнопка мышки: Создать макрос\", \n}\nL.TARGETTARGET                                        = {\n    enUS = \"Use\\n@targettarget\", \n    ruRU = \"Использовать\\n@targettarget\",  \n}\nL.TARGETTARGETTT                                    = {\n    enUS = \"Will unlock use actions\\nfor enemy @targettarget units\\n\\nRight click: Create macro\", \n    ruRU = \"Разблокирует использование\\nдействий для вражеских @targettarget юнитов\\n\\nПравая кнопка мышки: Создать макрос\",  \n}\nL.AOE                                                = {\n    enUS = \"Use\\nAoE\", \n    ruRU = \"Использовать\\nAoE\", \n}\nL.AOETT                                                = {\n    enUS = \"Enable multiunits rotation\\n\\nRight click: Create macro\", \n    ruRU = \"Включает ротацию для нескольких целей\\n\\nПравая кнопка мышки: Создать макрос\", \n}\nL.DEFENSIVE                                            = {\n    enUS = \"Self Defensive\",\n    ruRU = \"Своя Оборона\",\n}\nL.HEALINGELIXIR                                        = {\n    enUS = S.HealingElixir .. \"\\nHealth Percent\",\n    ruRU = S.HealingElixir .. \"\\nПроцент Здоровья\",\n}\nL.STONEFORM                                            = {\n    enUS = S.Stoneform .. \"\\nHealth Percent\",\n    ruRU = S.Stoneform .. \"\\nПроцент Здоровья\",\n}\nL.DAMPENHARM                                        = {\n    enUS = S.DampenHarm .. \"\\nHealth Percent\",\n    ruRU = S.DampenHarm .. \"\\nПроцент Здоровья\",\n}\nL.FORTIFYINGBREW                                    = {\n    enUS = S.FortifyingBrew .. \"\\nHealth Percent\",\n    ruRU = S.FortifyingBrew .. \"\\nПроцент Здоровья\",\n}\nL.DIFFUSEMAGIC                                        = {\n    enUS = S.DiffuseMagic .. \"\\nHealth Percent\",\n    ruRU = S.DiffuseMagic .. \"\\nПроцент Здоровья\",\n}\nL.MANA_POTION                                        = {\n    enUS = \"Mana Potion\\nMana Percent\",\n    ruRU = \"Мана Зелье\\nПроцент Маны\",\n}\nL.HEALINGSYSTEM                                        = {\n    enUS = \"Healing System\",\n    ruRU = \"Система Исцеления\",\n}\nL.HEALINGENGINEAUTOHOT                                = {\n    enUS = \"Auto HoTs\",\n    ruRU = \"Авто ХоТы\",\n}\nL.HEALINGENGINEAUTOHOTTT                            = {\n    enUS = \"Will select in @target a member\\nwhich hasn't applied '\" .. S.RenewingMist .. \"'\\n\\nRight click: Create macro\",\n    ruRU = \"Будет выбирать в @target участника\\nкоторый не имеет наложенного '\" .. S.RenewingMist .. \"'\\n\\nПравая кнопка мышки: Создать макрос\",\n}\nL.HEALINGENGINEPREVENTSUGGEST                        = {\n    enUS = S.SoothingMist .. \"\\nNext @target - Difference HP\",\n    ruRU = S.SoothingMist .. \"\\nСлед. @target - Разница ХП\",\n}\nL.HEALINGENGINEPREVENTSUGGESTTT                        = {\n    enUS = \"If \" .. S.SoothingMist .. \"' is channeling,\\nthen before choosing a new @target condition will be checked,\\nthat difference in health percent between current unit and next unit >= value of slider\\nIf condition is true, then next @target will be selected, otherwise we will continue healing current unit\\n\\nCondition will skip if next unit require dispel or utils\\n\\nRight click: Create macro\",\n    ruRU = \"Если '\" .. S.SoothingMist .. \"' произносится,\\nто прежде чем выбрать новый @target будет проверяться условие,\\nчто разница в процентах здоровья между текущим юнитом и след. юнитом >= значению ползунка\\nЕсли условие соблюдено, то след. @target будет выбран, в ином случае мы продолжаем исцеление текущего юнита\\n\\nУсловие будет пропускаться если след. юнит требует диспела или утилит\\n\\nПравая кнопка мышки: Создать макрос\",\n}\nL.ROTATION                                            = {\n    enUS = \"Rotation\",\n    ruRU = \"Ротация\",\n}\nL.EMERGENCYSINGLEROTATION                            = {\n    enUS = \"Emergency Single Rotation\",\n    ruRU = \"Экстренная Одиноч. Ротация\",\n}\nL.EMERGENCYSINGLEROTATIONTT                            = {\n    enUS = \"Changes priority of rotation if unit is in an emergency\\nEmergency rotation has own logic, nor depended by settings below!\\n\\nRight click: Create macro\",\n    ruRU = \"Меняет приоритет ротации если юнит находится в критическом положении\\nЭкстренная ротация имеет свою логику, не зависящая от настроек ниже!\\n\\nПравая кнопка мышки: Создать макрос\",\n}\nL.MAINTAINSTATUECAST                                = {\n    enUS = \"Jade Serpent Statue\\nMaintain Cast\",\n    ruRU = \"Статуя Нефритовой Змеи\\nПоддерживать Произнесение\",\n}\nL.MAINTAINSTATUECASTTT                                = {\n    enUS = \"PvP: Prioritization by most inc. damage\\nPvE: Prioritization by active tank\\n\\nRight click: Create macro\",\n    ruRU = \"PvP: Приоритезация по наиболее вход. урону\\nPvE: Приоритезация по активному танку\\n\\nПравая кнопка мышки: Создать макрос\",\n}\nL.LIFECOCOON                                        = {\n    enUS = S.LifeCocoon .. \" - Health Percent\",\n    ruRU = S.LifeCocoon .. \" - Процент Здоровья\",\n}\nL.THUNDERFOCUSTEAOPTIONS                            = {\n    enUS = S.ThunderFocusTea .. \"\\nOptions\",\n    ruRU = S.ThunderFocusTea .. \"\\nОпции\",\n}\nL.THUNDERFOCUSTEAOPTIONS_VIVIFY_MANA_SAVE            = {\n    enUS = S.Vivify .. \" (On Mana Save)\",\n    ruRU = S.Vivify .. \" (На Сохр. Маны)\",\n}\nL.THUNDERFOCUSTEAOPTIONS_VIVIFY_ON_CD                = {\n    enUS = S.Vivify .. \" (On CD)\",\n    ruRU = S.Vivify .. \" (По КД)\",\n}\nL.ZENFOCUSTEAOPTIONS                                = {\n    enUS = S.ZenFocusTea .. \"\\nOptions\",\n    ruRU = S.ZenFocusTea .. \"\\nОпции\",\n}\nL.ZENFOCUSTEAOPTIONS_ROOTED                            = {\n    enUS = \"While rooted to catch \" .. S.SolarBeam,\n    ruRU = \"Пока в рутах, чтобы поймать \" .. S.SolarBeam,\n}\nL.SOOTHINGMIST_STOPCAST_OPTIONS_PRIMARY                = {\n    enUS = \"/stopcasting - @primary unit changed\",\n    ruRU = \"/stopcasting - @главный юнит сменился\",\n}\nL.SOOTHINGMIST_STOPCAST_OPTIONS_MAXHP                = {\n    enUS = \"/stopcasting - @primary unit at full health\",\n    ruRU = \"/stopcasting - @главный юнит на полном здоровье\",\n}\nL.SOOTHINGMIST_STOPCAST_OPTIONS                        = {\n    enUS = S.SoothingMist .. \"\\nOptions\",\n    ruRU = S.SoothingMist .. \"\\nОпции\",\n}\nL.SOOTHINGMIST_STOPCAST_OPTIONSTT                    = {\n    enUS = \"/stopcasting options works if 'Stop Cast' is enabled in 'General' tab\\n\\nRight click: Create macro\",\n    ruRU = \"/stopcasting опции работают если 'Стоп Каст' включен в вкладке 'Общее'\\n\\nПравая кнопка мышки: Создать макрос\",\n}\nL.SOOTHINGMIST_WORKOPTIONS_ANY                        = {\n    enUS = \"Any Units\",\n    ruRU = \"Любые Юниты\",\n}\nL.SOOTHINGMIST_WORKOPTIONS_TANKING                    = {\n    enUS = \"Tanking Units\",\n    ruRU = \"Танкующие Юниты\",\n}\nL.SOOTHINGMIST_WORKOPTIONS_FOCUSED                    = {\n    enUS = \"Focused Units (PvP)\",\n    ruRU = \"Нацеленные Юниты (PvP)\",\n}\nL.SOOTHINGMIST_WORKOPTIONS_MOSTINC                    = {\n    enUS = \"Mostly Inc. Damage Units\",\n    ruRU = \"Наибол. Вход. Урон Юниты\",\n}\nL.SOOTHINGMIST_WORKOPTIONS_HPSINCDMG                = {\n    enUS = \"HPS Deficit Units\",\n    ruRU = \"ХПС Дефицит Юниты\",\n}\nL.SOOTHINGMIST_WORKOPTIONS                            = {\n    enUS = S.SoothingMist .. \" (filler)\\nWork Mode\",\n    ruRU = S.SoothingMist .. \" (филлер)\\nРежим Работы\",\n}\nL.SOOTHINGMISTHP                                    = {\n    enUS = S.SoothingMist .. \" (filler)\\nHealth Percent\",\n    ruRU = S.SoothingMist .. \" (филлер)\\nПроцент Здоровья\",\n}\nL.SOOTHINGMISTHPTT                                    = {\n    enUS = \"Health Percent on which casting '\" .. S.SoothingMist .. \"' (as filler!)\\n\\nRight click: Create macro\", \n    ruRU = \"Процент Здоровья на котором произносить '\" .. S.SoothingMist .. \"' (как филлер!)\\n\\nПравая кнопка мышки: Создать макрос\", \n}\nL.LIMITTT                                            = {\n    enUS = \"The limit means that the ability only works when <= values\\nThis is only a limit so as not to go above the value, not a fixed condition!\\n\\nRight click: Create macro\",\n    ruRU = \"Лимит означает, что способность работает только когда <= значения\\nЭто только лимит, чтобы не идти выше значения, а не фиксированное условие!\\n\\nПравая кнопка мышки: Создать макрос\",\n}\nL.VIVIFYHP                                            = {\n    enUS = S.Vivify .. \" (limit)\\nHealth Percent\",\n    ruRU = S.Vivify .. \" (лимит)\\nПроцент Здоровья\",\n}\nL.SURGINGMISTHP                                        = {\n    enUS = S.SurgingMist .. \" (limit)\\nHealth Percent\",\n    ruRU = S.SurgingMist .. \" (лимит)\\nПроцент Здоровья\",\n}\nL.ENVELOPINGMISTHP                                    = {\n    enUS = S.EnvelopingMist .. \" (limit)\\nHealth Percent\",\n    ruRU = S.EnvelopingMist .. \" (лимит)\\nПроцент Здоровья\",\n}\nL.REVIVALDISPELUNITS                                = {\n    enUS = S.Revival .. \"\\nMass Dispel Units\",\n    ruRU = S.Revival .. \"\\nМасс Диспел Юнитов\",\n}\nL.REVIVALDISPELUNITSTT                                = {\n    enUS = \"Count of units which must be dispeled at same time\\nCan not be higher than maximum of select able members\\n\\nRight click: Create macro\",\n    ruRU = \"Кол-во юнитов, которые должны быть задиспелены сразу\\nНе может быть выше чем максимум доступных по выбору участников\\n\\nПравая кнопка мышки: Создать макрос\",\n}\nL.EACHUNITTT                                        = {\n    enUS = \"Health in percent per each unit <= value\\n\\nRight click: Create macro\",\n    ruRU = \"Здоровье в процентах по каждому юниту <= значение\\n\\nПравая кнопка мышки: Создать макрос\",\n}\nL.TOTALUNITSTT                                        = {\n    enUS = \"Total number of units\\n\\nRight click: Create macro\",\n    ruRU = \"Суммарное количество юнитов\\n\\nПравая кнопка мышки: Создать макрос\",\n}\nL.REVIVALHP                                            = {\n    enUS = S.Revival .. \"\\nEach Unit HP\",\n    ruRU = S.Revival .. \"\\nКаждый Юнит ХП\",\n}\nL.REVIVALUNITS                                        = {\n    enUS = S.Revival .. \"\\nTotal Units\",\n    ruRU = S.Revival .. \"\\nКол-во Юнитов\",\n}\nL.ESSENCEFONTHP                                        = {\n    enUS = S.EssenceFont .. \"\\nEach Unit HP\",\n    ruRU = S.EssenceFont .. \"\\nКаждый Юнит ХП\",\n}\nL.ESSENCEFONTUNITS                                    = {\n    enUS = S.EssenceFont .. \"\\nTotal Units\",\n    ruRU = S.EssenceFont .. \"\\nКол-во Юнитов\",\n}\nL.REFRESHINGJADEWINDHP                                = {\n    enUS = S.RefreshingJadeWind .. \"\\nEach Unit HP\",\n    ruRU = S.RefreshingJadeWind .. \"\\nКаждый Юнит ХП\",\n}\nL.REFRESHINGJADEWINDUNITS                            = {\n    enUS = S.RefreshingJadeWind .. \"\\nTotal Units\",\n    ruRU = S.RefreshingJadeWind .. \"\\nКол-во Юнитов\",\n}\nL.BURSTTT                                            = {\n    enUS = \"The percentage of enemy health on which to use actions\\n\\nRight click: Create macro\", \n    ruRU = \"Процент здоровья противника на котором использовать действия\\n\\nПравая кнопка мышки: Создать макрос\", \n}\nL.BURSTHEALINGRACIAL                                = {\n    enUS = \"Racial Burst Heal\\nHealth Percent\",                        \n    ruRU = \"Расовая Бурст Исцел.\\nПроцент Здоровья\",    \n}\nL.BURSTDAMAGE                                        = {\n    enUS = \"Burst Damage\\nHealth Percent\",                        \n    ruRU = \"Бурст Урон\\nПроцент Здоровья\",    \n}\nL.BURSTHEALINGTRINKETS                                = {\n    enUS = \"Heal Trinkets\\nHealth Percent\",                        \n    ruRU = \"Исцел. Акссесуары\\nПроцент Здоровья\",    \n}\nL.BURSTDAMAGETRINKETS                                = {\n    enUS = \"Damage Trinkets\\nHealth Percent\",                        \n    ruRU = \"Урон Акссесуары\\nПроцент Здоровья\",    \n}\nL.MOUSEBUTTONSCHECK                                    = {\n    enUS = S.HealingSphere .. \"\\nCheck Mouse Buttons\", \n    ruRU = S.HealingSphere .. \"\\nПроверять Кнопки Мышки\", \n}\nL.MOUSEBUTTONSCHECKTT                                = {\n    enUS = \"Prevents use if the camera is currently spinning with the mouse button held down\\n\\nRight click: Create macro\", \n    ruRU = \"Предотвращает использование если камера в текущий момент крутится с помощью зажатой кнопки мыши\\n\\nПравая кнопка мышки: Создать макрос\", \n}\nL.PARALYSISPVP                                        = {\n    ANY = \"PvP \" .. S.Paralysis,\n}\nL.PARALYSISPVPTT                                    = {\n    enUS = \"@arena1-3 interrupt PvP list from 'Interrupts' tab by Paralysis\\nMore custom config you can find in group by open /tmw\\n\\nRight click: Create macro\", \n    ruRU = \"@arena1-3 прерывание Параличом PvP списка из вкладки 'Прерывания'\\nБольше кастомизации вы найдете в группе открыв /tmw\\n\\nПравая кнопка мышки: Создать макрос\", \n}\nL.PARALYSISPVP_ONLYHEAL                                = {\n    enUS = \"Only Heal Casts\",\n    ruRU = \"Только Исцел. Заклинания\",\n}\nL.PARALYSISPVP_ONLYPVP                                = {\n    enUS = \"Only PvP Casts\",\n    ruRU = \"Только PvP Заклинания\",\n}\nL.PARALYSISPVP_BOTH                                    = {\n    enUS = \"Heal + PvP Casts\",\n    ruRU = \"Исцел. + PvP Заклинания\",\n}\nL.GRAPPLEWEAPONPVP                                    = {\n    enUS = \"PvP \" .. S.GrappleWeapon .. \"\\nTriggers\",\n    ruRU = \"PvP \" .. S.GrappleWeapon .. \"\\nТриггеры\",\n}\nL.GRAPPLEWEAPONPVPTT                                = {\n    enUS = \"@arena1-3, @target, @mouseover, @targettarget\\nON MELEE BURST - Only if melee player has damage buffs\\nON COOLDOWN - means will use always on melee players\\nOFF - Cut out from rotation but still allow work through Queue and MSG systems\\nIf you want fully turn it OFF then you should make SetBlocker in 'Actions' tab\\n\\nRight click: Create macro\", \n    ruRU = \"@arena1-3, @target, @mouseover, @targettarget\\nON MELEE BURST - Только если игрок ближнего боя имеет бафы на урон\\nON COOLDOWN - значит будет использовано по игрокам ближнего боя по восстановлению способности\\nOFF - Выключает из ротации, но при этом позволяет Очередь и MSG системам работать\\nЕсли нужно полностью выключить, тогда установите блокировку во вкладке 'Действия'\\n\\nПравая кнопка мышки: Создать макрос\", \n}\nL.GRAPPLEWEAPONPVP_MELEEBURST                        = {\n    enUS = \"On melee burst\",\n    ruRU = \"На бурст ближ. боя\",\n}\nL.GRAPPLEWEAPONPVP_ONCD                                = {\n    enUS = \"On cooldown\",\n    ruRU = \"По восстановлению\",\n}\nL.GRAPPLEWEAPONPVPUNITS                                = {\n    enUS = \"PvP \" .. S.GrappleWeapon .. \"\\nDestinations\",\n    ruRU = \"PvP \" .. S.GrappleWeapon .. \"\\nЦели\",\n}\nL.GRAPPLEWEAPONPVPUNITSTT                            = {\n    enUS = \"@primary - is @target, @mouseover, @focustarget, @targettarget (these units are depend on toggles above)\\n\\nRight click: Create macro\", \n    ruRU = \"@primary - это @target, @mouseover, @focustarget, @targettarget (эти юниты зависят от чекбоксов наверху)\\n\\nПравая кнопка мышки: Создать макрос\", \n}\nL.CATCHINVISIBLE                                    = {\n    enUS = \"Catch Invisible (arena)\",\n    ruRU = \"Поймать Невидимок (арена)\",\n}\nL.CATCHINVISIBLETT                                    = {\n    enUS = \"Cast \" .. S.SpinningCraneKick .. \" when combat around has been begin and enemy team still has unit in invisible\\nDoesn't work if you're mounted or in combat!\\n\\nRight click: Create macro\",\n    ruRU = \"Применять \" .. S.SpinningCraneKick .. \" когда бой поблизости начат и команда противника до сих пор имеет юнита в невидимости\\nНе работает, когда вы на транспорте или в бою!\\n\\nПравая кнопка мышки: Создать макрос\",\n}\nL.PARTY                                             = {\n    enUS = \"Party\",\n    ruRU = \"Группа\",\n}\nL.PARTYUNITS                                        = {\n    enUS = \"Party Units\",\n    ruRU = \"Юниты Группы\",\n}\nL.PARTYUNITSTT                                        = {\n    enUS = \"Enable/Disable relative party passive rotation\\n\\nRight click: Create macro\", \n    ruRU = \"Включить/Выключить относительно группы пассивную ротацию\\n\\nПравая кнопка мышки: Создать макрос\", \n}\nL.TOUCHOFKARMA                                        = {\n    enUS = S.TouchofKarma .. \"\\nHealth Percent (Self)\",\n    ruRU = S.TouchofKarma .. \"\\nЗдоровье Процент (Свое)\",\n}\nL.TRINKETDEFENSIVE                                    = {\n    enUS = \"Protection Trinkets\\nHealth Percent (Self)\",\n    ruRU = \"Аксессуары Защиты\\nЗдоровье Процент (Свое)\",\n}\nL.REVERSEHARM                                        = {\n    enUS = S.ReverseHarm .. \"\\nHealth Percent (Self)\",\n    ruRU = S.ReverseHarm .. \"\\nЗдоровье Процент (Свое)\",\n}\nL.SEFOUTBURST                                        = {\n    enUS = \"PvE SEF \\nOut of Burst\",\n    ruRU = \"PvE \" .. S.StormEarthAndFire .. \"\\nВне Бурста\",\n}\nL.SEFOUTBURSTTT                                        = {\n    enUS = \"PvE: Enable this setting to allow you\\nto use SEF outside 'Burst Mode' conditions\\nat 2+ charges or between '\" .. S.TouchofDeath .. \"'\\n\\nRight click: Create macro\",\n    ruRU = \"PvE: Включенная настройка позволит вам\\nиспользовать \" .. S.StormEarthAndFire .. \" вне условий 'Режима Бурстов'\\nна 2+ зарядах или между '\" .. S.TouchofDeath .. \"'\\n\\nПравая кнопка мышки: Создать макрос\",\n}\nL.TOGGLEFLYING                                            = {\n    enUS = \" \" .. S.FlyingSerpentKick .. \"\\ for DPS\",\n}\nL.TOGGLEFLYINGTT                                        = {\n    enUS = \"PvE: Enable this setting to allow you\\nto use \" .. S.FlyingSerpentKick .. \" for DPS\\n\\nRight click: Create macro\",\n}\nL.InterruptList                                            = {\n    enUS = \"Use Ryan's M+ Interrupt List\",\n}\nL.InterruptListTT                                        = {\n    enUS = \"Check to use Ryan's M+ list. Uncheck to use default list.\",\n}\nL.ParalysisInterrupt                                           = {\n    enUS = \"Use \" .. S.Paralysis .. \" to Interrupt\",\n}\nL.ParalysisInterruptTT                                        = {\n    enUS = \"Use \" .. S.Paralysis .. \"  CC to interrupt\",\n}\nL.LegSweepInterrupt                                           = {\n    enUS = \"Use \" .. S.LegSweep .. \"  to Interrupt\",\n}\nL.LegSweepInterruptTT                                        = {\n    enUS = \"Use \" .. S.LegSweep .. \"  CC to interrupt\",\n}\nL.ExplosiveMouseover                                           = {\n    enUS = \"Auto Target/Kill Explosives\",\n}\nL.ExplosiveMouseoverTT                                        = {\n    enUS = \"Auto Target/Kill Explosives using /target mouseover\",\n}\n\nlocal SliderMarginOptions = { margin = { top = 10 } }\nlocal LayoutConfigOptions = { gutter = 4, padding = { left = 5, right = 5 } }\nA.Data.ProfileEnabled[A.CurrentProfile]             = true\nA.Data.ProfileUI                                     = {    \n    DateTime = \"v16 (27.07.2020)\",\n    [2] = { \n        [ACTION_CONST_MONK_BREWMASTER] = {             \n            LayoutOptions = LayoutConfigOptions,\n            { -- [1]                            \n                {\n                    E                 = \"Checkbox\", \n                    DB                 = \"mouseover\",\n                    DBV             = true,\n                    L                 = L.MOUSEOVER, \n                    TT                 = L.MOUSEOVERTT, \n                    M                 = {},\n                },\n                {\n                    E                 = \"Checkbox\", \n                    DB                 = \"AoE\",\n                    DBV             = true,\n                    L                 = L.AOE,\n                    TT                 = L.AOETT,\n                    M                 = {},\n                },                    \n            }, \n            { -- [2]\n                {\n                    E                 = \"Dropdown\",                                                         \n                    OT                 = {\n                        { text = L.SHOULDPURIFY_LEVEL2, value = 2 },\n                        { text = L.SHOULDPURIFY_LEVEL3, value = 3 },\n                        { text = L.SHOULDPURIFY_LEVEL4, value = 4 },\n                        { text = L.SHOULDPURIFY_LEVEL5, value = 5 },\n                        { text = L.AUTO,                 value = 0 },\n                    },\n                    DB                 = \"ShouldPurify\",\n                    DBV             = 0, \n                    L                 = L.PURIFYINGBREW, \n                    TT                 = L.PURIFYINGBREWTT,\n                    M                 = {},                                    \n                },        \n                {\n                    E                 = \"Slider\",                                                     \n                    MIN             = -1, \n                    MAX             = 100,                            \n                    DB                 = \"ZenMeditation\",\n                    DBV             = 100,\n                    ONOFF             = true,                \n                    L                 = L.ZENMEDITATION,\n                    M                 = {},\n                },\n            },\n            { -- [3]    \n                {\n                    E                 = \"Slider\",                                                     \n                    MIN             = -1, \n                    MAX                 = 85,                            \n                    DB                 = \"HealingElixir\",\n                    DBV             = 85,\n                    ONOFF             = true,\n                    L                 = L.HEALINGELIXIR, \n                    M                 = {},\n                },\n                {\n                    E                 = \"Slider\",                                                     \n                    MIN             = -1, \n                    MAX             = 100,                            \n                    DB                 = \"CelestialBrew\",\n                    DBV             = 100,\n                    ONOFF             = true,\n                    L                 = L.CelestialBrew,                    \n                    M                 = {},\n                },\n            }, \n            { -- [4]     \n                {\n                    E                 = \"Slider\",                                                     \n                    MIN             = -1, \n                    MAX             = 100,                            \n                    DB                 = \"DampenHarm\",\n                    DBV             = 100,\n                    ONOFF             = true,\n                    L                 = L.DAMPENHARM,\n                    M                 = {},\n                },\n                {\n                    E                 = \"Slider\",                                                     \n                    MIN                = -1, \n                    MAX                = 100,                            \n                    DB                 = \"FortifyingBrew\",\n                    DBV                = 100,\n                    ONOFF             = true,\n                    L                 = L.FORTIFYINGBREW,\n                    M                 = {},\n                },\n            }, \n            { -- [5]    \n                {\n                    E                 = \"Slider\",                                                     \n                    MIN             = -1, \n                    MAX                 = 100,                            \n                    DB                 = \"Stoneform\",\n                    DBV             = 100,\n                    ONOFF             = true,\n                    L                 = L.STONEFORM,\n                    M                 = {},\n                },\n                {\n                    E                 = \"Dropdown\",                                                         \n                    OT                 = {\n                        { text = L.ADDITIONALTAUNT_INVOKENIUZAOTHEBLACKOX,     value = 1 },\n                        { text = L.ADDITIONALTAUNT_SUMMONBLACKOXSTATUE,     value = 2 },\n                        { text = L.ADDITIONALTAUNT_PROVOKEONBLACKOXSTATUE,     value = 3 },\n                    },\n                    MULT             = true,\n                    DB                 = \"AdditionalTaunt\",\n                    DBV             = {\n                        [1] = true, \n                        [2] = true,\n                        [3] = true,\n                    }, \n                    L                 = L.ADDITIONALTAUNT, \n                    M                 = {},                                    \n                },    \n            }, \n            { -- [6] PvP \n                {\n                    E = \"Header\",\n                    L = L.PVP,\n                },\n            },\n            { -- [7]\n                {\n                    E                 = \"Dropdown\",                                                         \n                    OT                 = {\n                        { text = L.PARALYSISPVP_ONLYHEAL,     value = \"Heal\"     },\n                        { text = L.PARALYSISPVP_ONLYPVP,     value = \"PvP\"     },\n                        { text = L.PARALYSISPVP_BOTH,         value = \"BOTH\"     },\n                        { text = L.OFF,                     value = \"OFF\"     },\n                    },\n                    DB                 = \"ParalysisPvP\",\n                    DBV             = \"BOTH\",\n                    L                 = L.PARALYSISPVP, \n                    TT                 = L.PARALYSISPVPTT,\n                    M                 = {},\n                },\n            }, \n        },\n        [ACTION_CONST_MONK_WINDWALKER] = {\n            LayoutOptions = LayoutConfigOptions,\n            { -- [1]                            \n                {\n                    E                 = \"Checkbox\", \n                    DB                 = \"mouseover\",\n                    DBV             = true,\n                    L                 = L.MOUSEOVER, \n                    TT                 = L.MOUSEOVERTT, \n                    M                 = {},\n                },\n                {\n                    E                 = \"Checkbox\", \n                    DB                 = \"AoE\",\n                    DBV             = true,\n                    L                 = L.AOE,\n                    TT                 = L.AOETT,\n                    M                 = {},\n                },                \n                {\n                    E                 = \"Checkbox\", \n                    DB                 = \"SEFOutBurst\",\n                    DBV             = true,\n                    L                 = L.SEFOUTBURST,\n                    TT                 = L.SEFOUTBURSTTT,\n                    M                 = {},\n                },\n                {\n                    E                 = \"Checkbox\", \n                    DB                 = \"ToggleFlying\",\n                    DBV             = false,\n                    L                 = L.TOGGLEFLYING,\n                    TT                 = L.TOGGLEFLYINGTT,\n                    M                 = {},\n                },    \n            },\n            { -- [1] Row 2\n                {\n                    E                 = \"Checkbox\", \n                    DB                 = \"InterruptsRyan\",\n                    DBV             = true,\n                    L                 = L.InterruptList, \n                    TT                 = L.InterruptListTT, \n                    M                 = {},\n                },\n                {\n                    E                 = \"Checkbox\", \n                    DB                 = \"ParalysisInterrupt\",\n                    DBV             = true,\n                    L                 = L.ParalysisInterrupt, \n                    TT                 = L.ParalysisInterruptTT, \n                    M                 = {},\n                },\n                {\n                    E                 = \"Checkbox\", \n                    DB                 = \"LegSweepInterrupt\",\n                    DBV             = true,\n                    L                 = L.LegSweepInterrupt, \n                    TT                 = L.LegSweepInterruptTT, \n                    M                 = {},\n                },\n                {\n                    E                 = \"Checkbox\", \n                    DB                 = \"ExplosiveMouseover\",\n                    DBV             = true,\n                    L                 = L.ExplosiveMouseover, \n                    TT                 = L.ExplosiveMouseoverTT, \n                    M                 = {},\n                },\n            },        \n            { -- [2] Self Defensives \n                {\n                    E                 = \"Header\",\n                    L                 = L.DEFENSIVE,\n                },\n            }, \n            { -- [3]     \n                {\n                    E                = \"Slider\",                                                     \n                    MIN             = -1, \n                    MAX                = 100,                            \n                    DB                 = \"TouchofKarma\",\n                    DBV             = 100,\n                    ONOFF             = true,\n                    L                 = L.TOUCHOFKARMA,                \n                    M                 = {},\n                },\n                {                    \n                    E                 = \"Slider\",                                                     \n                    MIN             = -1, \n                    MAX                 = 100,                            \n                    DB                 = \"Stoneform\",\n                    DBV             = 100,\n                    ONOFF             = true,\n                    L                 = L.STONEFORM,\n                    M                 = {},\n                },\n            }, \n            { -- [4]    \n                {\n                    E                 = \"Slider\",                                                     \n                    MIN             = -1, \n                    MAX             = 100,                            \n                    DB                 = \"DampenHarm\",\n                    DBV             = 100,\n                    ONOFF             = true,\n                    L                 = L.DAMPENHARM,\n                    M                 = {},\n                },\n                {\n                    E                 = \"Slider\",                                                     \n                    MIN                = -1, \n                    MAX                = 100,                            \n                    DB                 = \"FortifyingBrew\",\n                    DBV                = 100,\n                    ONOFF             = true,\n                    L                 = L.FORTIFYINGBREW,\n                    M                 = {},\n                },\n            }, \n            { -- [5]    \n                {\n                    E                 = \"Slider\",                                                     \n                    MIN             = -1, \n                    MAX             = 100,                            \n                    DB                 = \"DiffuseMagic\",\n                    DBV             = 100,\n                    ONOFF             = true,\n                    L                 = L.DIFFUSEMAGIC,\n                    M                 = {},\n                },\n                {\n                    E                 = \"Slider\",                                                     \n                    MIN             = 0, \n                    MAX             = 100,                            \n                    DB                 = \"TrinketDefensive\",\n                    DBV             = 50,\n                    ONOFF             = false,\n                    L                 = L.TRINKETDEFENSIVE, \n                    M                 = {},\n                },\n            }, \n            { -- [6] Party\n                {\n                    E                 = \"Header\",\n                    L                 = L.PARTY,\n                },\n            }, \n            { -- [7]\n                {\n                    E                 = \"Dropdown\",                                                         \n                    OT                 = {\n                        { text = \"@party1\", value = 1 },\n                        { text = \"@party2\", value = 2 },\n                    },\n                    MULT             = true,\n                    DB                 = \"PartyUnits\",\n                    DBV             = {\n                        [1] = true, \n                        [2] = true,\n                    }, \n                    L                 = L.PARTYUNITS, \n                    TT                 = L.PARTYUNITSTT, \n                    M                 = {},\n                },            \n            },            \n            { -- [8] PvP \n                {\n                    E                = \"Header\",\n                    L                = L.PVP,\n                },\n            }, \n            { -- [9]\n                {\n                    E                 = \"Slider\",                                                     \n                    MIN             = 0, \n                    MAX                 = 100,                            \n                    DB                 = \"ReverseHarm\",\n                    DBV             = 100,\n                    ONLYON             = true,\n                    L                 = L.REVERSEHARM,\n                    M                 = {},\n                },\n                {\n                    E                 = \"Dropdown\",                                                         \n                    OT                 = {\n                        { text = L.PARALYSISPVP_ONLYHEAL,     value = \"Heal\"     },\n                        { text = L.PARALYSISPVP_ONLYPVP,     value = \"PvP\"     },\n                        { text = L.PARALYSISPVP_BOTH,         value = \"BOTH\"     },\n                        { text = L.OFF,                     value = \"OFF\"     },\n                    },\n                    DB                 = \"ParalysisPvP\",\n                    DBV             = \"BOTH\",\n                    L                 = L.PARALYSISPVP, \n                    TT                 = L.PARALYSISPVPTT,\n                    M                 = {},\n                },\n            }, \n            { -- [10]\n                RowOptions = SliderMarginOptions,\n                {\n                    E                 = \"Dropdown\",                                                         \n                    OT                 = {\n                        { text = L.GRAPPLEWEAPONPVP_MELEEBURST,         value = \"ON MELEE BURST\" },\n                        { text = L.GRAPPLEWEAPONPVP_ONCD,                 value = \"ON COOLDOWN\" },                    \n                        { text = L.OFF,                                 value = \"OFF\" },\n                    },\n                    DB                 = \"GrappleWeaponPvP\",\n                    DBV             = \"ON MELEE BURST\",\n                    L                 = L.GRAPPLEWEAPONPVP,\n                    TT                = L.GRAPPLEWEAPONPVPTT,\n                    M                 = {},\n                },\n                {\n                    E                 = \"Dropdown\",                                                         \n                    OT                 = {\n                        { text = \"@arena1\",     value = 1 },\n                        { text = \"@arena2\",     value = 2 },\n                        { text = \"@arena3\",     value = 3 },\n                        { text = \"@primary\",    value = 4 },\n                    },\n                    MULT             = true,\n                    DB                 = \"GrappleWeaponPvPunits\",\n                    DBV             = {\n                        [1]    = true, \n                        [2]    = true,\n                        [3]    = true,\n                        [4]    = true,\n                    }, \n                    L                 = L.GRAPPLEWEAPONPVPUNITS, \n                    TT                 = L.GRAPPLEWEAPONPVPUNITSTT,\n                    M                 = {},\n                },\n            },     \n            { -- [11]\n                {\n                    E                 = \"Checkbox\", \n                    DB                 = \"CatchInvisible\",\n                    DBV             = true,\n                    L                 = L.CATCHINVISIBLE, \n                    TT                 = L.CATCHINVISIBLETT,\n                    M                 = {},                \n                },\n            }, \n        },\n    },\n    [7] = {\n        [ACTION_CONST_MONK_WINDWALKER] = {\n            [\"stun\"]         = { Enabled = true,     Key = \"LegSweep\",             LUAVER = 5, LUA = [[\n                local A = Action[ACTION_CONST_MONK_WINDWALKER]\n                return     A.LegSweep:IsReadyM(thisunit, true) and \n                        (\n                            not IsInPvP and \n                            MultiUnits:GetByRange(5 + (A.TigerTailSweep:IsSpellLearned() and 2 or 0), 1) >= 1                            \n                        ) or \n                        (\n                            IsInPvP and \n                            EnemyTeam():PlayersInRange(1, 5 + (A.TigerTailSweep:IsSpellLearned() and 2 or 0))\n                        )                                                             \n            ]] },\n            [\"disarm\"]         = { Enabled = true,     Key = \"GrappleWeapon\",        LUAVER = 6, LUA = [[\n                return     GrappleWeaponIsReady(thisunit, nil, true)\n            ]] },\n            [\"kick\"]         = { Enabled = true,     Key = \"SpearHandStrike\",     LUAVER = 6, LUA = [[\n                local A = Action[ACTION_CONST_MONK_WINDWALKER]\n                return     A.SpearHandStrike:IsReadyM(thisunit) and                         \n                        A.SpearHandStrike:AbsentImun(thisunit, {\"KickImun\", \"TotalImun\", \"DamagePhysImun\"}, true) and \n                        Unit(thisunit):IsCastingRemains() > 0 \n            ]] },\n            [\"freedom\"]     = { Enabled = true,     Key = \"TigersLust\",         LUAVER = 5, LUA = [[\n                local A = Action[ACTION_CONST_MONK_WINDWALKER]\n                return     A.TigersLust:IsReadyM(thisunit) and \n                        A.TigersLust:AbsentImun(thisunit) and \n                        LossOfControl:IsMissed(\"SILENCE\") and \n                        LossOfControl:Get(\"SCHOOL_INTERRUPT\", \"NATURE\") == 0            \n            ]] },\n            [\"dispel\"]         = { Enabled = true,     Key = \"Detox\",                 LUAVER = 5, LUA = [[\n                local A = Action[ACTION_CONST_MONK_WINDWALKER]\n                return     A.Detox:IsReadyM(thisunit) and \n                        A.Detox:AbsentImun(thisunit) and \n                        AuraIsValid(thisunit, \"UseDispel\", \"Dispel\") and                                                 \n                        LossOfControl:IsMissed(\"SILENCE\") and \n                        LossOfControl:Get(\"SCHOOL_INTERRUPT\", \"NATURE\") == 0\n            ]] },    \n            [\"heal\"]         = { Enabled = true,     Key = \"ReverseHarm\",         LUAVER = 5, LUA = [[\n                local A = Action[ACTION_CONST_MONK_WINDWALKER]\n                return     A.ReverseHarm:IsReadyM(thisunit) and                                                     \n                        A.ReverseHarm:AbsentImun(thisunit) and \n                        LossOfControl:IsMissed(\"SILENCE\") and \n                        LossOfControl:Get(\"SCHOOL_INTERRUPT\", \"NATURE\") == 0 and \n                        Unit(thisunit):HealthPercent() <= 92\n            ]] },\n        },\n        [ACTION_CONST_MONK_BREWMASTER] = { \n            [\"stun\"]         = { Enabled = true,     Key = \"LegSweep\",             LUAVER = 5, LUA = [[\n                local A = Action[ACTION_CONST_MONK_BREWMASTER]\n                return     Unit(\"player\"):HasBuffs(A.ZenMeditation.ID, true) == 0 and \n                        A.LegSweep:IsReadyM(thisunit, true) and \n                        (\n                            ( \n                                not Unit(thisunit):IsEnemy() and \n                                (\n                                    (\n                                        not IsInPvP and \n                                        MultiUnits:GetByRange(5, 1) >= 1    \n                                    ) or \n                                    (\n                                        IsInPvP and \n                                        EnemyTeam():PlayersInRange(1, 5)\n                                    ) \n                                )\n                            ) or \n                            ( \n                                Unit(thisunit):IsEnemy() and \n                                Unit(thisunit):GetRange() <= 5 and \n                                Unit(thisunit):IsControlAble(\"stun\", 0) and\n                                Unit(thisunit):HasDeBuffs(\"Stuned\") <= GetCurrentGCD() and \n                                A.LegSweep:AbsentImun(thisunit, {\"StunImun\", \"TotalImun\", \"DamagePhysImun\", \"CCTotalImun\"}, true) \n                            )                \n                        ) \n            ]] },\n            [\"kick\"]         = { Enabled = true,     Key = \"SpearHandStrike\",     LUAVER = 6, LUA = [[\n                local A = Action[ACTION_CONST_MONK_BREWMASTER]\n                return     Unit(\"player\"):HasBuffs(A.ZenMeditation.ID, true) == 0 and\n                        A.SpearHandStrike:IsReadyM(thisunit) and \n                        A.SpearHandStrike:AbsentImun(thisunit, {\"KickImun\", \"TotalImun\", \"DamagePhysImun\"}, true) and \n                        Unit(thisunit):IsCastingRemains() > 0  \n            ]] },\n            [\"freedom\"]     = { Enabled = true,     Key = \"TigersLust\",         LUAVER = 5, LUA = [[\n                local A = Action[ACTION_CONST_MONK_BREWMASTER]\n                return     Unit(\"player\"):HasBuffs(A.ZenMeditation.ID, true) == 0 and \n                        A.TigersLust:IsReadyM(thisunit) and \n                        A.TigersLust:AbsentImun(thisunit) and \n                        LossOfControl:IsMissed(\"SILENCE\") and \n                        LossOfControl:Get(\"SCHOOL_INTERRUPT\", \"NATURE\") == 0    \n            ]] },\n            [\"dispel\"]         = { Enabled = true,     Key = \"Detox\",                 LUAVER = 5, LUA = [[\n                local A = Action[ACTION_CONST_MONK_BREWMASTER]\n                return     Unit(\"player\"):HasBuffs(A.ZenMeditation.ID, true) == 0 and \n                        A.Detox:IsReadyM(thisunit) and \n                        A.Detox:AbsentImun(thisunit) and \n                        AuraIsValid(thisunit, \"UseDispel\", \"Dispel\") and                                                 \n                        LossOfControl:IsMissed(\"SILENCE\") and \n                        LossOfControl:Get(\"SCHOOL_INTERRUPT\", \"NATURE\") == 0            \n            ]] },\n        },\n    },\n}\n\n-- Perform profile DB upgrade\nTMW:RegisterSelfDestructingCallback(\"TMW_ACTION_IS_INITIALIZED_PRE\", function(callbackEvent, pActionDB)\n        if pActionDB then \n            local L = A.GetLocalization()\n            local Version = toNum[A.Data.ProfileUI.DateTime:match(\"%d+\")]\n            \n            -- Perform upgrade N/A to v15 \n            if not pActionDB.Version or pActionDB.Version < 15 then     \n                local notification = (L[\"DEBUG\"] or \"\") .. ' ' .. (L.TAB[7].HEADTITLE or \"\") .. ' [\"%s\"] ' .. (L.TAB[7].KEYERRORNOEXIST or \"\") .. ' ' .. (L.RESETED or \"\")\n                \n                if pActionDB[7][ACTION_CONST_MONK_MISTWEAVER].msgList[\"dispel\"] then \n                    pActionDB[7][ACTION_CONST_MONK_MISTWEAVER].msgList[\"dispel\"] = nil\n                    Print(notification:format(\"dispel\"))\n                end \n                \n                if pActionDB[7][ACTION_CONST_MONK_MISTWEAVER].msgList[\"freedom\"] then \n                    pActionDB[7][ACTION_CONST_MONK_MISTWEAVER].msgList[\"freedom\"] = nil \n                    Print(notification:format(\"freedom\"))\n                end \n            end \n            \n            if pActionDB.Version ~= Version then \n                if pActionDB.Version then \n                    Print(A.CurrentProfile .. \" \" .. L.UPGRADEDFROM .. (pActionDB.Version or \"N/A\") .. L.UPGRADEDTO .. Version)\n                end \n                pActionDB.Version = Version            \n            end\n            \n            return true -- Signal RegisterSelfDestructingCallback to unregister\n        end \nend)\n\n-----------------------------------------\n--                   PvP  \n-----------------------------------------\nfunction A.Main_CastBars(unit, list)\n    if not A.IsInitialized or A.IamHealer or (A.Zone ~= \"arena\" and A.Zone ~= \"pvp\") then \n        return false \n    end \n    \n    if A[A.PlayerSpec] and A[A.PlayerSpec].SpearHandStrike and A[A.PlayerSpec].SpearHandStrike:IsReadyP(unit, nil, true) and A[A.PlayerSpec].SpearHandStrike:AbsentImun(unit, {\"KickImun\", \"TotalImun\", \"DamagePhysImun\"}, true) and A.InterruptIsValid(unit, list) then \n        return true         \n    end \nend \n\nfunction A.Second_CastBars(unit)\n    if not A.IsInitialized or (A.Zone ~= \"arena\" and A.Zone ~= \"pvp\") then \n        return false \n    end \n    \n    local Toggle = A.GetToggle(2, \"ParalysisPvP\")    \n    if Toggle and Toggle ~= \"OFF\" and A[A.PlayerSpec] and A[A.PlayerSpec].Paralysis and A[A.PlayerSpec].Paralysis:IsReadyP(unit, nil, true) and A[A.PlayerSpec].Paralysis:AbsentImun(unit, {\"CCTotalImun\", \"TotalImun\", \"DamagePhysImun\"}, true) and Unit(unit):IsControlAble(\"incapacitate\", 0) then \n        if Toggle == \"BOTH\" then \n            return select(2, A.InterruptIsValid(unit, \"Heal\", true)) or select(2, A.InterruptIsValid(unit, \"PvP\", true)) \n        else\n            return select(2, A.InterruptIsValid(unit, Toggle, true))         \n        end \n    end \nend \n\nlocal unitIDtargets = setmetatable({}, { -- string cache for faster performance\n        __index = function(t, v)\n            t[v] = v .. \"target\"\n            return t[v]\n        end,\n})\n\nlocal GrappleWeaponPvPunits     = setmetatable({}, { __index = function(t, v)\n            t[v] = GetToggle(2, \"GrappleWeaponPvPunits\")\n            return t[v]\nend})\nlocal ImunBuffsCC              = {\"CCTotalImun\", \"DamagePhysImun\", \"TotalImun\"}\nlocal ImunBuffsInterrupt     = {\"KickImun\", \"TotalImun\", \"DamagePhysImun\"}\n\nfunction A.GrappleWeaponIsReady(unitID, skipShouldStop, isMsg)\n    if A.IsInPvP then \n        local isArena = unitID:match(\"arena\")\n        if     (\n            (unitID == \"arena1\" and GrappleWeaponPvPunits[A.PlayerSpec][1]) or \n            (unitID == \"arena2\" and GrappleWeaponPvPunits[A.PlayerSpec][2]) or\n            (unitID == \"arena3\" and GrappleWeaponPvPunits[A.PlayerSpec][3]) or\n            (not isArena and GrappleWeaponPvPunits[A.PlayerSpec][4]) \n        ) \n        then \n            if (not isArena and Unit(unitID):IsEnemy() and Unit(unitID):IsPlayer()) or (isArena and not Unit(unitID):InLOS() and (A.Zone == \"arena\" or A.Zone == \"pvp\")) then \n                local GrappleWeapon = A[A.PlayerSpec].GrappleWeapon\n                if  GrappleWeapon and \n                (\n                    (\n                        not isMsg and GetToggle(2, \"GrappleWeaponPvP\") ~= \"OFF\" and ((not isArena and GrappleWeapon:IsReady(unitID, nil, nil, skipShouldStop)) or (isArena and GrappleWeapon:IsReadyByPassCastGCD(unitID))) and                                 \n                        Unit(unitID):IsMelee() and (GetToggle(2, \"GrappleWeaponPvP\") == \"ON COOLDOWN\" or Unit(unitID):HasBuffs(\"DamageBuffs\") > 8)\n                    ) or \n                    (\n                        isMsg and GrappleWeapon:IsReadyM(unitID)\n                    )\n                ) and \n                GrappleWeapon:AbsentImun(unitID, ImunBuffsCC, true) and \n                Unit(unitID):IsControlAble(\"disarm\") and \n                Unit(unitID):InCC() == 0 and \n                Unit(unitID):HasDeBuffs(\"Disarmed\") == 0\n                then \n                    return true \n                end \n            end \n        end \n    end \nend \n\nfunction A:CanInterruptPassive(unitID, countGCD)\n    if A.IsInPvP and (A.Zone == \"arena\" or A.Zone == \"pvp\") then         \n        if self.isSpearHandStrike then \n            -- MW hasn't SpearHandStrike action \n            local useKick, _, _, notInterruptable = InterruptIsValid(unitID, \"Heal\", nil, countGCD)\n            if not useKick then \n                useKick, _, _, notInterruptable = InterruptIsValid(unitID, \"PvP\", nil, countGCD)\n            end \n            if useKick and not notInterruptable and self:IsReadyByPassCastGCD(unitID) and self:AbsentImun(unitID, ImunBuffsInterrupt, true) then \n                return true \n            end \n        end \n        \n        if self.isParalysis then \n            local ParalysisPvP = GetToggle(2, \"ParalysisPvP\")\n            if ParalysisPvP and ParalysisPvP ~= \"OFF\" and self:IsReadyByPassCastGCD(unitID) then \n                local _, useCC, castRemainsTime \n                if Toggle == \"BOTH\" then \n                    useCC, _, _, castRemainsTime = select(2, InterruptIsValid(unitID, \"Heal\", nil, countGCD))\n                    if not useCC then \n                        useCC, _, _, castRemainsTime = select(2, InterruptIsValid(unitID, \"PvP\", nil, countGCD))\n                    end \n                else \n                    useCC, _, _, castRemainsTime = select(2, InterruptIsValid(unitID, Toggle, nil, countGCD))\n                end \n                if useCC and castRemainsTime >= GetLatency() and Unit(unitID):IsControlAble(\"incapacitate\") and not Unit(unitID):InLOS() and self:AbsentImun(unitID, ImunBuffsCC, true) then \n                    return true \n                end \n            end \n        end                     \n    end \nend \n\n\n\n",
				}, -- [1]
				{
					["Order"] = 2,
					["Name"] = "WW",
					["Code"] = "--######################################\n--####### AYA'S WINDWALKER MONK ########\n--######################################\n\nlocal _G, setmetatable                           = _G, setmetatable\nlocal ACTION                                    = _G.Action\nlocal Covenant                                    = _G.LibStub(\"Covenant\")\nlocal TMW                                     = _G.TMW \nlocal Action                                 = _G.Action\nlocal CONST                                 = Action.Const\nlocal Listener                                 = Action.Listener\nlocal Create                                 = Action.Create\nlocal GetToggle                                = Action.GetToggle\nlocal SetToggle                                = Action.SetToggle\nlocal GetLatency                            = Action.GetLatency\nlocal GetGCD                                = Action.GetGCD\nlocal GetCurrentGCD                            = Action.GetCurrentGCD\nlocal ShouldStop                            = Action.ShouldStop\nlocal BurstIsON                                = Action.BurstIsON\nlocal AuraIsValid                            = Action.AuraIsValid\nlocal InterruptIsValid                        = Action.InterruptIsValid\nlocal FrameHasSpell                            = Action.FrameHasSpell\nlocal DetermineUsableObject                    = Action.DetermineUsableObject\n\nlocal Utils                                    = Action.Utils\nlocal BossMods                                = Action.BossMods\nlocal TeamCache                                = Action.TeamCache\nlocal EnemyTeam                                = Action.EnemyTeam\nlocal FriendlyTeam                            = Action.FriendlyTeam\nlocal LoC                                     = Action.LossOfControl\nlocal Player                                = Action.Player \nlocal MultiUnits                            = Action.MultiUnits\nlocal UnitCooldown                            = Action.UnitCooldown\nlocal Unit                                    = Action.Unit \nlocal IsUnitEnemy                            = Action.IsUnitEnemy\nlocal IsUnitFriendly                        = Action.IsUnitFriendly\nlocal ActiveUnitPlates                          = MultiUnits:GetActiveUnitPlates()\nlocal IsIndoors, UnitIsUnit, UnitIsPlayer       = IsIndoors, UnitIsUnit, UnitIsPlayer\nlocal pairs                                     = pairs\nlocal GrappleWeaponIsReady                    = Action.GrappleWeaponIsReady\n\nlocal Azerite                                 = LibStub(\"AzeriteTraits\")\n\nlocal ACTION_CONST_MONK_WINDWALKER            = CONST.MONK_WINDWALKER\nlocal ACTION_CONST_AUTOTARGET                = CONST.AUTOTARGET\nlocal ACTION_CONST_SPELLID_FREEZING_TRAP    = CONST.SPELLID_FREEZING_TRAP\n\n--For Toaster\nlocal Toaster                                    = _G.Toaster\nlocal GetSpellTexture                             = _G.TMW.GetSpellTexture\n\n--- ============================ CONTENT ===========================\n--- ======= APL LOCALS =======\n-- luacheck: max_line_length 9999\n\nAction[ACTION_CONST_MONK_WINDWALKER] = {\n    -- Racial\n    ArcaneTorrent                    = Action.Create({ Type = \"Spell\", ID = 50613    }),\n    BloodFury                        = Action.Create({ Type = \"Spell\", ID = 20572    }),\n    Fireblood                        = Action.Create({ Type = \"Spell\", ID = 265221   }),\n    AncestralCall                    = Action.Create({ Type = \"Spell\", ID = 274738   }),\n    Berserking                        = Action.Create({ Type = \"Spell\", ID = 26297    }),\n    ArcanePulse                        = Action.Create({ Type = \"Spell\", ID = 260364   }),\n    QuakingPalm                        = Action.Create({ Type = \"Spell\", ID = 107079   }),\n    Haymaker                        = Action.Create({ Type = \"Spell\", ID = 287712   }), \n    WarStomp                        = Action.Create({ Type = \"Spell\", ID = 20549    }),\n    BullRush                        = Action.Create({ Type = \"Spell\", ID = 255654   }),  \n    GiftofNaaru                        = Action.Create({ Type = \"Spell\", ID = 59544    }),\n    Shadowmeld                        = Action.Create({ Type = \"Spell\", ID = 58984    }), \n    Stoneform                        = Action.Create({ Type = \"Spell\", ID = 20594    }), \n    BagofTricks                        = Action.Create({ Type = \"Spell\", ID = 312411    }),\n    WilloftheForsaken                = Action.Create({ Type = \"Spell\", ID = 7744        }),   \n    EscapeArtist                    = Action.Create({ Type = \"Spell\", ID = 20589    }), \n    EveryManforHimself                = Action.Create({ Type = \"Spell\", ID = 59752    }), \n    LightsJudgment                    = Action.Create({ Type = \"Spell\", ID = 255647    }),\n    RocketJump                        = Action.Create({ Type = \"Spell\", ID = 69070    }),\n    DarkFlight                        = Action.Create({ Type = \"Spell\", ID = 68992    }),\n    \n    -- Monk General\n    BlackoutKick                    = Action.Create({ Type = \"Spell\", ID = 100784    }),\n    CracklingJadeLightning          = Action.Create({ Type = \"Spell\", ID = 117952    }),    \n    Detox                             = Action.Create({ Type = \"Spell\", ID = 218164    }),    \n    ExpelHarm                        = Action.Create({ Type = \"Spell\", ID = 322101    }),\n    FortifyingBrew                  = Action.Create({ Type = \"Spell\", ID = 243435    }),    \n    LegSweep                        = Action.Create({ Type = \"Spell\", ID = 119381    }),\n    MarkoftheCrane                  = Action.Create({ Type = \"Spell\", ID = 228287    }),    \n    MysticTouch                       = Action.Create({ Type = \"Spell\", ID = 8647, Hidden = true         }),\n    Paralysis                        = Action.Create({ Type = \"Spell\", ID = 344359    }),\n    Provoke                            = Action.Create({ Type = \"Spell\", ID = 115546    }),\n    Resuscitate                        = Action.Create({ Type = \"Spell\", ID = 115178    }),    \n    Roll                            = Action.Create({ Type = \"Spell\", ID = 109132    }),    \n    SpinningCraneKick               = Action.Create({ Type = \"Spell\", ID = 101546    }),\n    TigerPalm                        = Action.Create({ Type = \"Spell\", ID = 100780    }),\n    RushingTigerPalm                = Action.Create({ Type = \"Spell\", ID = 337341    }),\n    TouchofDeath                       = Action.Create({ Type = \"Spell\", ID = 325215    }),\n    Transcendence                   = Action.Create({ Type = \"Spell\", ID = 101649    }),\n    TranscendenceTransfer           = Action.Create({ Type = \"Spell\", ID = 119996    }),\n    Vivify                           = Action.Create({ Type = \"Spell\", ID = 116670    }),\n    ZenFlight                       = Action.Create({ Type = \"Spell\", ID = 125883    }),\n    ZenPilgrimage                      = Action.Create({ Type = \"Spell\", ID = 126892    }),\n    \n    -- WindWalker Specific\n    Disable                           = Action.Create({ Type = \"Spell\", ID = 116095    }),\n    FistsofFury                       = Action.Create({ Type = \"Spell\", ID = 113656    }),\n    FlyingSerpentKick               = Action.Create({ Type = \"Spell\", ID = 344487    }),\n    FlyingSerpentKickJump           = Action.Create({ Type = \"Spell\", ID = 115057    }), -- Action ID of FlyingSerpentKick\n    InvokeXuen                       = Action.Create({ Type = \"Spell\", ID = 323999    }),\n    RisingSunKick                   = Action.Create({ Type = \"Spell\", ID = 107428    }),\n    SpearHandStrike                   = Action.Create({ Type = \"Spell\", ID = 116705    }),\n    StormEarthAndFire               = Action.Create({ Type = \"Spell\", ID = 137639              }), \n    StormEarthAndFireFixate         = Action.Create({ Type = \"Spell\", ID = 221771           }), -- while StormEarthAndFire buff\n    TouchofKarma                       = Action.Create({ Type = \"Spell\", ID = 122470    }),\n    SpinningCraneKick               = Action.Create({ Type = \"Spell\", ID = 101546    }),\n    Afterlife                        = Action.Create({ Type = \"Spell\", ID = 116092, Hidden = true        }),\n    MasteryComboStrikes             = Action.Create({ Type = \"Spell\", ID = 115636, Hidden = true        }),\n    Windwalking                        = Action.Create({ Type = \"Spell\", ID = 157411, Hidden = true        }),\n    \n    --Other\n    BlessingofKings                  = Action.Create({ Type = \"Spell\", ID = 58054    }),\n    MortalWoundsDebuff                = Action.Create({ Type = \"Spell\", ID = 115804   }),\n    StopCast                        = Action.Create({ Type = \"Spell\", ID = 61721, Hidden = true           }),\n    \n    --Hidden\n    BlackoutKickBuff                = Action.Create({ Type = \"Spell\", ID = 116768, Hidden = true  }),\n    \n    \n    \n    -- Normal Talents\n    EyeoftheTiger                   = Action.Create({ Type = \"Spell\", ID = 196607, Hidden = true    }),\n    ChiWave                            = Action.Create({ Type = \"Spell\", ID = 115098    }),\n    ChiBurst                        = Action.Create({ Type = \"Spell\", ID = 123986    }),\n    Celerity                           = Action.Create({ Type = \"Spell\", ID = 115173, Hidden = true    }),\n    ChiTorpedo                      = Action.Create({ Type = \"Spell\", ID = 115008    }),\n    TigersLust                        = Action.Create({ Type = \"Spell\", ID = 116841    }),\n    Ascension                        = Action.Create({ Type = \"Spell\", ID = 115396, Hidden = true    }),\n    FistoftheWhiteTiger             = Action.Create({ Type = \"Spell\", ID = 261947    }),\n    EnergizingElixir                = Action.Create({ Type = \"Spell\", ID = 115288    }),\n    TigerTailSweep                  = Action.Create({ Type = \"Spell\", ID = 264348, Hidden = true    }),\n    GoodKarma                        = Action.Create({ Type = \"Spell\", ID = 280195, Hidden = true    }),\n    RingofPeace                        = Action.Create({ Type = \"Spell\", ID = 116844    }),\n    InnerStrength                   = Action.Create({ Type = \"Spell\", ID = 261767, Hidden = true    }),\n    DiffuseMagic                    = Action.Create({ Type = \"Spell\", ID = 122783    }),\n    DampenHarm                      = Action.Create({ Type = \"Spell\", ID = 122278    }),\n    HitCombo                        = Action.Create({ Type = \"Spell\", ID = 196740, Hidden = true    }),    \n    RushingJadeWind                 = Action.Create({ Type = \"Spell\", ID = 116847    }),\n    DanceofChiJi                    = Action.Create({ Type = \"Spell\", ID = 325201, Hidden = true    }),\n    SpiritualFocus                  = Action.Create({ Type = \"Spell\", ID = 280197, Hidden = true    }),\n    WhirlingDragonPunch             = Action.Create({ Type = \"Spell\", ID = 152175    }),\n    Serenity                        = Action.Create({ Type = \"Spell\", ID = 152173    }),\n    \n    \n    -- PvP Talents\n    RidetheWind                    = Action.Create({ Type = \"Spell\", ID = 201372, Hidden = true    }),\n    TigereyeBrew                    = Action.Create({ Type = \"Spell\", ID = 247483    }),\n    ReverseHarm                    = Action.Create({ Type = \"Spell\", ID = 342928, Hidden = true    }),\n    DisablingReach                        = Action.Create({ Type = \"Spell\", ID = 201769, Hidden = true    }),\n    GrappleWeapon                = Action.Create({ Type = \"Spell\", ID = 233759    }),\n    AlphaTiger                    = Action.Create({ Type = \"Spell\", ID = 287503, Hidden = true    }),\n    WindWaker                    = Action.Create({ Type = \"Spell\", ID = 287506, Hidden = true    }),\n    PressurePoints                = Action.Create({ Type = \"Spell\", ID = 345829, Hidden = true    }),    \n    TurboFists                = Action.Create({ Type = \"Spell\", ID = 287681, Hidden = true    }),\n    \n    \n    -- Covenant Abilities\n    SummonSteward                    = Action.Create({ Type = \"Spell\", ID = 324739    }),\n    DoorofShadows                    = Action.Create({ Type = \"Spell\", ID = 300728    }),\n    Fleshcraft                        = Action.Create({ Type = \"Spell\", ID = 321687    }),\n    Fleshcraftshield                  = Action.Create({ Type = \"Spell\", ID = 324867    }),\n    Soulshape                        = Action.Create({ Type = \"Spell\", ID = 310143    }),\n    WeaponsofOrder                = Action.Create({ Type = \"Spell\", ID = 310454    }),\n    WeaponsofOrderWW                =Action.Create({ Type = \"Spell\", ID = 311054, Hidden = true    }),\n    BonedustBrew                    = Action.Create({ Type = \"Spell\", ID = 325216    }),\n    DeathsDue                        = Action.Create({ Type = \"Spell\", ID = 324128    }),  \n    FaelineStomp                        = Action.Create({ Type = \"Spell\", ID = 327104    }),\n    FallenOrder                        = Action.Create({ Type = \"Spell\", ID = 326860    }),       \n    \n    \n    -- Conduits\n    CoordinatedOffensive            = Action.Create({ Type = \"Spell\", ID = 336598, Hidden = true    }),\n    \n    \n    -- Legendaries\n    -- General Legendaries\n    DeathsEmbrace                    = Action.Create({ Type = \"Spell\", ID = 334728, Hidden = true    }),\n    EmperorsCapacitorStack              = Action.Create({ Type = \"Spell\", ID = 337291   }),\n    ChiEnergy                              = Action.Create({ Type = \"Spell\", ID = 337571    }),\n    \n    \n    --Wind Walker Legendaries\n    DeadliestCoil                    = Action.Create({ Type = \"Spell\", ID = 334949, Hidden = true    }),\n    \n    \n    --Anima Powers - to add later...\n    \n    \n    -- Trinkets\n    DreadFireVessel            = Create({ Type = \"Trinket\", ID = 6805 }),   \n    \n    \n    -- Potions\n    PotionofUnbridledFury            = Action.Create({ Type = \"Potion\", ID = 169299, QueueForbidden = true }),     \n    SuperiorPotionofUnbridledFury    = Action.Create({ Type = \"Potion\", ID = 168489, QueueForbidden = true }),\n    PotionofSpectralStrength        = Action.Create({ Type = \"Potion\", ID = 171275, QueueForbidden = true }),\n    PotionofSpectralAgility      = Action.Create({ Type = \"Potion\", ID = 171270, QueueForbidden = true }),\n    PotionofSpectralStamina            = Action.Create({ Type = \"Potion\", ID = 171274, QueueForbidden = true }),\n    PotionofEmpoweredExorcisms        = Action.Create({ Type = \"Potion\", ID = 171352, QueueForbidden = true }),\n    PotionofHardenedShadows            = Action.Create({ Type = \"Potion\", ID = 171271, QueueForbidden = true }),\n    PotionofPhantomFire                = Action.Create({ Type = \"Potion\", ID = 171349, QueueForbidden = true }),\n    PotionofDeathlyFixation            = Action.Create({ Type = \"Potion\", ID = 171351, QueueForbidden = true }),\n    SpiritualHealingPotion            = Action.Create({ Type = \"Potion\", ID = 171267, QueueForbidden = true }),      \n    \n    -- Misc\n    Channeling                      = Action.Create({ Type = \"Spell\", ID = 209274, Hidden = true     }),    -- Show an icon during channeling\n    TargetEnemy                     = Action.Create({ Type = \"Spell\", ID = 44603, Hidden = true     }),    -- Change Target (Tab button)\n    StopCast                        = Action.Create({ Type = \"Spell\", ID = 61721, Hidden = true     }),        -- spell_magic_polymorphrabbit\n    PoolResource                    = Action.Create({ Type = \"Spell\", ID = 209274, Hidden = true     }),\n    Quake                           = Action.Create({ Type = \"Spell\", ID = 240447, Hidden = true     }), -- Quake (Mythic Plus Affix)\n    GCD                          = Action.Create({ Type = \"Spell\", ID = 61304, Hidden = true     }),   \n}\n\n\nlocal A = setmetatable(Action[ACTION_CONST_MONK_WINDWALKER], { __index = Action })\n\nlocal player                                 = \"player\"\nlocal PartyUnits\nTMW:RegisterSelfDestructingCallback(\"TMW_ACTION_IS_INITIALIZED_PRE\", function()\n        PartyUnits = GetToggle(2, \"PartyUnits\", ACTION_CONST_MONK_WINDWALKER)\n        return true -- Signal RegisterSelfDestructingCallback to unregister\nend)\n\nlocal function num(val)\n    if val then return 1 else return 0 end\nend\n\nlocal function bool(val)\n    return val ~= 0\nend\nlocal player = \"player\"\n----------------------\n-------- COMMON PREAPL -------\n----------------------\nlocal Temp = {\n    TotalAndPhys                            = {\"TotalImun\", \"DamagePhysImun\"},\n    TotalAndCC                              = {\"TotalImun\", \"CCTotalImun\"},\n    TotalAndPhysKick                        = {\"TotalImun\", \"DamagePhysImun\", \"KickImun\"},\n    TotalAndPhysAndCC                       = {\"TotalImun\", \"DamagePhysImun\", \"CCTotalImun\"},\n    TotalAndPhysAndStun                     = {\"TotalImun\", \"DamagePhysImun\", \"StunImun\"},\n    TotalAndPhysAndCCAndStun                = {\"TotalImun\", \"DamagePhysImun\", \"CCTotalImun\", \"StunImun\"},\n    TotalAndMag                             = {\"TotalImun\", \"DamageMagicImun\"},\n    TotalAndMagKick                         = {\"TotalImun\", \"DamageMagicImun\", \"KickImun\"},\n    DisablePhys                             = {\"TotalImun\", \"DamagePhysImun\", \"Freedom\", \"CCTotalImun\"},\n    DisableMag                              = {\"TotalImun\", \"DamageMagicImun\", \"Freedom\", \"CCTotalImun\"},\n    IsSlotTrinketBlocked                    = {},\n}; do     \n    \n    -- Push IsSlotTrinketBlocked\n    for key, val in pairs(Action[ACTION_CONST_MONK_WINDWALKER]) do \n        if type(val) == \"table\" and val.Type == \"Trinket\" then \n            Temp.IsSlotTrinketBlocked[val.ID] = true\n        end \n    end \nend \n\nlocal function IsSchoolFree()\n    return LoC:IsMissed(\"SILENCE\") and LoC:Get(\"SCHOOL_INTERRUPT\", \"NATURE\") == 0\nend \n\nlocal IsIndoors, UnitIsUnit, UnitName = IsIndoors, UnitIsUnit, UnitName\n\n--Register Toaster\nToaster:Register(\"TripToast\", function(toast, ...)\n        local title, message, spellID = ...\n        toast:SetTitle(title or \"nil\")\n        toast:SetText(message or \"nil\")\n        if spellID then \n            if type(spellID) ~= \"number\" then \n                error(tostring(spellID) .. \" (spellID) is not a number for TripToast!\")\n                toast:SetIconTexture(\"Interface\\FriendsFrame\\Battlenet-WoWicon\")\n            else \n                toast:SetIconTexture((GetSpellTexture(spellID)))\n            end \n        else \n            toast:SetIconTexture(\"Interface\\FriendsFrame\\Battlenet-WoWicon\")\n        end \n        toast:SetUrgencyLevel(\"normal\") \nend)\n\nfunction Player:AreaTTD(range)\n    local ttdtotal = 0\n    local totalunits = 0\n    local r = range\n    \n    for _, unitID in pairs(ActiveUnitPlates) do \n        if Unit(unitID):GetRange() <= r then \n            local ttd = Unit(unitID):TimeToDie()\n            totalunits = totalunits + 1\n            ttdtotal = ttd + ttdtotal\n        end\n    end\n    \n    if totalunits == 0 then\n        return 0\n    end\n    \n    return ttdtotal / totalunits\nend    \n\nlocal function InMelee(unit)\n    -- @return boolean \n    return A.TigerPalm:IsInRange(unit)\nend \n\nlocal function GetByRange(count, range, isCheckEqual, isCheckCombat)\n    -- @return boolean \n    local c = 0 \n    for unit in pairs(ActiveUnitPlates) do \n        if (not isCheckEqual or not UnitIsUnit(\"target\", unit)) and (not isCheckCombat or Unit(unit):CombatTime() > 0) then \n            if InMelee(unit) then \n                c = c + 1\n            elseif range then \n                local r = Unit(unit):GetRange()\n                if r > 0 and r <= range then \n                    c = c + 1\n                end \n            end \n            \n            if c >= count then \n                return true \n            end \n        end \n    end\nend \nGetByRange = A.MakeFunctionCachedDynamic(GetByRange)\n\n-- Non GCD spell check\nlocal function countInterruptGCD(unit)\n    if not A.SpearHandStrike:IsReadyByPassCastGCD(unit) or not A.SpearHandStrike:AbsentImun(unit, Temp.TotalAndPhysKick, true) then \n        return true \n    end \nend \n\n--Work around fix for AoE off breaking\nif UseAoE == true\nthen AoETargets = Action.GetToggle(2,\"AoETargets\")\nelse AoETargets = 10\nend\n\n-- Interrupts spells\nlocal function Interrupts(unit)\n    local LegSweepInterrupt = Action.GetToggle(2, \"LegSweepInterrupt\")\n    local ParalysisInterrupt = Action.GetToggle(2, \"ParalysisInterrupt\")\n    \n    if A.GetToggle(2, \"InterruptsRyan\") and (A.InstanceInfo.ID >= 2284 and A.InstanceInfo.ID <= 2296) --uses ryan interrupt table in SL dungeons and raid instance IDs\n    then\n        useKick, useCC, useRacial, notKickAble, castLeft = Action.InterruptIsValid(unit, \"RyanInterrupts\", true)\n    else \n        useKick, useCC, useRacial, notInterruptable, castRemainsTime, castDoneTime = Action.InterruptIsValid(unit, nil, nil, countInterruptGCD(unit))\n    end \n    \n    if castRemainsTime >= A.GetLatency() then\n        -- Spear Hand Strike\n        if useKick and not notInterruptable and A.SpearHandStrike:IsReady(unit) then \n            return A.SpearHandStrike\n        end\n        \n        -- Paralysis\n        if A.Paralysis:IsReady(unit) and ParalysisInterrupt and A.SpearHandStrike:GetCooldown() > 1 and useCC then \n            return A.Paralysis\n        end \n        \n        -- LegSweep\n        if A.LegSweep:IsReady(unit) and LegSweepInterrupt and A.SpearHandStrike:GetCooldown() > 1 and useCC then \n            return A.LegSweep\n        end \n        \n        if useRacial and A.QuakingPalm:AutoRacial(unit) then \n            return A.QuakingPalm\n        end \n        \n        if useRacial and A.Haymaker:AutoRacial(unit) then \n            return A.Haymaker\n        end \n        \n        if useRacial and A.WarStomp:AutoRacial(unit) then \n            return A.WarStomp\n        end \n        \n        if useRacial and A.BullRush:AutoRacial(unit) then \n            return A.BullRush\n        end \n    end\nend\n\nlocal function SelfDefensives(unit)\n    -- TouchofKarma\n    local TouchofKarma = GetToggle(2, \"TouchofKarma\")\n    if TouchofKarma >= 0 then \n        local unit\n        if IsUnitEnemy(\"mouseover\") then \n            unit = \"mouseover\"\n        elseif IsUnitEnemy(\"target\") then \n            unit = \"target\"\n        end     \n        \n        if unit and A.TouchofKarma:IsReady(unit) and A.TouchofKarma:AbsentImun(unit, Temp.TotalAndPhys, true) then \n            if     (\n                -- Auto \n                (\n                    TouchofKarma >= 100 and \n                    (\n                        Unit(player):TimeToDieX(30) < 2.5 or \n                        (\n                            A.IsInPvP and \n                            Unit(player):HealthPercent() < 70 and \n                            Unit(player):IsFocused(nil, true) \n                        )\n                    )\n                ) or \n                -- Custom \n                (\n                    TouchofKarma < 100 and \n                    Unit(player):HealthPercent() < TouchofKarma\n                )\n            ) and \n            (\n                Unit(player):HasBuffs(\"DeffBuffs\", true) == 0 or \n                Unit(player):HealthPercent() < 20\n            )\n            then \n                return A.TouchofKarma\n            end \n        end \n    end \n    \n    -- DampenHarm\n    local DampenHarm = GetToggle(2, \"DampenHarm\")\n    if     DampenHarm >= 0 and A.DampenHarm:IsReady(player) and \n    (\n        (     -- Auto \n            DampenHarm >= 100 and \n            (\n                -- HP lose per sec >= 20\n                Unit(player):GetDMG() * 100 / Unit(player):HealthMax() >= 20 or \n                Unit(player):GetRealTimeDMG() >= Unit(player):HealthMax() * 0.20 or \n                -- TTD \n                Unit(player):TimeToDieX(25) < 5 or \n                (\n                    A.IsInPvP and \n                    (\n                        Unit(player):UseDeff() or \n                        (\n                            Unit(player, 5):HasFlags() and \n                            Unit(player):GetRealTimeDMG() > 0 and \n                            Unit(player):IsFocused() \n                        )\n                    )\n                )\n            ) and \n            Unit(player):HasBuffs(\"DeffBuffs\", true) == 0\n        ) or \n        (    -- Custom\n            DampenHarm < 100 and \n            Unit(player):HealthPercent() <= DampenHarm\n        )\n    ) \n    then \n        return A.DampenHarm\n    end     \n    \n    -- DiffuseMagic\n    local DiffuseMagic = GetToggle(2, \"DiffuseMagic\")\n    if     DiffuseMagic >= 0 and A.DiffuseMagic:IsReady(player) and \n    (\n        (     -- Auto \n            DiffuseMagic >= 100 and \n            Unit(player):TimeToDieMagicX(35) < 5 and \n            -- Magic Damage still appear\n            Unit(player):GetRealTimeDMG(4) > 0 and \n            Unit(player):HasBuffs(\"DeffBuffsMagic\") == 0\n        ) or \n        (    -- Custom\n            DiffuseMagic < 100 and \n            Unit(player):HealthPercent() <= DiffuseMagic\n        )\n    ) \n    then \n        return A.DiffuseMagic\n    end \n    \n    -- FortifyingBrew\n    local FortifyingBrew = GetToggle(2, \"FortifyingBrew\")\n    if     FortifyingBrew >= 0 and A.FortifyingBrew:IsReady(player) and \n    (\n        (     -- Auto \n            FortifyingBrew >= 100 and \n            (\n                (\n                    not A.IsInPvP and \n                    Unit(player):HealthPercent() < 40 and \n                    Unit(player):TimeToDieX(20) < 6 \n                ) or \n                (\n                    A.IsInPvP and \n                    (\n                        Unit(player):UseDeff() or \n                        (\n                            Unit(player, 5):HasFlags() and \n                            Unit(player):GetRealTimeDMG() > 0 and \n                            Unit(player):IsFocused(nil, true)                                 \n                        )\n                    )\n                )\n            ) and \n            Unit(player):HasBuffs(\"DeffBuffs\") == 0\n        ) or \n        (    -- Custom\n            FortifyingBrew < 100 and \n            Unit(player):HealthPercent() <= FortifyingBrew\n        )\n    ) \n    then \n        return A.FortifyingBrew\n    end \n    \n    -- Stoneform (On Deffensive)\n    local Stoneform = GetToggle(2, \"Stoneform\")\n    if     Stoneform >= 0 and A.Stoneform:IsRacialReadyP(player) and \n    (\n        (     -- Auto \n            Stoneform >= 100 and \n            (\n                (\n                    not A.IsInPvP and                         \n                    Unit(player):TimeToDieX(65) < 3 \n                ) or \n                (\n                    A.IsInPvP and \n                    (\n                        Unit(player):UseDeff() or \n                        (\n                            Unit(player, 5):HasFlags() and \n                            Unit(player):GetRealTimeDMG() > 0 and \n                            Unit(player):IsFocused()                                 \n                        )\n                    )\n                )\n            ) \n        ) or \n        (    -- Custom\n            Stoneform < 100 and \n            Unit(player):HealthPercent() <= Stoneform\n        )\n    ) \n    then \n        return A.Stoneform\n    end     \n    \n    -- Stoneform (Self Dispel)\n    if not A.IsInPvP and A.Stoneform:IsRacialReady(player, true) and AuraIsValid(player, \"UseDispel\", \"Dispel\") then \n        return A.Stoneform\n    end\nend \n\n--Fleshcraft\n--local FleshcraftHP = Action.GetToggle(2, \"FleshcraftHP\")\n--local FlashcraftOperator = Action.GetToggle(2, \"FleshcraftOperator\")\n--local FlashcraftTTD = Action.GetToggle(2, \"FleshcraftTTD\")\n--if FleshcraftOperator == \"AND\" and A.Fleshcraft:IsReady(player) and A.Fleshcraft:GetSpellTimeSinceLastCast() > 120 and Unit(player):HealthPercent() <= FleshcraftHP and Unit(player):TimeToDie() <= FlashcraftTTD then\n--    return A.Fleshcraft\n--end\n--if FleshcraftOperator == \"OR\" and A.Fleshcraft:IsReady(player) and A.Fleshcraft:GetSpellTimeSinceLastCast() > 120 and (Unit(player):HealthPercent() <= FleshcraftHP or Unit(player):TimeToDie() <= FlashcraftTTD) then\n--    return A.Fleshcraft\n--end\n\n\nSelfDefensives = A.MakeFunctionCachedDynamic(SelfDefensives)\n\nlocal function GetAttackType()\n    if A.TigereyeBrew:IsSpellLearned() and Unit(player):HasBuffs(A.TigereyeBrew.ID, true, true) > 0 then \n        return Temp.TotalAndMag\n    end  \n    return Temp.TotalAndPhys\nend \n\nlocal function GetAttackTypeForDisable()\n    if A.TigereyeBrew:IsSpellLearned() and Unit(player):HasBuffs(A.TigereyeBrew.ID, true, true) > 0 then \n        return Temp.DisableMag\n    end  \n    return Temp.DisablePhys\nend \n\n\n\n--- ======= ACTION LISTS =======\n-- [3] Single Rotation\nA[3] = function(icon, isMulti)\n    ----------\n    --- ROTATION VAR ---\n    ----------\n    local EnemyRotation, FriendlyRotation\n    local isSchoolFree = IsSchoolFree()\n    local isMoving = A.Player:IsMoving()\n    local inCombat = Unit(\"player\"):CombatTime() > 0\n    local combatTime = Unit(\"player\"):CombatTime()\n    local inDisarm  = LoC:Get(\"DISARM\") > 0\n    local Energy = Player:Energy()\n    local Chi = Player:Chi()\n    local inMelee             = false \n    \n    --    local PotionTTD = Unit(\"target\"):TimeToDie() > Action.GetToggle(2, \"PotionTTD\")\n    local AutoPotionSelect = Action.GetToggle(2, \"AutoPotionSelect\")\n    local PotionTrue = Action.GetToggle(1, \"Potion\")    \n    local Racial = Action.GetToggle(1, \"Racial\")\n    local UseAoE = Action.GetToggle(2, \"AoE\")\n    local AoETargets = Action.GetToggle(2, \"AoETargets\")\n    local currentTargets = MultiUnits:GetByRange(7)    \n    local MouseoverTarget = UnitName(\"mouseover\")\n    \n    local function ComboStrike(SpellObject)\n        return (not Player:PrevGCD(1, SpellObject))\n    end\n    \n    \n    --actions+=/variable,name=hold_xuen,op=set,value=cooldown.invoke_xuen_the_white_tiger.remains>fight_remains|fight_remains<120&fight_remains>cooldown.serenity.remains&cooldown.serenity.remains>10\n    VarHoldXuen = ((A.InvokeXuen:GetCooldown() > Player:AreaTTD(10)) or (Player:AreaTTD(10) < 120 and Player:AreaTTD(10) > A.Serenity:GetCooldown() and A.Serenity:GetCooldown() > 10))\n    \n    --actions.cd_serenity=variable,name=serenity_burst,op=set,value=cooldown.serenity.remains<1|pet.xuen_the_white_tiger.active&cooldown.serenity.remains>30|fight_remains<20\n    VarSerenityBurst = (A.Serenity:GetCooldown() < 1 or (A.InvokeXuen:GetSpellTimeSinceLastCast() < 24 and A.Serenity:GetCooldown() > 30) or Player:AreaTTD(10) < 20)\n    \n    --------------------------------------\n    -------- ENEMY UNIT ROTATION ---------\n    --------------------------------------\n    local function EnemyRotation(unit)\n        local _, _, _, _, _, _, _, ChannelCheckplayer = UnitChannelInfo(\"player\")\n        local _, _, _, _, ChannelEndMouseover, _, _, ChannelCheckmouseover = UnitChannelInfo(\"mouseover\")\n        \n        local inMelee  = A.TigerPalm:IsInRange(target or unit) \n        -- StormEarthAndFireFixate\n        if target and useStormEarthAndFireFixate and isSchoolFree and A.StormEarthAndFireFixate:IsReady(target) and not A.Serenity:IsSpellLearned() and Unit(player):HasBuffs(A.StormEarthAndFire.ID, true) > 0 then \n            return A.StormEarthAndFireFixate:Show(icon)\n        end    \n        \n        -- Check if target is explosive or totem for dont use AoE spells \n        if Unit(unit):IsExplosives() or (A.Zone ~= \"none\" and Unit(unit):IsTotem()) then\n            inAoE = false\n        end\n        \n        --Explosive Rotation        \n        local function ExplosiveRotation()\n            if Unit(\"target\"):IsExplosives() and ChannelCheckplayer == 113656 then\n                return A.StopCast:Show(icon)\n            end\n            if A.TigerPalm:IsReady(\"target\") and (ComboStrike(A.TigerPalm) or not A.HitCombo:IsTalentLearned()) then\n                return A.TigerPalm:Show(icon)\n            end\n            if A.BlackoutKick:IsReady(\"target\") and (ComboStrike(A.BlackoutKick) or not A.HitCombo:IsTalentLearned()) then\n                return A.BlackoutKick:Show(icon)\n            end\n            if A.RisingSunKick:IsReady(\"target\") then\n                return A.RisingSunKick:Show(icon)\n            end\n        end\n        \n        if Unit(\"target\"):IsExplosives() and ExplosiveRotation() then\n            return true\n        end\n        \n        --Explosive TargetMouseOver\n        A[6] = function(icon, isMulti)        \n            if (A.TigerPalm:IsReady(\"mouseover\") or A.BlackoutKick:IsReady(\"mouseover\") or A.RisingSunKick:IsReady(\"mouseover\")) and A.TigerPalm:IsInRange(\"mouseover\") and Action.GetToggle(2, \"ExplosiveMouseover\") and Unit(\"mouseover\"):IsExplosives() and (not ChannelCheckplayer == 113656 or (Unit(\"mouseover\"):IsExplosives() and ChannelEndMouseover < 2000)) then\n                return A:Show(icon, ACTION_CONST_LEFT)\n            end\n        end        \n        \n        -- Out of combat / Precombat\n        if target and inCombat == 0 and not A.IsInPvP then     \n            local Pull = BossMods:GetPullTimer()    \n            \n            -- PotionofUnbridledFury => ChiWave => ChiBurst  \n            if Pull > 0 then \n                -- Timing\n                local extra_time = GetCurrentGCD() + 0.1\n                local ChiWave, ChiBurst\n                \n                -- ChiWave\n                -- actions.precombat+=/chi_wave,if=!talent.energizing_elixir.enabled\n                if inAoE and isSchoolFree and A.ChiWave:IsReady(target, true, nil, true) and (not A.EnergizingElixir:IsTalentLearned()) and \n                (\n                    not A.IsInPvP or \n                    (\n                        Unit(target):GetRange() <= 25 and\n                        not EnemyTeam(\"HEALER\"):IsBreakAble(25) \n                    )\n                )\n                then \n                    ChiWave = true \n                    extra_time = extra_time + GetGCD()\n                end \n                \n                -- ChiBurst\n                -- actions.precombat+=/chi_burst\n                if inAoE and not isMoving and isSchoolFree and A.ChiBurst:IsReady(target, true, nil, true) and                  \n                (\n                    not A.IsInPvP or \n                    (\n                        Unit(target):GetRange() <= 40 and\n                        not EnemyTeam(\"HEALER\"):IsBreakAble(40) \n                    )\n                )\n                then \n                    ChiBurst = true \n                    extra_time = extra_time + A.ChiBurst:GetSpellCastTime()\n                end \n                \n                \n                -- Pull Rotation\n                if not inDisarm and A.PotionofUnbridledFury:IsReady(target, true, nil, true) and Pull <= 2.5 then \n                    return A.PotionofUnbridledFury:Show(icon)\n                end \n                \n                if ChiWave and not ShouldStop() and Pull <= extra_time then \n                    return A.ChiWave:Show(icon)\n                end \n                \n                if ChiBurst and not ShouldStop() and Pull <= extra_time then \n                    return A.ChiBurst:Show(icon)\n                end\n                \n                -- Return \n                return \n            end         \n        end \n        \n        \n        --#####################\n        --##### SERENITY ######\n        --#####################    \n        local function SerenityRotation()\n            \n            --actions.serenity=fists_of_fury,if=buff.serenity.remains<1\n            if A.FistsofFury:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) and Unit(player):HasBuffs(A.Serenity.ID, true) < 1 then\n                return A.FistsofFury:Show(icon)\n            end\n            \n            -- Trinket 1\n            if A.Trinket1:IsReady(unit) and Unit(unit):GetRange() <= 7  then\n                return A.Trinket1:Show(icon)    \n            end\n            \n            -- Trinket 2\n            if A.Trinket2:IsReady(unit) and Unit(unit):GetRange() <= 7 then\n                return A.Trinket2:Show(icon)    \n            end   \n            \n            --actions.serenity+=/spinning_crane_kick,if=combo_strike&(active_enemies>=3|active_enemies>1&!cooldown.rising_sun_kick.up)\n            if A.SpinningCraneKick:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) and ComboStrike(A.SpinningCraneKick) and (MultiUnits:GetByRange(10, 3) >= 3 or (MultiUnits:GetByRange(10, 3) >= 1 and A.RisingSunKick:GetCooldown() > 0)) then\n                return A.SpinningCraneKick:Show(icon)\n            end\n            \n            --actions.serenity+=/rising_sun_kick,target_if=min:debuff.mark_of_the_crane.remains,if=combo_strike\n            if A.RisingSunKick:IsReady(unit) and ComboStrike(A.RisingSunKick) then\n                return A.RisingSunKick:Show(icon)\n            end\n            \n            --actions.serenity+=/fists_of_fury,if=active_enemies>=3\n            if A.FistsofFury:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) and MultiUnits:GetByRange(10, 3) >= 3 then\n                return A.FistsofFury:Show(icon)\n            end\n            \n            --actions.serenity+=/spinning_crane_kick,if=combo_strike&buff.dance_of_chiji.up\n            if A.SpinningCraneKick:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) and ComboStrike(A.SpinningCraneKick) and Unit(player):HasBuffs(A.DanceofChiJi.ID, true) > 0 then\n                return A.SpinningCraneKick:Show(icon)\n            end\n            \n            --actions.serenity+=/blackout_kick,target_if=min:debuff.mark_of_the_crane.remains,if=combo_strike&buff.weapons_of_order_ww.up&cooldown.rising_sun_kick.remains>2\n            if A.BlackoutKick:IsReady(unit) and ComboStrike(A.BlackoutKick) and Unit(\"player\"):HasBuffs(A.WeaponsofOrderWW.ID, true) > 0 and A.RisingSunKick:GetCooldown() > 2 then\n                return A.BlackoutKick:Show(icon)\n            end\n            \n            --actions.serenity+=/fists_of_fury,interrupt_if=!cooldown.rising_sun_kick.up\n            if A.FistsofFury:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) then\n                return A.FistsofFury:Show(icon)\n            end\n            \n            -- Interrupt for FoF\n            if A.FistsofFury:GetSpellTimeSinceLastCast() < 1 and Unit(player):HasBuffs(A.Serenity.ID, true) > 0 and A.RisingSunKick:IsReady(unit) then\n                return A.StopCast:Show(icon)\n            end\n            \n            --actions.serenity+=/spinning_crane_kick,if=combo_strike&debuff.bonedust_brew.up\n            if A.SpinningCraneKick:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) and ComboStrike(A.SpinningCraneKick) and Unit(\"target\"):HasDeBuffs(A.BonedustBrew.ID, true) > 0 then\n                return A.SpinningCraneKick:Show(icon)\n            end\n            \n            --actions.serenity+=/fist_of_the_white_tiger,target_if=min:debuff.mark_of_the_crane.remains,if=chi<3\n            if A.FistoftheWhiteTiger:IsReady() and Player:Chi() < 3 then\n                return A.FistoftheWhiteTiger:Show(icon)\n            end\n            \n            --actions.serenity+=/blackout_kick,target_if=min:debuff.mark_of_the_crane.remains,if=combo_strike|!talent.hit_combo\n            if A.BlackoutKick:IsReady(unit) and (ComboStrike(A.BlackoutKick) or not A.HitCombo:IsTalentLearned()) then\n                return A.BlackoutKick:Show(icon)\n            end\n            \n            --actions.serenity+=/spinning_crane_kick\n            if A.SpinningCraneKick:IsReady() and (inMelee or Unit(\"target\"):GetRange() <= 8) and ComboStrike(A.SpinningCraneKick) then\n                return A.SpinningCraneKick:Show(icon)\n            end\n        end\n        \n        \n        --#####################\n        --####### OPENER ######\n        --#####################\n        \n        local function OpenerRotation()\n            \n            --actions.opener=fist_of_the_white_tiger,target_if=min:debuff.mark_of_the_crane.remains,if=chi.max-chi>=3\n            if A.FistoftheWhiteTiger:IsReady(unit) and Player:ChiDeficit() >= 3 then\n                return A.FistoftheWhiteTiger:Show(icon)\n            end\n            \n            --actions.opener+=/expel_harm,if=talent.chi_burst.enabled&chi.max-chi>=3\n            if A.ExpelHarm:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) and A.ChiBurst:IsTalentLearned() and Player:ChiDeficit() >= 3 then\n                return A.ExpelHarm:Show(icon)\n            end\n            \n            --actions.opener+=/tiger_palm,target_if=min:debuff.mark_of_the_crane.remains+(debuff.recently_rushing_tiger_palm.up*20),if=combo_strike&chi.max-chi>=2\n            if A.TigerPalm:IsReady(unit) and ComboStrike(A.TigerPalm) and Player:ChiDeficit() >= 2 then\n                return A.TigerPalm:Show(icon)\n            end\n            \n            --actions.opener+=/chi_wave,if=chi.max-chi=2\n            if A.ChiWave:IsReady(unit) and Player:ChiDeficit() == 2 then\n                return A.ChiWave:Show(icon)\n            end\n            \n            --actions.opener+=/expel_harm\n            if A.ExpelHarm:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) then\n                return A.ExpelHarm:Show(icon)\n            end\n            \n            --actions.opener+=/tiger_palm,target_if=min:debuff.mark_of_the_crane.remains+(debuff.recently_rushing_tiger_palm.up*20),if=chi.max-chi>=2\n            if A.TigerPalm:IsReady(unit) and Player:ChiDeficit() >= 2 and ComboStrike(A.TigerPalm) then\n                return A.TigerPalm:Show(icon)\n            end\n        end\n        \n        \n        --#####################\n        --######## AOE ########\n        --#####################\n        \n        local function AoERotation()\n            --actions.aoe=whirling_dragon_punch\n            if A.WhirlingDragonPunch:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) then\n                return A.WhirlingDragonPunch:Show(icon)\n            end\n            \n            if A.StormEarthAndFire:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) and Action.GetToggle(2, \"SEFOutBurst\") and A.StormEarthAndFire:GetSpellCharges() == 2 and Player:AreaTTD(10) > 15 then\n                return A.StormEarthAndFire:Show(icon)\n            end\n            \n            if A.StormEarthAndFireFixate:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) and A.CoordinatedOffensive:IsSoulbindLearned() then\n                return A.StormEarthandFire:Show(icon)\n            end\n            \n            --actions.aoe+=/energizing_elixir,if=chi.max-chi>=2&energy.time_to_max>2|chi.max-chi>=4\n            if A.EnergizingElixir:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) and ((Player:ChiDeficit() >= 2 and Player:EnergyTimeToMaxPredicted()) > 2 or Player:ChiDeficit() >= 4) then\n                return A.EnergizingElixir:Show(icon)\n            end\n            \n            --actions.aoe+=/spinning_crane_kick,if=combo_strike&(buff.dance_of_chiji.up|debuff.bonedust_brew.up)\n            if A.SpinningCraneKick:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) and ComboStrike(A.SpinningCraneKick) and (Unit(\"player\"):HasBuffs(A.DanceofChiJi.ID, true) > 0 or Unit(\"player\"):HasBuffs(A.BonedustBrew.ID, true) > 0) then\n                return A.SpinningCraneKick:Show(icon)\n            end\n            \n            --actions.aoe+=/fists_of_fury,if=energy.time_to_max>execute_time|chi.max-chi<=1\n            if A.FistsofFury:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) and (((Player:EnergyTimeToMaxPredicted() > Unit(\"target\"):TimeToDieX(15)) or Unit(\"target\"):IsDummy()) or Player:ChiDeficit() <= 1) then\n                return A.FistsofFury:Show(icon)\n            end\n            \n            --actions.aoe+=/rising_sun_kick,target_if=min:debuff.mark_of_the_crane.remains,if=(talent.whirling_dragon_punch&cooldown.rising_sun_kick.duration>cooldown.whirling_dragon_punch.remains+4)&(cooldown.fists_of_fury.remains>3|chi>=5)\n            if A.RisingSunKick:IsReady(unit) and ComboStrike(A.RisingSunKick) and (A.WhirlingDragonPunch:IsTalentLearned() and (10 * Player:SpellHaste()) > (A.WhirlingDragonPunch:GetCooldown() + 4)) and (A.FistsofFury:GetCooldown() > 3 or Player:Chi() >= 5) then\n                return A.RisingSunKick:Show(icon)\n            end\n            \n            --actions.aoe+=/rushing_jade_wind,if=buff.rushing_jade_wind.down\n            if A.RushingJadeWind:IsReady(player)  and (inMelee or Unit(\"target\"):GetRange() <= 8) and Unit(\"player\"):HasBuffs(A.RushingJadeWind.ID, true) == 0 then\n                return A.RushingJadeWind:Show(icon)\n            end\n            \n            --actions.aoe+=/spinning_crane_kick,if=combo_strike&((cooldown.bonedust_brew.remains>2&(chi>3|cooldown.fists_of_fury.remains>6)&(chi>=5|cooldown.fists_of_fury.remains>2))|energy.time_to_max<=3)\n            if A.SpinningCraneKick:IsReady(player)  and (inMelee or Unit(\"target\"):GetRange() <= 8) and (ComboStrike(A.SpinningCraneKick) and (((A.BonedustBrew:GetCooldown() > 2 or not (C_Covenants.GetActiveCovenantID() == 4)) and (Player:Chi() > 3 or (A.FistsofFury:GetCooldown() > 6)) and (Player:Chi() >= 5 or A.FistsofFury:GetCooldown() > 2)) or Player:EnergyTimeToMaxPredicted() <= 3)) then\n                return A.SpinningCraneKick:Show(icon)\n            end\n            \n            --actions.aoe+=/expel_harm,if=chi.max-chi>=1\n            if A.ExpelHarm:IsReady(player)  and (inMelee or Unit(\"target\"):GetRange() <= 8) and Player:ChiDeficit() >= 1 then\n                return A.ExpelHarm:Show(icon)\n            end\n            \n            --actions.aoe+=/fist_of_the_white_tiger,target_if=min:debuff.mark_of_the_crane.remains,if=chi.max-chi>=3\n            if A.FistoftheWhiteTiger:IsReady(unit) and Player:ChiDeficit() >= 3 then\n                return A.FistoftheWhiteTiger:Show(icon)\n            end\n            \n            --actions.aoe+=/chi_burst,if=chi.max-chi>=2\n            if A.ChiBurst:IsReady(player) and Player:ChiDeficit() >= 2 and not fsMoving then\n                return A.ChiBurst:Show(icon)\n            end\n            \n            --actions.aoe+=/crackling_jade_lightning,if=buff.the_emperors_capacitor.stack>19&energy.time_to_max>execute_time-1&cooldown.fists_of_fury.remains>execute_time\n            if A.CracklingJadeLightning:IsReady(unit) and Unit(\"player\"):HasBuffs(A.EmperorsCapacitorStack.ID, true) > 19 and Player:EnergyTimeToMaxPredicted() > (Unit(\"target\"):TimeToDieX(15) - 1) and A.FistsofFury:GetCooldown() > Unit(\"target\"):TimeToDieX(15) then\n                return A.CracklingJadeLightning:Show(icon)\n            end\n            \n            --actions.aoe+=/tiger_palm,target_if=min:debuff.mark_of_the_crane.remains+(debuff.recently_rushing_tiger_palm.up*20),if=chi.max-chi>=2&(!talent.hit_combo|combo_strike)\n            if A.TigerPalm:IsReady(unit) and Player:ChiDeficit() >= 2 and (not A.HitCombo:IsTalentLearned() or ComboStrike(A.TigerPalm)) then\n                return A.TigerPalm:Show(icon)\n            end\n            \n            \n            --actions.aoe+=/chi_wave,if=combo_strike\n            if A.ChiWave:IsReady(unit) and ComboStrike(A.ChiWave) then\n                return A.ChiWave:Show(icon)\n            end\n            \n            --actions.aoe+=/flying_serpent_kick,if=buff.bok_proc.down,interrupt=1\n            if A.FlyingSerpentKick:IsReady(unit) and Action.GetToggle(2, \"ToggleFlying\") and not isMoving and LoC:Get(\"ROOT\") == 0 and Unit(\"target\"):GetRange() <= 8 and Unit(\"player\"):HasBuffs(A.BlackoutKickBuff, true) == 0 and A.FlyingSerpentKick:AbsentImun(target, GetAttackType()) and Unit(player):HasBuffs(A.BlackoutKickBuff.ID, true) == 0 and (not A.IsInPvP or not EnemyTeam(\"HEALER\"):IsBreakAble(25)) then\n                return A.FlyingSerpentKick:Show(icon)\n            end\n            \n            -- Cancel for FoF with SEF and Weapons\n            if A.FlyingSerpentKick:GetSpellTimeSinceLastCast() < 0.5 and Action.GetToggle(2, \"ToggleFlying\") then\n                return A.FlyingSerpentKickJump:Show(icon)\n            end\n            \n            --actions.aoe+=/blackout_kick,target_if=min:debuff.mark_of_the_crane.remains,if=combo_strike&(buff.bok_proc.up|talent.hit_combo&prev_gcd.1.tiger_palm&chi=2&cooldown.fists_of_fury.remains<3|chi.max-chi<=1&prev_gcd.1.spinning_crane_kick&energy.time_to_max<3)\n            if A.BlackoutKick:IsReady(unit) and (ComboStrike(A.BlackoutKick) and ((Unit(\"target\"):HasBuffs(A.BlackoutKickBuff.ID, true) > 0) or (A.HitCombo:IsTalentLearned() and Player:PrevGCD(1, A.TigerPalm) and Player:Chi() == 2 and A.FistsofFury:GetCooldown() < 3) or (Player:ChiDeficit() <= 1 and Player:PrevGCD(1, A.SpinningCraneKick) and Player:EnergyTimeToMaxPredicted() < 3)))then\n                return A.BlackoutKick:Show(icon)\n            end\n        end\n        \n        --#####################\n        --#### COOLDOWNSEF ####\n        --#####################\n        \n        local function Cooldownsef()\n            --actions.cd_sef=invoke_xuen_the_white_tiger,if=!variable.hold_xuen|fight_remains<25\n            if A.InvokeXuen:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) and (not VarHoldXuen or Player:AreaTTD(10) < 25) then\n                return A.InvokeXuen:Show(icon)\n            end\n            \n            --actions.cd_sef+=/arcane_torrent,if=chi.max-chi>=1\n            if A.ArcaneTorrent:IsReady(player)  and (inMelee or Unit(\"target\"):GetRange() <= 8) and Player:ChiDeficit() >= 1 then\n                return A.ArcaneTorrent:Show(icon)\n            end\n            \n            --actions.cd_sef+=/touch_of_death,if=buff.storm_earth_and_fire.down&pet.xuen_the_white_tiger.active|fight_remains<10|fight_remains>180\n            if A.TouchofDeath:IsReady(unit) and ((Unit(\"player\"):HasBuffs(A.StormEarthAndFire.ID, true) == 0 and A.InvokeXuen:GetSpellTimeSinceLastCast() < 24) or Player:AreaTTD(10) < 10 or (Player:AreaTTD(10) > 180 or Unit(\"target\"):IsDummy())) then\n                return    A.TouchofDeath:Show(icon)\n            end\n            \n            --actions.cd_sef+=/weapons_of_order,if=(raid_event.adds.in>45|raid_event.adds.up)&cooldown.rising_sun_kick.remains<execute_time\n            if A.WeaponsofOrder:IsReady(player)  and (inMelee or Unit(\"target\"):GetRange() <= 8) and (A.RisingSunKick:GetCooldown() < Unit(\"target\"):TimeToDieX(15) or Unit(\"target\"):IsDummy()) then\n                return A.WeaponsofOrder:Show(icon)\n            end\n            \n            --actions.cd_sef+=/faeline_stomp,if=combo_strike&(raid_event.adds.in>10|raid_event.adds.up)\n            if A.FaelineStomp:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) and ComboStrike(A.FaelineStomp) then\n                return A.FaelineStomp:Show(icon)\n            end\n            \n            --actions.cd_sef+=/fallen_order,if=raid_event.adds.in>30|raid_event.adds.up\n            if A.FallenOrder:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) then\n                return A.FallenOrder:Show(icon)\n            end\n            \n            --actions.cd_sef+=/bonedust_brew,if=raid_event.adds.in>50|raid_event.adds.up,line_cd=60\n            if A.BonedustBrew:IsReady(unit) and A.BonedustBrew:GetSpellTimeSinceLastCast() > 60 then\n                return A.BonedustBrew:Show(icon)\n            end\n            \n            --actions.cd_sef+=/storm_earth_and_fire_fixate,if=conduit.coordinated_offensive.enabled\n            if A.StormEarthAndFireFixate:IsReady(player) and A.CoordinatedOffensive:IsSoulbindLearned() then\n                return A.StormEarthAndFireFixate:Show(icon)\n            end\n            \n            --actions.cd_sef+=/storm_earth_and_fire,if=cooldown.storm_earth_and_fire.charges=2|fight_remains<20|(raid_event.adds.remains>15|!covenant.kyrian&((cooldown.invoke_xuen_the_white_tiger.remains>cooldown.storm_earth_and_fire.full_recharge_time|variable.hold_xuen))&cooldown.fists_of_fury.remains<=9&chi>=2&cooldown.whirling_dragon_punch.remains<=12)\n            if A.StormEarthAndFire:IsReady(unit) and (inMelee or Unit(\"target\"):GetRange() <= 8) and not A.StormEarthAndFireFixate:IsReady(unit) and (A.StormEarthAndFire:GetSpellCharges() == 2 or (Player:AreaTTD(10) < 20 or ((Unit(\"target\"):IsDummy() and (300 - Unit(\"player\"):CombatTime()) < 20))) or (C_Covenants.GetActiveCovenantID() ~= 1) and (((A.InvokeXuen:GetCooldown() > A.StormEarthAndFire:GetSpellChargesFullRechargeTime()) or VarHoldXuen)) and A.FistsofFury:GetCooldown() <= 9 and Player:Chi() >= 2 and A.WhirlingDragonPunch:GetCooldown() <= 12) then\n                return A.StormEarthAndFire:Show(icon)\n            end\n            \n            --actions.cd_sef+=/storm_earth_and_fire,if=covenant.kyrian&(buff.weapons_of_order.up|(fight_remains<cooldown.weapons_of_order.remains|cooldown.weapons_of_order.remains>cooldown.storm_earth_and_fire.full_recharge_time)&cooldown.fists_of_fury.remains<=9&chi>=2&cooldown.whirling_dragon_punch.remains<=12)\n            if A.StormEarthAndFire:IsReady(unit) and not A.StormEarthAndFireFixate:IsReady(unit) and (inMelee or Unit(\"target\"):GetRange() <= 8) and (C_Covenants.GetActiveCovenantID() == 1 and (Unit(\"player\"):HasBuffs(A.WeaponsofOrder.ID, true) > 0 or ((Player:AreaTTD(10) < A.WeaponsofOrder:GetCooldown()) or (A.WeaponsofOrder:GetCooldown() > A.StormEarthAndFire:GetSpellChargesFullRechargeTime())) and A.FistsofFury:GetCooldown() <= 9 and Player:Chi() >=2 and A.WhirlingDragonPunch:GetCooldown() <= 12)) then\n                return A.StormEarthAndFire:Show(icon)\n            end\n            \n            -- Trinket 1\n            if A.Trinket1:IsReady(unit) and Unit(unit):GetRange() <= 7  then\n                return A.Trinket1:Show(icon)    \n            end\n            \n            -- Trinket 2\n            if A.Trinket2:IsReady(unit) and Unit(unit):GetRange() <= 7 then\n                return A.Trinket2:Show(icon)    \n            end   \n            \n            --actions.cd_sef+=/touch_of_karma,if=fight_remains>159|pet.xuen_the_white_tiger.active|variable.hold_xuen\n            if A.TouchofKarma:IsReady(unit) and ((Player:AreaTTD(10) > 159 or Unit(\"target\"):IsDummy()) or A.InvokeXuen:GetSpellTimeSinceLastCast() < 24 or VarHoldXuen) then\n                return A.TouchofKarma:Show(icon)\n            end\n            \n            --actions.cd_sef+=/blood_fury,if=cooldown.invoke_xuen_the_white_tiger.remains>30|variable.hold_xuen|fight_remains<20\n            if A.BloodFury:IsReady(unit) and (inMelee or Unit(\"target\"):GetRange() <= 8) and (A.InvokeXuen:GetCooldown() > 30 or VarHoldXuen or Player:AreaTTD(10) < 20) then\n                return A.BloodFury:Show(icon)\n            end\n            \n            --actions.cd_sef+=/berserking,if=cooldown.invoke_xuen_the_white_tiger.remains>30|variable.hold_xuen|fight_remains<15\n            if A.Berserking:IsReady(unit) and (inMelee or Unit(\"target\"):GetRange() <= 8) and (A.InvokeXuen:GetCooldown() > 30 or VarHoldXuen or Player:AreaTTD(10) < 15) then\n                return A.Berserking:Show(icon)\n            end\n            \n            --actions.cd_sef+=/lights_judgment\n            if A.LightsJudgment:IsReady(unit) and (inMelee or Unit(\"target\"):GetRange() <= 8) then\n                return A.LightsJudgment:Show(icon)\n            end\n            \n            --actions.cd_sef+=/fireblood,if=cooldown.invoke_xuen_the_white_tiger.remains>30|variable.hold_xuen|fight_remains<10\n            if A.Fireblood:IsReady(unit) and (inMelee or Unit(\"target\"):GetRange() <= 8) and (A.InvokeXuen:GetCooldown() > 30 or VarHoldXuen or Player:AreaTTD(10) < 10) then\n                return A.Fireblood:Show(icon)\n            end\n            \n            --actions.cd_sef+=/ancestral_call,if=cooldown.invoke_xuen_the_white_tiger.remains>30|variable.hold_xuen|fight_remains<20\n            if A.AncestralCall:IsReady(unit) and (inMelee or Unit(\"target\"):GetRange() <= 8) and (A.InvokeXuen:GetCooldown() > 30 or VarHoldXuen or Player:AreaTTD(10) < 20) then\n                return A.AncestralCall:Show(icon)\n            end\n            \n            --actions.cd_sef+=/bag_of_tricks,if=buff.storm_earth_and_fire.down\n            if A.BagofTricks:IsReady(unit) and (inMelee or Unit(\"target\"):GetRange() <= 8) and Unit(\"player\"):HasBuffs(A.StormEarthAndFire.ID, true) == 0 then\n                return A.BagofTricks:Show(icon)\n            end\n        end\n        \n        --#############################\n        --##### COOLDOWN SERENITY #####\n        --#############################\n        \n        local function CooldownSerenity()\n            --actions.cd_serenity+=/invoke_xuen_the_white_tiger,if=!variable.hold_xuen|fight_remains<25\n            if A.InvokeXuen:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) and (not VarHoldXuen or Player:AreaTTD(10) < 25) then\n                return A.InvokeXuen:Show(icon)\n            end\n            \n            -- Trinket 1\n            if A.Trinket1:IsReady(unit) and Unit(unit):GetRange() <= 7  then\n                return A.Trinket1:Show(icon)    \n            end\n            \n            -- Trinket 2\n            if A.Trinket2:IsReady(unit) and Unit(unit):GetRange() <= 7 then\n                return A.Trinket2:Show(icon)    \n            end   \n            \n            --actions.cd_serenity+=/blood_fury,if=variable.serenity_burst\n            if A.BloodFury:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) and VarSerenityBurst then\n                return A.BloodFury:Show(icon)\n            end\n            \n            --actions.cd_serenity+=/berserking,if=variable.serenity_burst\n            if A.Berserking:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) and VarSerenityBurst then\n                return A.Berserking:Show(icon)\n            end\n            \n            --actions.cd_serenity+=/arcane_torrent,if=chi.max-chi>=1\n            if A.ArcaneTorrent:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) and Player:ChiDeficit() >= 1 then\n                return A.ArcaneTorrent:Show(icon)\n            end\n            \n            --actions.cd_serenity+=/lights_judgment\n            if A.LightsJudgment:IsReady(unit) and (inMelee or Unit(\"target\"):GetRange() <= 8) then\n                return A.LightsJudgment:Show(icon)\n            end\n            \n            --actions.cd_serenity+=/fireblood,if=variable.serenity_burst\n            if A.Fireblood:IsReady(unit) and (inMelee or Unit(\"target\"):GetRange() <= 8) and VarSerenityBurst then\n                return A.Fireblood:Show(icon)\n            end\n            \n            --actions.cd_serenity+=/ancestral_call,if=variable.serenity_burst\n            if A.AncestralCall:IsReady(unit) and (inMelee or Unit(\"target\"):GetRange() <= 8) and VarSerenityBurst then\n                return A.AncestralCall:Show(icon)\n            end    \n            \n            --actions.cd_serenity+=/bag_of_tricks,if=variable.serenity_burst\n            if A.BagofTricks:IsReady(unit) and (inMelee or Unit(\"target\"):GetRange() <= 8) and VarSerenityBurst then\n                return A.BagofTricks:Show(icon)\n            end\n            \n            --actions.cd_serenity+=/touch_of_death,if=fight_remains>180|pet.xuen_the_white_tiger.active|fight_remains<10\n            if A.TouchofDeath:IsReady(unit) and ((Player:AreaTTD(10) > 180 or Unit(\"target\"):IsDummy()) or A.InvokeXuen:GetSpellTimeSinceLastCast() < 24 or Player:AreaTTD(10) < 10) then\n                return A.TouchofDeath:Show(icon)\n            end\n            \n            --actions.cd_serenity+=/touch_of_karma,if=fight_remains>90|pet.xuen_the_white_tiger.active|fight_remains<10\n            if A.TouchofKarma:IsReady(unit) and ((Player:AreaTTD(10) > 90 or Unit(\"target\"):IsDummy()) or A.InvokeXuen:GetSpellTimeSinceLastCast() < 24 or Player:AreaTTD(10) < 10) then\n                return A.TouchofKarma:Show(icon)\n            end\n            \n            --actions.cd_serenity+=/weapons_of_order,if=cooldown.rising_sun_kick.remains<execute_time\n            if A.WeaponsofOrder:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) and ((A.RisingSunKick:GetCooldown() < Unit(\"target\"):TimeToDieX(15)) or Unit(\"target\"):IsDummy()) then\n                return A.WeaponsofOrder:Show(icon)\n            end\n            \n            --actions.cd_serenity+=/faeline_stomp\n            if A.FaelineStomp:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) then\n                return A.FaelineStomp:Show(icon)\n            end\n            \n            --actions.cd_serenity+=/fallen_order\n            if A.FallenOrder:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) then\n                return A.FallenOrder:Show(icon)\n            end\n            \n            --actions.cd_serenity+=/bonedust_brew\n            if A.BonedustBrew:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) then\n                return A.BonedustBrew:Show(icon)\n            end\n            \n            --actions.cd_serenity+=/serenity,if=cooldown.rising_sun_kick.remains<2|fight_remains<15\n            if A.Serenity:IsReady(unit) and (inMelee or Unit(\"target\"):GetRange() <= 8) and (A.RisingSunKick:GetCooldown() < 2 or Player:AreaTTD(10) < 15) then\n                return A.Serenity:Show(icon)\n            end\n            \n            --actions.cd_serenity+=/bag_of_tricks\n            if A.BagofTricks:IsReady(unit) and (inMelee or Unit(\"target\"):GetRange() <= 8) then \n                return A.BagofTricks:Show(icon)\n            end\n        end\n        \n        --#####################\n        --###### WEAPONS ######\n        --#####################\n        local function WeaponsRotation()\n            \n            --actions.weapons_of_order=call_action_list,name=cd_sef,if=!talent.serenity\n            if not A.Serenity:IsTalentLearned() and Cooldownsef() then\n                return true\n            end\n            \n            --actions.weapons_of_order+=/call_action_list,name=cd_serenity,if=talent.serenity\n            if A.Serenity:IsTalentLearned() and CooldownSerenity() then\n                return true\n            end\n            \n            --actions.weapons_of_order+=/energizing_elixir,if=chi.max-chi>=2&energy.time_to_max>3\n            if A.EnergizingElixir:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) and Player:ChiDeficit() >= 2 and Player:EnergyTimeToMaxPredicted() > 3 then\n                return A.EnergizingElixir:Show(icon)\n            end\n            \n            --actions.weapons_of_order+=/rising_sun_kick,target_if=min:debuff.mark_of_the_crane.remains\n            if A.RisingSunKick:IsReady(unit) then\n                return A.RisingSunKick:Show(icon)\n            end\n            \n            --actions.weapons_of_order+=/spinning_crane_kick,if=combo_strike&buff.dance_of_chiji.up\n            if A.SpinningCraneKick:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) and ComboStrike(A.SpinningCraneKick) and Unit(player):HasBuffs(A.DanceofChiJi.ID, true) > 0 then\n                return A.SpinningCraneKick:Show(icon)\n            end\n            \n            --actions.weapons_of_order+=/fists_of_fury,if=active_enemies>=2&buff.weapons_of_order_ww.remains<1\n            if A.FistsofFury:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) and MultiUnits:GetByRange(10, 2) >= 2 and Unit(\"player\"):HasBuffs(A.WeaponsofOrderWW.ID, true) < 1 then\n                return A.FistsofFury:Show(icon)\n            end\n            \n            --actions.weapons_of_order+=/whirling_dragon_punch,if=active_enemies>=2\n            if A.WhirlingDragonPunch:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) and MultiUnits:GetByRange(10, 2) >= 2 then\n                return A.WhirlingDragonPunch:Show(icon)\n            end\n            \n            --actions.weapons_of_order+=/spinning_crane_kick,if=combo_strike&active_enemies>=3&buff.weapons_of_order_ww.up\n            if A.SpinningCraneKick:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) and ComboStrike(A.SpinningCraneKick) and MultiUnits:GetByRange(10, 3) >= 3 and Unit(\"player\"):HasBuffs(A.WeaponsofOrderWW.ID, true) > 0 then\n                return A.SpinningCraneKick:Show(icon)\n            end\n            \n            --actions.weapons_of_order+=/blackout_kick,target_if=min:debuff.mark_of_the_crane.remains,if=combo_strike&active_enemies<=2\n            if A.BlackoutKick:IsReady(unit) and ComboStrike(A.BlackoutKick) and MultiUnits:GetByRange(10, 2) <= 2 then\n                return A.BlackoutKick:Show(icon)\n            end\n            \n            --actions.weapons_of_order+=/whirling_dragon_punch\n            if A.WhirlingDragonPunch:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) then\n                return A.WhirlingDragonPunch:Show(icon)\n            end\n            \n            --actions.weapons_of_order+=/fists_of_fury,interrupt=1,if=buff.storm_earth_and_fire.up&raid_event.adds.in>cooldown.fists_of_fury.duration*0.6\n            if A.FistsofFury:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) then\n                return A.FistsofFury:Show(icon)\n            end\n            \n            -- Cancel for FoF with SEF and Weapons\n            if A.FistsofFury:GetSpellTimeSinceLastCast() < 1 and Unit(player):HasBuffs(A.WeaponsofOrder.ID, true) > 0 and Unit(player):HasBuffs(A.StormEarthAndFire.ID, true) > 0 then\n                return A.StopCast:Show(icon)\n            end\n            \n            --actions.weapons_of_order+=/spinning_crane_kick,if=buff.chi_energy.stack>30-5*active_enemies\n            if A.SpinningCraneKick:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) and ComboStrike(A.SpinningCraneKick) and Unit(player):HasBuffsStacks(A.ChiEnergy.ID, true) > (30 - (5 * (MultiUnits:GetByRange(10, 6)))) then\n                return A.SpinningCraneKick:Show(icon)\n            end\n            \n            --actions.weapons_of_order+=/fist_of_the_white_tiger,target_if=min:debuff.mark_of_the_crane.remains,if=chi<3\n            if A.FistoftheWhiteTiger:IsReady(unit) and Player:Chi() < 3 then\n                return A.FistoftheWhiteTiger:Show(icon)\n            end\n            \n            --actions.weapons_of_order+=/expel_harm,if=chi.max-chi>=1\n            if A.ExpelHarm:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) and Player:ChiDeficit() >= 1 then\n                return A.ExpelHarm:Show(icon)\n            end\n            \n            --actions.weapons_of_order+=/chi_burst,if=chi.max-chi>=(1+active_enemies>1)\n            if A.ChiBurst:IsReady(player) and Player:ChiDeficit() >= (1 + MultiUnits:GetByRange(10, 6)) and not IsMoving then\n                return A.ChiBurst:Show(icon)\n            end\n            \n            --actions.weapons_of_order+=/tiger_palm,target_if=min:debuff.mark_of_the_crane.remains+(debuff.recently_rushing_tiger_palm.up*20),if=(!talent.hit_combo|combo_strike)&chi.max-chi>=2\n            if A.TigerPalm:IsReady(unit) and (not A.HitCombo:IsTalentLearned() or ComboStrike(A.TigerPalm)) and Player:ChiDeficit() >= 2 then\n                return A.TigerPalm:Show(icon)\n            end\n            \n            --actions.weapons_of_order+=/chi_wave\n            if A.ChiWave:IsReady(unit) then\n                return A.ChiWave:Show(icon)\n            end\n            \n            --actions.weapons_of_order+=/blackout_kick,target_if=min:debuff.mark_of_the_crane.remains,if=chi>=3|buff.weapons_of_order_ww.up\n            if A.BlackoutKick:IsReady(unit) and (Player:Chi() >= 3 or Unit(\"player\"):HasBuffs(A.WeaponsofOrderWW.ID, true) > 0) then\n                return A.BlackoutKick:Show(icon)\n            end\n            \n            --actions.weapons_of_order+=/flying_serpent_kick,interrupt=1\n            if target and Unit(\"target\"):GetRange() <= 8 and Action.GetToggle(2, \"ToggleFlying\") and not isMoving and LoC:Get(\"ROOT\") == 0 and A.FlyingSerpentKick:IsReady(target, true) and A.FlyingSerpentKick:AbsentImun(target, GetAttackType()) and Unit(player):HasBuffs(A.BlackoutKickBuff.ID, true) == 0 and (not A.IsInPvP or not EnemyTeam(\"HEALER\"):IsBreakAble(25)) then \n                return A.FlyingSerpentKick:Show(icon)\n            end\n            \n            -- Cancel for Kick\n            if A.FlyingSerpentKick:GetSpellTimeSinceLastCast() < 0.5 and Action.GetToggle(2, \"ToggleFlying\") then\n                return A.FlyingSerpentKickJump:Show(icon)\n            end\n        end\n        \n        --#####################\n        --######## ST #########\n        --#####################\n        local function STRotation()\n            --actions.st=whirling_dragon_punch,if=raid_event.adds.in>cooldown.whirling_dragon_punch.duration*0.8|raid_event.adds.up\n            if A.WhirlingDragonPunch:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) then\n                return A.WhirlingDragonPunch:Show(icon)\n            end\n            \n            if A.StormEarthAndFire:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) and Action.GetToggle(2, \"SEFOutBurst\") and A.StormEarthAndFire:GetSpellCharges() == 2 and Player:AreaTTD(10) > 15 then\n                return A.StormEarthAndFire:Show(icon)\n            end\n            \n            if A.StormEarthAndFireFixate:IsReady(player) and A.CoordinatedOffensive:IsSoulbindLearned() then\n                return A.StormEarthAndFireFixate:Show(icon)\n            end\n            \n            --actions.st+=/energizing_elixir,if=chi.max-chi>=2&energy.time_to_max>3|chi.max-chi>=4&(energy.time_to_max>2|!prev_gcd.1.tiger_palm)\n            if A.EnergizingElixir:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) and ((Player:ChiDeficit() >= 2 and Player:EnergyTimeToMaxPredicted() > 3) or (Player:ChiDeficit() >= 4 and (Player:EnergyTimeToMaxPredicted() > 2 or not Player:PrevGCD(1, A.TigerPalm))))\n            then return A.EnergizingElixir:Show(icon)\n            end\n            \n            --actions.st+=/spinning_crane_kick,if=combo_strike&buff.dance_of_chiji.up&(raid_event.adds.in>buff.dance_of_chiji.remains-2|raid_event.adds.up)\n            if A.SpinningCraneKick:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) and ComboStrike(A.SpinningCraneKick) and Unit(player):HasBuffs(A.DanceofChiJi.ID, true) > 0 then\n                return A.SpinningCraneKick:Show(icon)\n            end\n            \n            --actions.st+=/rising_sun_kick,target_if=min:debuff.mark_of_the_crane.remains,if=cooldown.serenity.remains>1|!talent.serenity\n            if A.RisingSunKick:IsReady(unit) and ComboStrike(A.RisingSunKick) and (A.Serenity:GetCooldown() > 1 or not A.Serenity:IsTalentLearned()) then\n                return A.RisingSunKick:Show(icon)\n            end\n            \n            --actions.st+=/fists_of_fury,if=(raid_event.adds.in>cooldown.fists_of_fury.duration*0.8|raid_event.adds.up)&(energy.time_to_max>execute_time-1|chi.max-chi<=1|buff.storm_earth_and_fire.remains<execute_time+1)|fight_remains<execute_time+1\n            if A.FistsofFury:IsReady(player) and (inMelee or Unit(unit):GetRange() <= 8) and ((Player:EnergyTimeToMaxPredicted() > (Unit(\"target\"):TimeToDieX(15) - 1)) or Player:ChiDeficit() <= 1 or ((Unit(player):HasBuffs(A.StormEarthAndFire.ID, true) < (Unit(\"target\"):TimeToDieX(15) + 1)) or Unit(\"target\"):IsDummy()) or (Player:AreaTTD(10) < (Unit(\"target\"):TimeToDieX(15) + 1) or Unit(\"target\"):IsDummy())) then\n                return A.FistsofFury:Show(icon)\n            end\n            \n            --actions.st+=/crackling_jade_lightning,if=buff.the_emperors_capacitor.stack>19&energy.time_to_max>execute_time-1&cooldown.rising_sun_kick.remains>execute_time|buff.the_emperors_capacitor.stack>14&(cooldown.serenity.remains<5&talent.serenity|cooldown.weapons_of_order.remains<5&covenant.kyrian|fight_remains<5)\n            if A.CracklingJadeLightning:IsReady(unit) and (Unit(player):HasBuffsStacks(A.EmperorsCapacitorStack.ID, true) > 19 and Player:EnergyTimeToMaxPredicted() > (Unit(\"target\"):TimeToDieX(15) - 1) and (A.RisingSunKick:GetCooldown() > Unit(\"target\"):TimeToDieX(15))) or (Unit(player):HasBuffsStacks(A.EmperorsCapacitorStack.ID, true) > 19 and ((A.Serenity:GetCooldown() < 5 and A.Serenity:IsTalentLearned()) or (A.WeaponsofOrder:GetCooldown() < 5 and C_Covenants.GetActiveCovenantID() == 1) or (Player:AreaTTD() < 5))) then\n                return A.CracklingJadeLightning:Show(icon)\n            end\n            \n            --actions.st+=/rushing_jade_wind,if=buff.rushing_jade_wind.down&active_enemies>1\n            if A.RushingJadeWind:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) and Unit(player):HasBuffs(A.RushingJadeWind.ID, true) == 0 and MultiUnits:GetByRange(10, 2) > 1 then\n                return A.RushingJadeWind:Show(icon)\n            end\n            \n            --actions.st+=/fist_of_the_white_tiger,target_if=min:debuff.mark_of_the_crane.remains,if=chi<3\n            if A.FistoftheWhiteTiger:IsReady(unit) and Player:Chi() < 3 then\n                return A.FistoftheWhiteTiger:Show(icon)\n            end\n            \n            --actions.st+=/expel_harm,if=chi.max-chi>=1\n            if A.ExpelHarm:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) and Player:ChiDeficit() >= 1 then\n                return A.ExpelHarm:Show(icon)\n            end\n            \n            --actions.st+=/chi_burst,if=chi.max-chi>=1&active_enemies=1&raid_event.adds.in>20|chi.max-chi>=2&active_enemies>=2\n            if A.ChiBurst:IsReady(player) and ((Player:ChiDeficit() >= 1 and MultiUnits:GetByRange(10, 3) == 1) or (Player:ChiDeficit() >= 2 and MultiUnits:GetByRange(10, 3) >= 2)) and not IsMoving then\n                return A.ChiBurst:Show(icon)\n            end\n            \n            --actions.st+=/chi_wave\n            if A.ChiWave:IsReady(unit) then\n                return A.ChiWave:Show(icon)\n            end\n            \n            --actions.st+=/tiger_palm,target_if=min:debuff.mark_of_the_crane.remains+(debuff.recently_rushing_tiger_palm.up*20),if=combo_strike&chi.max-chi>=2&buff.storm_earth_and_fire.down\n            if A.TigerPalm:IsReady(unit) and ComboStrike(A.TigerPalm) and Player:ChiDeficit() >= 2 and Unit(\"player\"):HasBuffs(A.StormEarthAndFire.ID, true) == 0 then\n                return A.TigerPalm:Show(icon)\n            end\n            \n            --actions.st+=/spinning_crane_kick,if=buff.chi_energy.stack>30-5*active_enemies&buff.storm_earth_and_fire.down&(cooldown.rising_sun_kick.remains>2&cooldown.fists_of_fury.remains>2|cooldown.rising_sun_kick.remains<3&cooldown.fists_of_fury.remains>3&chi>3|cooldown.rising_sun_kick.remains>3&cooldown.fists_of_fury.remains<3&chi>4|chi.max-chi<=1&energy.time_to_max<2)|buff.chi_energy.stack>10&fight_remains<7\n            if A.SpinningCraneKick:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) and ComboStrike(A.SpinningCraneKick) and (Unit(player):HasBuffsStacks(A.ChiEnergy.ID, true) > (30 - (5 * (MultiUnits:GetByRange(10, 6)))) and Unit(player):HasBuffs(A.StormEarthandFire.ID, true) == 0 and ((A.RisingSunKick:GetCooldown() > 2 and A.FistsofFury:GetCooldown() > 2) or (A.RisingSunKick:GetCooldown() < 3 and A.FistsofFury:GetCooldown() > 3 and Player:Chi() > 3) or (A.RisingSunKick:GetCooldown() > 3 and A.FistsofFury:GetCooldown() < 3 and Player:Chi() > 4) or (Player:ChiDeficit() <= 1 and Player:EnergyTimeToMaxPredicted() < 2)) or (Unit(player):HasBuffsStacks(A.ChiEnergy.ID, true) > 10 and Player:AreaTTD(10) < 7)) then\n                return A.SpinningCraneKick:Show(icon)\n            end\n            \n            --actions.st+=/blackout_kick,target_if=min:debuff.mark_of_the_crane.remains,if=combo_strike&(talent.serenity&cooldown.serenity.remains<3|cooldown.rising_sun_kick.remains>1&cooldown.fists_of_fury.remains>1|cooldown.rising_sun_kick.remains<3&cooldown.fists_of_fury.remains>3&chi>2|cooldown.rising_sun_kick.remains>3&cooldown.fists_of_fury.remains<3&chi>3|chi>5|buff.bok_proc.up)\n            if A.BlackoutKick:IsReady(unit) and ComboStrike(A.BlackoutKick) and ((A.Serenity:IsTalentLearned() and A.Serenity:GetCooldown() < 3) or (A.RisingSunKick:GetCooldown() > 1 and A.FistsofFury:GetCooldown() > 1) or (A.RisingSunKick:GetCooldown() < 3 and A.FistsofFury:GetCooldown() > 3 and Player:Chi() > 2) or (A.RisingSunKick:GetCooldown() > 3 and A.FistsofFury:GetCooldown() < 3 and Player:Chi() > 3) or (Player:Chi() > 5) or (Unit(\"player\"):HasBuffs(A.BlackoutKickBuff.ID, true) > 0)) then\n                return A.BlackoutKick:Show(icon)\n            end\n            \n            --actions.st+=/tiger_palm,target_if=min:debuff.mark_of_the_crane.remains+(debuff.recently_rushing_tiger_palm.up*20),if=combo_strike&chi.max-chi>=2\n            if A.TigerPalm:IsReady(unit) and ComboStrike(A.TigerPalm) and Player:ChiDeficit() >= 2 then\n                return A.TigerPalm:Show(icon)\n            end\n            \n            --actions.st+=/flying_serpent_kick,interrupt=1\n            if A.FlyingSerpentKick:IsReady(player) and Action.GetToggle(2, \"ToggleFlying\") and not isMoving and LoC:Get(\"ROOT\") == 0 and Unit(\"target\"):GetRange() <= 8 and A.FlyingSerpentKick:AbsentImun(target, GetAttackType()) and Unit(player):HasBuffs(A.BlackoutKickBuff.ID, true) == 0 and (not A.IsInPvP or not EnemyTeam(\"HEALER\"):IsBreakAble(25)) then \n                return A.FlyingSerpentKick:Show(icon)\n            end\n            \n            -- Cancel for FoF with SEF and Weapons\n            if A.FlyingSerpentKick:GetSpellTimeSinceLastCast() < 0.5 and Action.GetToggle(2, \"ToggleFlying\") then\n                return A.FlyingSerpentKickJump:Show(icon)\n            end\n            \n            --actions.st+=/blackout_kick,target_if=min:debuff.mark_of_the_crane.remains,if=combo_strike&cooldown.fists_of_fury.remains<3&chi=2&prev_gcd.1.tiger_palm&energy.time_to_50<1\n            if A.BlackoutKick:IsReady(unit) and ComboStrike(A.BlackoutKick) and A.FistsofFury:GetCooldown() < 3 and Player:Chi() == 2 and Player:PrevGCD(1, A.TigerPalm) and Player:EnergyTimeToX(50) < 1 then\n                return A.BlackoutKick:Show(icon)\n            end\n            \n            --actions.st+=/blackout_kick,target_if=min:debuff.mark_of_the_crane.remains,if=combo_strike&energy.time_to_max<2&(chi.max-chi<=1|prev_gcd.1.tiger_palm)\n            if A.BlackoutKick:IsReady(unit) and ComboStrike(A.BlackoutKick) and Player:EnergyTimeToMaxPredicted() < 2 and (Player:ChiDeficit() <= 1 or Player:PrevGCD(1, A.TigerPalm)) then\n                return A.BlackoutKick:Show(icon)\n            end\n            \n        end\n        \n        --#####################\n        --###### GENERIC ######\n        --#####################\n        \n        --actions=auto_attack\n        \n        --actions+=/spear_hand_strike,if=target.debuff.casting.react        \n        local Interrupt = Interrupts(unit)\n        if Interrupt then \n            return Interrupt:Show(icon)\n        end    \n        \n        --actions+=/potion,if=(buff.serenity.up|buff.storm_earth_and_fire.up)&pet.xuen_the_white_tiger.active|fight_remains<=60\n        --if A.PotionofSpectralAgility:IsReady(player) and Action.GetToggle(1, \"Potion\") and IsItemInRange(32321) and ((Unit(player):HasBuffs(A.Serenity.ID, true) > 0 or Unit(player):HasBuffs(A.StormEarthandFire.ID, true) > 0) and (A.InvokeXuen:GetSpellTimeSinceLastCast() < 24 or Player:AreaTTD(10) <= 60))\n        --then\n        -- Notification                    \n        --    A.Toaster:SpawnByTimer(\"TripToast\", 0, \"Combat Potion!\", \"Using Combat Potion!\", A.PotionofSpectralAgility.ID)  \n        --    return A.PotionofSpectralAgility:Show(icon)\n        --end\n        --actions+=/call_action_list,name=serenity,if=buff.serenity.up\n        if Unit(\"player\"):HasBuffs(A.Serenity.ID, true) > 0 and SerenityRotation() then\n            return true\n        end\n        \n        --actions+=/call_action_list,name=weapons_of_order,if=buff.weapons_of_order.up\n        if Unit(\"player\"):HasBuffs(A.WeaponsofOrder.ID, true) > 0 and WeaponsRotation() then\n            return true\n        end\n        \n        --actions+=/call_action_list,name=opener,if=time<4&chi<5&!pet.xuen_the_white_tiger.active\n        if Unit(player):CombatTime() < 4 and Player:Chi() < 5 and A.InvokeXuen:GetSpellTimeSinceLastCast() > 24 and OpenerRotation() then\n            return true\n        end\n        \n        --actions+=/fist_of_the_white_tiger,target_if=min:debuff.mark_of_the_crane.remains,if=chi.max-chi>=3&(energy.time_to_max<1|energy.time_to_max<4&cooldown.fists_of_fury.remains<1.5|cooldown.weapons_of_order.remains<2)\n        if A.FistoftheWhiteTiger:IsReady(unit) and Player:ChiDeficit() >= 3 and (Player:EnergyTimeToMaxPredicted() < 1 or (Player:EnergyTimeToMaxPredicted() < 4 and A.FistsofFury:GetCooldown() < 1.5) or (A.WeaponsofOrder:GetCooldown() < 2))  then\n            return A.FistoftheWhiteTiger:Show(icon)\n        end\n        \n        --actions+=/expel_harm,if=chi.max-chi>=1&(energy.time_to_max<1|cooldown.serenity.remains<2|energy.time_to_max<4&cooldown.fists_of_fury.remains<1.5|cooldown.weapons_of_order.remains<2)\n        if A.ExpelHarm:IsReady(player) and (inMelee or Unit(\"target\"):GetRange() <= 8) and (Player:ChiDeficit() >= 1 and (Player:EnergyTimeToMaxPredicted() < 1 or (A.Serenity:GetCooldown() < 2 and A.Serenity:IsTalentLearned()) or (Player:EnergyTimeToMaxPredicted() < 4 and A.FistsofFury:GetCooldown() < 1.5) or A.WeaponsofOrder:GetCooldown() <2)) then\n            return A.ExpelHarm:Show(icon)\n        end\n        \n        --actions+=/tiger_palm,target_if=min:debuff.mark_of_the_crane.remains,if=combo_strike&chi.max-chi>=2&(energy.time_to_max<1|cooldown.serenity.remains<2|energy.time_to_max<4&cooldown.fists_of_fury.remains<1.5|cooldown.weapons_of_order.remains<2)\n        if A.TigerPalm:IsReady(unit) and ComboStrike(A.TigerPalm) and Player:ChiDeficit() >= 2 and (Player:EnergyTimeToMaxPredicted() < 1 or (A.Serenity:GetCooldown() < 2 and A.Serenity:IsTalentLearned()) or (Player:EnergyTimeToMaxPredicted() < 4 and A.FistsofFury:GetCooldown() < 1.5) or (A.WeaponsofOrder:GetCooldown() < 2)) then\n            return A.TigerPalm:Show(icon)\n        end\n        \n        --actions+=/call_action_list,name=cd_sef,if=!talent.serenity\n        if A.BurstIsON(unit) and not A.Serenity:IsTalentLearned() and Cooldownsef() then\n            return true\n        end\n        \n        --actions+=/call_action_list,name=cd_serenity,if=talent.serenity\n        if A.BurstIsON(unit) and A.Serenity:IsTalentLearned() and CooldownSerenity() then\n            return true\n        end\n        \n        --actions+=/call_action_list,name=st,if=active_enemies<3\n        if MultiUnits:GetByRange(10, 3) < 3 and STRotation() then\n            return true\n        end\n        \n        --actions+=/call_action_list,name=aoe,if=active_enemies>=3\n        if MultiUnits:GetByRange(10, 3) >= 3 and AoERotation() then\n            return true\n        end\n        \n    end\n    --Finished Enemy Rotation\n    -- Defensive\n    local SelfDefensive = SelfDefensives()\n    if SelfDefensive then \n        return SelfDefensive:Show(icon)\n    end \n    \n    -- Mouseover\n    if A.IsUnitEnemy(\"mouseover\") then\n        unit = \"mouseover\"\n        if EnemyRotation(unit) then \n            return true \n        end \n    end \n    \n    -- Target  \n    if A.IsUnitEnemy(\"target\") then \n        unit = \"target\"\n        if EnemyRotation(unit) then \n            return true\n        end       \n    end\nend\n\n--Finished",
				}, -- [2]
				{
					["Name"] = "Ryan's Support",
					["Code"] = "local _G, select, setmetatable                            = _G, select, setmetatable\n\nlocal TMW                                                 = _G.TMW\n\nlocal A                                                 = _G.Action\n\nlocal Unit                                                = A.Unit\nlocal GameLocale                                        = A.FormatGameLocale(_G.GetLocale())\nlocal StdUi                                                = A.StdUi\nlocal Factory                                            = StdUi.Factory\nlocal math_random                                        = math.random\nlocal player                                             = \"player\"\npartyIDs                                                = {\n    [1] = \"party1\",\n    [2] = \"party2\",\n}\narenaIDs                                            = {\n    [1] = \"arena1\",\n    [2] = \"arena2\",\n    [3] = \"arena3\",\n}\n\nlocal L                                                = setmetatable(\n    {\n        ruRU                                         = {InterruptName         = \"SLs Mythic+ (by Ryan)\",},\n        enUS                                         = {InterruptName         = \"SLs Mythic+ (by Ryan)\",},\n    }, \n    { __index = function(t) return t.enUS end })\n\nTMW:RegisterCallback(\"TMW_ACTION_INTERRUPTS_UI_CREATE_CATEGORY\", function(callbackEvent, Category)\n        local CL = Action.GetCL()\n        Category.options[#Category.options + 1] = { text = L[GameLocale].InterruptName, value = \"RyanInterrupts\" }\n        Category:SetOptions(Category.options)\nend)\n\nFactory[4].RyanInterrupts = StdUi:tGenerateMinMax({\n        [GameLocale] = {\n            ISINTERRUPT = true,\n            \n            --De Other Side\n            [332329] = { useKick = false, useCC = true, useRacial = true    }, --Devoted Sacrifice;         CC\n            [332671] = { useKick = false, useCC = true, useRacial = true    }, --Bladestorm;                CC\n            [332666] = { useKick = true, useCC = false, useRacial = false   }, --Renew;                     Kick\n            [332706] = { useKick = true, useCC = false, useRacial = false   }, --Heal;                      Kick\n            [332612] = { useKick = true, useCC = false, useRacial = false   }, --Healing Wave;              Kick\n            [331927] = { useKick = false, useCC = false, useRacial = false  }, --Haywire;                   Block\n            [332084] = { useKick = true, useCC = false, useRacial = false   }, --Self-Cleaning Cycle;       Kick\n            [340026] = { useKick = false, useCC = true, useRacial = true    }, --Wailing Grief;             CC\n            [321764] = { useKick = true, useCC = false, useRacial = false   }, --Bark Armor;                 Kick    \n            [320008] = { useKick = true, useCC = false, useRacial = false   }, --Frostbolt;                 Kick\n            [332608] = { useKick = true, useCC = false, useRacial = false   }, --Lightning Discharge;       Kick    \n            [328729] = { useKick = true, useCC = false, useRacial = false   }, --Dark Lotus;                 Kick    \n            [332605] = { useKick = true, useCC = true, useRacial = true     }, --Hex;                         Kick+CC\n            [332234] = { useKick = true, useCC = true, useRacial = true     }, --Essential Oil;                Kick+CC\n            [334664] = { useKick = false, useCC = true, useRacial = true    }, --Frightened Cries;          CC    \n            [331379] = { useKick = true, useCC = true, useRacial = true     }, --Lubricate;                    Kick+CC\n            [332156] = { useKick = false, useCC = true, useRacial = true    }, --Spinning Up;                  CC\n            [332705] = { useKick = true, useCC = false, useRacial = false   }, --Smite;                     Kick            \n            [333875] = { useKick = true, useCC = true, useRacial = true     }, --Death's Embrace;            Kick+CC            \n            \n            -- Halls of Attonement\n            [325523] = { useKick = false, useCC = true, useRacial = true    }, --Deadly Thrust;             CC\n            [326450] = { useKick = false, useCC = true, useRacial = true    }, --Loyal Beasts;              CC\n            [325700] = { useKick = true, useCC = false, useRacial = false   }, --Collect Sins;              Kick\n            [325701] = { useKick = true, useCC = true, useRacial = true     }, --Siphon Life;               Kick+CC\n            [326607] = { useKick = true, useCC = false, useRacial = false   }, --Turn to Stone;             Kick\n            [323552] = { useKick = true, useCC = false, useRacial = false   }, --Volley of Power;            Kick            \n            [323538] = { useKick = true, useCC = false, useRacial = false   }, --Bolt of Power;             Kick\n            [301680] = { useKick = false, useCC = true, useRacial = true    }, --Rapid Fire;                 CC            \n            [326829] = { useKick = true, useCC = false, useRacial = false   }, --Wicked Bolt;                 Kick   \n            [325876] = { useKick = true, useCC = false, useRacial = false   }, --Curse of Obliteration;     Kick              \n            \n            -- Mists of Tirna Scithe\n            [322938] = { useKick = true, useCC = false, useRacial = false   }, --Harvest Essence;           Kick\n            [322486] = { useKick = false, useCC = true, useRacial = true    }, --Overgrowth;                CC\n            [324914] = { useKick = true, useCC = false, useRacial = false   }, --Nourish the Forest;        Kick\n            [324776] = { useKick = true, useCC = false, useRacial = false   }, --Bramblethorn Coat;         Kick\n            [326046] = { useKick = true, useCC = true, useRacial = true     }, --Stimulate Resistance;      Kick+CC            \n            [340544] = { useKick = true, useCC = true, useRacial = true     }, --Stimulate Regeneration;    Kick+CC    \n            [337235] = { useKick = true, useCC = false, useRacial = false   }, --Parasitic Pacification;    Kick\n            [337251] = { useKick = true, useCC = false, useRacial = false   }, --Parasitic Incapacitation;  Kick\n            [337253] = { useKick = true, useCC = false, useRacial = false   }, --Parasitic Domination;      Kick\n            [326021] = { useKick = false, useCC = true, useRacial = true    }, --Acid Globule;              CC            \n            [331718] = { useKick = false, useCC = true, useRacial = true    }, --Spear Flurry;              CC                    \n            [331743] = { useKick = false, useCC = true, useRacial = true    }, --Bucking Rampage;           CC    \n            [322450] = { useKick = true, useCC = false, useRacial = false   }, --Consumption;                  Kick\n            [322767] = { useKick = true, useCC = true, useRacial = true     }, --Spirit Bolt;                Kick+CC             \n            [324987] = { useKick = false, useCC = true, useRacial = true    }, --Mistveil Bite;               CC            \n            [325021] = { useKick = false, useCC = true, useRacial = true    }, --Mistveil Tear;               CC                \n            \n            -- Necrotic Wake\n            [334748] = { useKick = true, useCC = true, useRacial = true     }, --Drain Fluids;              Kick+CC\n            [320462] = { useKick = true, useCC = false, useRacial = false   }, --Necrotic Bolt;             Kick            \n            [324293] = { useKick = true, useCC = true, useRacial = true     }, --Rasping Scream;            Kick+CC            \n            [320170] = { useKick = true, useCC = false, useRacial = false   }, --Necrotic Bolt;             Kick            \n            [338353] = { useKick = true, useCC = true, useRacial = true     }, --Goresplatter;              Kick+CC\n            [334748] = { useKick = true, useCC = true, useRacial = true     }, --Drain Fluids;              Kick+CC\n            [323190] = { useKick = true, useCC = true, useRacial = true     }, --meat shield;               Kick+CC            \n            [335143] = { useKick = true, useCC = true, useRacial = true        }, --Bonemend;                    Kick+CC\n            [327130] = { useKick = true, useCC = false, useRacial = false   }, --Repair Flesh;              Kick\n            [320822] = { useKick = false, useCC = true, useRacial = true    }, --Final Bargain;             CC    \n            [327240] = { useKick = false, useCC = true, useRacial = true    }, --Spine Crush;                 CC\n            [328667] = { useKick = true, useCC = true, useRacial = true        }, --Frostbolt Volley;            Kick+CC\n            [320571] = { useKick = true, useCC = false, useRacial = false   }, --Shadow Well;                 Kick\n            [321807] = { useKick = false, useCC = true, useRacial = true    }, --Boneflay;                     CC\n            \n            --Plaguefall\n            [328177] = { useKick = false, useCC = true, useRacial = true    }, --Fungistorm;                CC            \n            [330403] = { useKick = false, useCC = false, useRacial = false  }, --Wing Buffet;                 Block           \n            [318949] = { useKick = false, useCC = false, useRacial = false  }, --Festering Belch;           Block            \n            [319070] = { useKick = true, useCC = false, useRacial = false   }, --Corrosive Gunk;            Kick            \n            [336451] = { useKick = false, useCC = true, useRacial = true    }, --Bulwark of Maldraxxus;     CC            \n            [328400] = { useKick = false, useCC = true, useRacial = true    }, --Stealthlings;                 CC \n            [328180] = { useKick = true, useCC = true, useRacial = true     }, --Gripping Infection;         Kick+CC\n            [321999] = { useKick = true, useCC = false, useRacial = false   }, --Viral Globs;                Kick\n            [328429] = { useKick = false, useCC = true, useRacial = true    }, --Crushing Embrace;             CC\n            [328094] = { useKick = true, useCC = false, useRacial = false   }, --Pestilence Bolt;           Kick     \n            [329239] = { useKick = true, useCC = false, useRacial = false   }, --Creepy Crawlers;           Kick \n            [321935] = { useKick = false, useCC = true, useRacial = true    }, --Withering Filth;              CC \n            [328475] = { useKick = false, useCC = false, useRacial = false  }, --Enveloping Webbing;        Block \n            \n            --Sanguine Depths\n            [319654] = { useKick = true, useCC = false, useRacial = false   }, --Hungering Drain;           Kick\n            [322433] = { useKick = true, useCC = false, useRacial = false   }, --Stoneskin;                 Kick\n            [321038] = { useKick = true, useCC = false, useRacial = false   }, --Wrack Soul;                Kick \n            [334653] = { useKick = true, useCC = false, useRacial = false   }, --Engorge;                     Kick\n            [335305] = { useKick = true, useCC = false, useRacial = false   }, --Barbed Shackles;             Kick\n            [336277] = { useKick = true, useCC = false, useRacial = false   }, --Explosive Anger;             Kick            \n            [326952] = { useKick = true, useCC = false, useRacial = false   }, --Fiery Cantrip                 Kick\n            [324609] = { useKick = false, useCC = true, useRacial = true    }, --Animate Weapon;             CC\n            [326836] = { useKick = true, useCC = true, useRacial = true     }, --Curse of Suppression         Kick+CC\n            [322169] = { useKick = false, useCC = true, useRacial = true    }, --Growing Mistrust;             CC            \n            [326712] = { useKick = true, useCC = false, useRacial = false   }, --Dark Bolt                     Kick\n            [320861] = { useKick = true, useCC = false, useRacial = false   }, --Drain Essence                Kick            \n            [326837] = { useKick = true, useCC = false, useRacial = false   }, --Gloom Burst                Kick                \n            [321105] = { useKick = true, useCC = false, useRacial = false   }, --Sap Lifeblood                Kick                \n            \n            --Spires of Ascension\n            [327413] = { useKick = true, useCC = false, useRacial = false   }, --Rebellious Fist;           Kick            \n            [317936] = { useKick = true, useCC = false, useRacial = false   }, --Forsworn Doctrine;         Kick            \n            [317963] = { useKick = true, useCC = false, useRacial = false   }, --Burden of Knowledge;       Kick\n            [328295] = { useKick = true, useCC = true, useRacial = true     }, --Greater Mending;           Kick+CC\n            [328137] = { useKick = true, useCC = false, useRacial = false   }, --Dark Pulse;                Kick\n            [328331] = { useKick = true, useCC = false, useRacial = false   }, --Forced Confession;         Kick\n            [317661] = { useKick = true, useCC = false, useRacial = false   }, --Insidious Venom;             Kick\n            [323804] = { useKick = false, useCC = true, useRacial = true    }, --Dark Seeker;                 CC\n            [327648] = { useKick = true, useCC = false, useRacial = false   }, --Internal Strife;           Kick\n            [327481] = { useKick = false, useCC = true, useRacial = true    }, --Dark Lance;                 CC\n            \n            --Theater of Pain\n            [341902] = { useKick = true, useCC = false, useRacial = false   }, --Unholy Fervor;             Kick            \n            [341969] = { useKick = true, useCC = true, useRacial = true     }, --Withering Discharge        Kick+CC\n            [342139] = { useKick = true, useCC = false, useRacial = false   }, --Battle Trance;             Kick        \n            [330562] = { useKick = true, useCC = false, useRacial = false   }, --Demoralizing Shout;        Kick\n            [330810] = { useKick = true, useCC = true, useRacial = true     }, --Bind Soul;                 Kick+CC  \n            [330586] = { useKick = false, useCC = true, useRacial = true    }, --Devour Flesh                CC \n            [342675] = { useKick = true, useCC = true, useRacial = true     }, --Bone Spear;                Kick+CC  \n            [330868] = { useKick = true, useCC = true, useRacial = true     }, --Necrotic Bolt volley;      Kick+CC  \n            [341771] = { useKick = true, useCC = false, useRacial = false   }, --Grave Spike;                Kick            \n            [330532] = { useKick = false, useCC = true, useRacial = true    }, --Jagged Quarrel             CC                        \n            [330875] = { useKick = true, useCC = false, useRacial = false   }, --Spirit Frost;                Kick    \n            [319669] = { useKick = true, useCC = false, useRacial = false   }, --Spectral Reach;            Kick    \n            [320300] = { useKick = true, useCC = false, useRacial = false   }, --Necromantic Bolt;            Kick\n            [320120] = { useKick = true, useCC = false, useRacial = false   }, --Plague Bolt;                Kick            \n            [341977] = { useKick = true, useCC = true, useRacial = true     }, --Meat Shield;                  Kick+CC            \n            \n            -- Castle Nathria\n            [325590] = { useKick = true, useCC = false, useRacial = false   }, --Scornful Blast;            Kick\n            [328254] = { useKick = true, useCC = false, useRacial = false   }, --Shattering Ruby;            Kick\n            [333002] = { useKick = true, useCC = false, useRacial = false   }, --Vulgar Brand;                Kick\n            [337110] = { useKick = true, useCC = false, useRacial = false   }, --Dreadbolt Volley;            Kick\n            \n            --[[ Templates\n            [] = { useKick = false, useCC = false, useRacial = false}    , -- Block\n            [] = { useKick = true, useCC = true, useRacial = true    }, -- Kick+CC\n            [] = { useKick = true, useCC = false, useRacial = false    }, -- Kick\n            [] = { useKick = false, useCC = true, useRacial = true    }, -- CC\n            --]]\n            \n        },\n    }, 43, 70, math_random(87, 95), true)\n\n\n\n",
				}, -- [3]
				{
					["Name"] = "Dynamic Bar",
					["Code"] = "--- 10.03.2019\n--- 03.07.2020 Updated locals \n--- Modified https://github.com/arieh/TellMeWhen_Script_Tools/blob/master/modules/Dynamic_Bar.lua\n\nlocal _G         = _G\n\nlocal TMW         = _G.TMW\nlocal TMW_ST     = _G.TMW_ST\nif not TMW or TMW_ST then \n    return \nend\n\nlocal DogTag         = _G.LibStub(\"LibDogTag-3.0\", true)\nlocal L             = TMW.L\n\n--- CORE\n_G.TMW_Script_Tools = _G.LibStub(\"AceAddon-3.0\"):NewAddon({debug=false}, \"TMW_Script_Tools\", \"AceEvent-3.0\",\"AceConsole-3.0\")\n_G.TMWST            = _G.TMW_Script_Tools\n_G.TMW_ST             = _G.TMW_Script_Tools\n\nlocal TMW_ST         = _G.TMW_Script_Tools\n\nTMW_ST.ScriptTexts     = {}\n\nTMW:RegisterCallback(\"TMW_ST_VARIABLE_MODIFIED\", DogTag.FireEvent, DogTag)\n\nfunction TMW_ST:SetScriptText(name, text)\n    TMW_ST.ScriptTexts[name] = text\n    TMW:Fire(\"TMW_ST_VARIABLE_MODIFIED\", name)\nend\n\nif DogTag then\n    DogTag:AddTag(\"TMW\", \"ST_GetScriptText\", {\n            code = function(name)\n                return TMW_ST.ScriptTexts[name] or \"\"\n            end,\n            arg = {\n                'name', 'string', '@req',\n            },\n            ret = \"string\",\n            doc = \"Return the value of a script variable\",\n            example = '[ST_GetScriptText(\"var1\")] => \"my var\"',\n            events = \"TMW_ST_VARIABLE_MODIFIED\",\n            category = \"Userland\"\n    })\nend\n\nfunction TMW_ST:printDebug(text, var1, var2, var3)\n    if TMW_ST.debug then\n        TMW_ST:Print(text, var1 or \"\", var2 or \"\", var3 or \"\")\n    end\nend\n\n--- Counters fragment\nfunction TMW_ST:InitCounter(name, initialValue)\n    TMW_ST:printDebug(\"Initializing Counter\", name, initialValue)\n    TMW.COUNTERS[name] = initialValue or 0\nend\n\nfunction TMW_ST:UpdateCounter(name, value)\n    TMW_ST:printDebug(\"Setting Counter Value\", name, value)\n    TMW.COUNTERS[name] = value\n    TMW:Fire(\"TMW_COUNTER_MODIFIED\", name)\nend\n\nfunction TMW_ST:GetCounter(name)\n    return TMW.COUNTERS[name]\nend\n\n---\n\nlocal Type = TMW.Classes.IconType:New(\"dynamicbar\")\nType.name = \"Dynamic Bar\"\nType.desc = \"A Bar that can be controlled by LUA scripts\"\nType.menuIcon = \"Interface/Icons/inv_box_04\"\nType.hasNoGCD = true\nType.menuSpaceBefore = true\n\nType:SetAllowanceForView(\"icon\", false)\n\nType:UsesAttributes(\"value, maxValue, valueColor\")\nType:UsesAttributes(\"state\")\nType:UsesAttributes(\"texture\")\nType:UsesAttributes(\"auraSourceUnit, auraSourceGUID\")\nType:UsesAttributes(\"start, duration\")\nType:UsesAttributes(\"stack, stackText\")\n\nlocal STATE_SHOW = TMW.CONST.STATE.DEFAULT_SHOW\n\nType:RegisterConfigPanel_XMLTemplate(165, \"TellMeWhen_IconStates\", {\n        [STATE_SHOW]     = { order = 1, text = \"|cFF00FF00\" .. L[\"DEFAULT\"], },\n})\n\n\nlocal function Value_OnUpdate(icon)\n    local script_values = icon.script_values\n    \n    if not script_values.triggerFunc(icon) then\n        return\n    end\n    \n    if script_values.changed then\n        icon:SetInfo(\"state; value, maxValue, valueColor; start, duration; stack, stackText\",\n            STATE_SHOW, \n            script_values.current, script_values.max, \n            script_values.colors,\n            script_values.duration.start, script_values.duration.duration,\n            script_values.stacks.stacks, script_values.stacks.text\n        )\n        \n        script_values.changed = false\n    end\nend\n\n\nfunction Type:Setup(icon)\n    icon:SetInfo(\"texture\", \"Interface/Icons/inv_box_04\")\n    \n    icon:SetUpdateMethod(\"auto\")\n    \n    icon:SetUpdateFunction(Value_OnUpdate)    \n    \n    icon.script_values = {\n        max = 100,\n        current = 0,\n        changed = true,\n        duration = {\n            start = 0,\n            duration = 0\n        },\n        stacks = {\n            stacks = 0,\n            text = 0\n        },\n        colors = {\"#ffff1200\", \"#ffffff00\", \"#ff00ff00\"},\n        show = true,\n        triggerFunc = function() \n            return true\n        end\n    }\n    \n    local values = icon.script_values\n    \n    function icon:setMaxValue(value)        \n        values.max = value\n        values.changed = true\n    end\n    \n    function icon:setCurrentValue(value)        \n        \n        values.current = value\n        \n        values.changed = true\n    end\n    \n    function icon:setBarColors(startColor, midColor, lastColor)        \n        \n        local start = startColor or values.colors[0]\n        local mid = midColor or values.colors[1]\n        local last = lastColor or values.colors[2]\n        \n        values.colors = {start, mid, last}\n        \n        values.changed = true\n    end\n    \n    function icon:startDurationTracking(duration)         \n        \n        values.duration.start = TMW.time\n        values.duration.duration = duration\n        values.changed = true\n    end\n    \n    function icon:setStacks(stacks, text)         \n        \n        values.stacks.stacks = stacks\n        \n        if (text ~= nil) then\n            values.stacks.text = text\n        else\n            values.stacks.text = stacks\n        end\n        \n        values.changed = true\n    end\n    \n    function icon:registerTriggerFunction(fnc)\n        values.triggerFunc = fnc\n    end\n    \n    icon:Update()\nend\n\nTMW:RegisterCallback(\"TMW_CONFIG_ICON_TYPE_CHANGED\", function(event, icon, type, oldType)\n        local icspv = icon:GetSettingsPerView()\n        \n        if type == Type.type and oldType == \"\" then\n            icon:GetSettings().CustomTex = \"NONE\"\n            local layout = TMW.TEXT:GetTextLayoutForIcon(icon)\n            \n            if layout == \"bar1\" or layout == \"bar2\" then\n                icspv.Texts[1] = \"[(Value / ValueMax * 100):Round:Percent]\"\n                icspv.Texts[2] = \"[Value:Short \\\"/\\\" ValueMax:Short]\"\n            end\n        end\nend)\n\n\nType:Register(157)\n\n\n\n",
				}, -- [4]
				{
					["Name"] = "BrewMasterTools",
					["Code"] = "--- 24.08.2019 Release\n--- 03.07.2020 Updated locals \n--- Restored and modified version of retired project\n--- https://github.com/emptyrivers/BrewmasterTools\n\nlocal _G, setmetatable, select, assert, type, pairs = \n_G, setmetatable, select, assert, type, pairs\n\nlocal TMW                                 = _G.TMW\n\nlocal A                                 = _G.Action\nlocal GetSpellInfo                        = A.GetSpellInfo\nlocal IsSpellLearned                    = A.IsSpellLearned\nlocal Unit                                 = A.Unit\nlocal print                             = A.Print\n\nlocal C_Timer                            = _G.C_Timer\nlocal CreateFrame                        = _G.CreateFrame\nlocal CombatLogGetCurrentEventInfo        = _G.CombatLogGetCurrentEventInfo\n\nlocal InCombatLockdown                     = _G.InCombatLockdown\nlocal  UnitAura,     UnitStagger,     UnitGUID = \n_G.UnitAura, _G.UnitStagger, _G.UnitGUID\n\nif not BrewmasterTools then\n    BrewmasterTools = {}\n    BrewmasterTools.modules = {}\n    BrewmasterTools.util = {}\n    \n    local function dummy() end\n    function BrewmasterTools.AddModule(name, module, overrideAPI)\n        assert(type(name) == \"string\", \"BrewmasterTools: Improper argument #1 to AddModule: name must be a string.\")\n        assert(not BrewmasterTools.modules[name], \"BrewmasterTools: A module by the name of \" .. name .. \" already exists.\")\n        assert(type(module.Init) == \"function\", \"BrewmasterTools: \" .. name .. \" requires an Init method.\")\n        assert(type(module.Enable) == \"function\", \"BrewmasterTools: \" .. name .. \" requires an Enable method.\")\n        assert(type(module.Disable) == \"function\", \"BrewmasterTools: \" .. name .. \" requires a Disable method.\")\n        assert(type(module.scripts) == \"table\", \"BrewmasterTools: \" .. name .. \" requires a scripts attribute.\")\n        BrewmasterTools.modules[name] = module\n        if not BrewmasterTools.loaded and module.api then\n            for k in pairs(module.api) do\n                if BrewmasterTools[k] and not overrideAPI then\n                    print(\"Brewmastertools - Warning: module\" .. name .. \" has attempted to add API method\" .. k .. \" which already exists. The results of this API call will be unpredictable.\")\n                    --ensure that anything using the api doesn't trigger an attempt to call a nil value\n                    BrewmasterTools[k] = dummy\n                end\n            end\n        else\n            BrewmasterTools.LoadModule(BrewmasterTools.modules[name])\n        end\n    end\n    \n    function BrewmasterTools.LoadModule(module)\n        module:Init()\n        if module.api then\n            for name, func in pairs(module.api) do\n                BrewmasterTools[name] = func\n            end\n        end\n    end\n    \n    function BrewmasterTools.util.makeTempAdder()\n        local val = 0\n        return function(toAdd, decayTime) \n            val = val + toAdd\n            C_Timer.After(decayTime, function()\n                    val = val - toAdd\n            end)\n        end,\n        function()  return val  end \n    end\n    \n    local addToPool, getVal = BrewmasterTools.util.makeTempAdder()\n    local normalStagger = CreateFrame(\"Frame\")\n    normalStagger.api = { GetNormalStagger = getVal }\n    normalStagger.filter = {\n        --default value\n        __index = function() return .75 end,\n        -- testing purposes. Dummies are enemies too!\n        [167381] = 1,  --dummy strike\n        [167385] = .5, --Uber strike\n    }\n    setmetatable(normalStagger.filter, normalStagger.filter)\n    \n    local function handleCLEU(self, _, eventType, _, _, _, _, _, destGUID, ...)\n        if destGUID == UnitGUID(\"player\") then \n            local offset = 4\n            if eventType == \"SPELL_ABSORBED\" then \n                if GetSpellInfo((select(offset, ...))) == (select(offset + 1, ...)) then\n                    local absorbedSpell  = select(offset, ...)\n                    offset = offset + 3\n                    if select(offset + 4, ...) == 115069 then \n                        addToPool(self.filter[absorbedSpell] * (select(offset + 7, ...)), self.timeLimit)\n                    end\n                else \n                    -- Swing\n                    if select(offset + 4,...) == 115069 then\n                        addToPool((select(offset + 7, ...)), self.timeLimit)\n                    end\n                end\n            end\n        end\n    end\n    \n    normalStagger.scripts = {\n        OnEvent = function(self, event, _, eventType, _, _, _, _, _, destGUID, ...)\n            if event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n                handleCLEU(self, CombatLogGetCurrentEventInfo())\n            elseif event == \"PLAYER_REGEN_ENABLED\" then\n                self:Disable()\n            elseif event == \"PLAYER_REGEN_DISABLED\" then\n                self:Enable()\n            else\n                if InCombatLockdown() then\n                    self:Enable()\n                else\n                    self:Disable()\n                end\n            end\n        end\n    }\n    \n    function normalStagger:Init()\n        for handler, script in pairs(self.scripts) do\n            self:SetScript(handler, script)\n        end\n        for _, event in pairs(self.events) do\n            self:RegisterEvent(event)\n        end\n        self.scripts.OnEvent(self)\n    end\n    \n    function normalStagger:Enable()\n        if A.PlayerSpec == ACTION_CONST_MONK_BREWMASTER then \n            self.timeLimit = 10 + (IsSpellLearned(280515) and 3 or 0)\n            self:RegisterEvent(\"COMBAT_LOG_EVENT_UNFILTERED\")\n        end \n    end\n    \n    function normalStagger:Disable()\n        self:UnregisterEvent(\"COMBAT_LOG_EVENT_UNFILTERED\")\n    end\n    \n    normalStagger.events = {\"COMBAT_LOG_EVENT_UNFILTERED\", \"PLAYER_REGEN_DISABLED\", \"PLAYER_REGEN_ENABLED\"}\n    \n    BrewmasterTools.AddModule(\"NormalStagger\", normalStagger)\n    \n    --- No module required\n    local huge = math.huge\n    function BrewmasterTools.UnitAura(unit, spellID, filter)   \n        for i = 1, huge do\n            local name, icon, count, debuffType, duration, expirationTime, unitCaster, canStealOrPurge, nameplateShowPersonal, id, canApplyAura, isBossDebuff, isCastByPlayer, nameplateShowAll, timeMod, arg16 = UnitAura(unit, i, filter)         \n            if not name then\n                return 0\n            elseif spellID[id] then\n                return name, icon, count, debuffType, duration, expirationTime, unitCaster, canStealOrPurge, nameplateShowPersonal, id, canApplyAura, isBossDebuff, isCastByPlayer, nameplateShowAll, timeMod, arg16\n            end\n        end\n    end\n    \n    local staggerDebuffs = {\n        [124273] = true,\n        [124274] = true,\n        [124275] = true,\n    }\n    function BrewmasterTools.GetNextTick()\n        return select(16, BrewmasterTools.UnitAura(\"player\", staggerDebuffs, \"HARMFUL\")) or 0\n    end\n    \n    for _, module in pairs(BrewmasterTools.modules) do\n        BrewmasterTools.LoadModule(module)\n    end\n    \n    BrewmasterTools.loaded = true\nend \n\nBrewmasterTools.GetNextTick = Action.MakeFunctionCachedStatic(BrewmasterTools.GetNextTick)\n\nfunction BrewmasterTools.GetStaggerLevel(next_tick, next_health)\n    local perc \n    if next_tick and next_health then \n        perc = next_tick / next_health\n    else \n        perc = BrewmasterTools.GetNextTick() / Unit(\"player\"):HealthMax()\n    end \n    \n    if perc <= .015 then\n        return 1\n    elseif perc <= .03 then\n        return 2\n    elseif perc <= .05 then\n        return 3\n    elseif perc <= .1 then\n        return 4\n    else\n        return 5\n    end\nend\n\nfunction BrewmasterTools.GetStaggerProgress(next_stagger, next_normalized)\n    local progress \n    if next_stagger and next_normalized then \n        progress = next_stagger / next_normalized * 100\n    else \n        progress = UnitStagger(\"player\") / BrewmasterTools.GetNormalStagger() * 100\n    end \n    \n    return progress\nend \n\nfunction BrewmasterTools.GetStaggerHPLosePerTick(next_tick, next_health)\n    local PercentLose  \n    if next_tick and next_health then \n        PercentLose = (\"%.1f\"):format(100 * next_tick / next_health)\n    else \n        PercentLose = (\"%.1f\"):format(100 * BrewmasterTools.GetNextTick() / Unit(\"player\"):HealthMax())\n    end \n    \n    return PercentLose\nend \n\nfunction BrewmasterTools.GetStaggerPercent()\n    return UnitStagger(\"player\") * 100 / Unit(\"player\"):HealthMax()\nend \n\n",
				}, -- [5]
				{
					["Order"] = 2,
					["Name"] = "BM",
					["Code"] = "--######################################\n--####### AYA'S BREWMASTER MONK ########\n--######################################\n\nlocal _G, setmetatable                           = _G, setmetatable\nlocal ACTION                                    = _G.Action\nlocal Covenant                                    = _G.LibStub(\"Covenant\")\nlocal TMW                                     = _G.TMW \n\nlocal BrewmasterTools                        = _G.BrewmasterTools\nlocal GetStaggerLevel                        = BrewmasterTools.GetStaggerLevel\nlocal GetStaggerProgress                    = BrewmasterTools.GetStaggerProgress\nlocal GetStaggerPercent                        = BrewmasterTools.GetStaggerPercent\n\nlocal Action                                 = _G.Action\nlocal CONST                                 = Action.Const\nlocal Listener                                 = Action.Listener\nlocal Create                                 = Action.Create\nlocal GetToggle                                = Action.GetToggle\nlocal SetToggle                                = Action.SetToggle\nlocal GetLatency                            = Action.GetLatency\nlocal GetGCD                                = Action.GetGCD\nlocal GetCurrentGCD                            = Action.GetCurrentGCD\nlocal ShouldStop                            = Action.ShouldStop\nlocal BurstIsON                                = Action.BurstIsON\nlocal AuraIsValid                            = Action.AuraIsValid\nlocal IsSpellLearned                        = Action.IsSpellLearned\nlocal InterruptIsValid                        = Action.InterruptIsValid\nlocal FrameHasSpell                            = Action.FrameHasSpell\nlocal DetermineUsableObject                    = Action.DetermineUsableObject\n\nlocal Utils                                    = Action.Utils\nlocal BossMods                                = Action.BossMods\nlocal TeamCache                                = Action.TeamCache\nlocal EnemyTeam                                = Action.EnemyTeam\nlocal FriendlyTeam                            = Action.FriendlyTeam\nlocal LoC                                     = Action.LossOfControl\nlocal Player                                = Action.Player \nlocal MultiUnits                            = Action.MultiUnits\nlocal UnitCooldown                            = Action.UnitCooldown\nlocal Unit                                    = Action.Unit \nlocal IsUnitEnemy                            = Action.IsUnitEnemy\nlocal IsUnitFriendly                        = Action.IsUnitFriendly\nlocal ActiveUnitPlates                          = MultiUnits:GetActiveUnitPlates()\nlocal IsIndoors, UnitIsUnit, UnitIsPlayer       = IsIndoors, UnitIsUnit, UnitIsPlayer\nlocal pairs                                     = pairs\nlocal GrappleWeaponIsReady                    = Action.GrappleWeaponIsReady\n\nlocal ACTION_CONST_MONK_BREWMASTER           = CONST.MONK_BREWMASTER\nlocal ACTION_CONST_AUTOTARGET                = CONST.AUTOTARGET\nlocal ACTION_CONST_SPELLID_FREEZING_TRAP    = CONST.SPELLID_FREEZING_TRAP\n\nlocal  GetTotemInfo,     IsIndoors,       UnitStagger,       UnitIsUnit = \n_G.GetTotemInfo, _G.IsIndoors, _G.UnitStagger, _G.UnitIsUnit\n\n--For Toaster\nlocal Toaster                                    = _G.Toaster\nlocal GetSpellTexture                             = _G.TMW.GetSpellTexture\n\n--- ============================ CONTENT ===========================\n--- ======= APL LOCALS =======\n-- luacheck: max_line_length 9999\n\nAction[ACTION_CONST_MONK_BREWMASTER] = {\n    -- Racial\n    ArcaneTorrent                    = Action.Create({ Type = \"Spell\", ID = 50613    }),\n    BloodFury                        = Action.Create({ Type = \"Spell\", ID = 20572    }),\n    Fireblood                        = Action.Create({ Type = \"Spell\", ID = 265221   }),\n    AncestralCall                    = Action.Create({ Type = \"Spell\", ID = 274738   }),\n    Berserking                        = Action.Create({ Type = \"Spell\", ID = 26297    }),\n    ArcanePulse                        = Action.Create({ Type = \"Spell\", ID = 260364   }),\n    QuakingPalm                        = Action.Create({ Type = \"Spell\", ID = 107079   }),\n    Haymaker                        = Action.Create({ Type = \"Spell\", ID = 287712   }), \n    WarStomp                        = Action.Create({ Type = \"Spell\", ID = 20549    }),\n    BullRush                        = Action.Create({ Type = \"Spell\", ID = 255654   }),  \n    GiftofNaaru                        = Action.Create({ Type = \"Spell\", ID = 59544    }),\n    Shadowmeld                        = Action.Create({ Type = \"Spell\", ID = 58984    }), \n    Stoneform                        = Action.Create({ Type = \"Spell\", ID = 20594    }), \n    BagofTricks                        = Action.Create({ Type = \"Spell\", ID = 312411    }),\n    WilloftheForsaken                = Action.Create({ Type = \"Spell\", ID = 7744        }),   \n    EscapeArtist                    = Action.Create({ Type = \"Spell\", ID = 20589    }), \n    EveryManforHimself                = Action.Create({ Type = \"Spell\", ID = 59752    }), \n    LightsJudgment                    = Action.Create({ Type = \"Spell\", ID = 255647    }),\n    RocketJump                        = Action.Create({ Type = \"Spell\", ID = 69070    }),\n    DarkFlight                        = Action.Create({ Type = \"Spell\", ID = 68992    }),\n    \n    -- Monk General\n    BlackoutKick                    = Action.Create({ Type = \"Spell\", ID = 205523    }),\n    CracklingJadeLightning          = Action.Create({ Type = \"Spell\", ID = 117952    }),    \n    Detox                             = Action.Create({ Type = \"Spell\", ID = 218164    }),    \n    ExpelHarm                        = Action.Create({ Type = \"Spell\", ID = 322101    }),\n    FortifyingBrew                  = Action.Create({ Type = \"Spell\", ID = 115203    }),    \n    LegSweep                        = Action.Create({ Type = \"Spell\", ID = 119381    }), \n    MysticTouch                       = Action.Create({ Type = \"Spell\", ID = 8647         }),\n    Paralysis                        = Action.Create({ Type = \"Spell\", ID = 115078    }),\n    Provoke                            = Action.Create({ Type = \"Spell\", ID = 115546    }),\n    Resuscitate                        = Action.Create({ Type = \"Spell\", ID = 115178    }),    \n    Roll                            = Action.Create({ Type = \"Spell\", ID = 109132    }),    \n    SpinningCraneKick               = Action.Create({ Type = \"Spell\", ID = 322729    }),\n    TigerPalm                        = Action.Create({ Type = \"Spell\", ID = 100780    }),\n    RushingTigerPalm                = Action.Create({ Type = \"Spell\", ID = 337341    }),\n    TouchofDeath                       = Action.Create({ Type = \"Spell\", ID = 322109    }),\n    Transcendence                   = Action.Create({ Type = \"Spell\", ID = 101649    }),\n    TranscendenceTransfer           = Action.Create({ Type = \"Spell\", ID = 119996    }),\n    Vivify                           = Action.Create({ Type = \"Spell\", ID = 116670    }),\n    ZenFlight                       = Action.Create({ Type = \"Spell\", ID = 125883    }),\n    ZenPilgrimage                      = Action.Create({ Type = \"Spell\", ID = 126892    }),\n    \n    -- Brewmaster Specific\n    BreathofFire                     = Action.Create({ Type = \"Spell\", ID = 115181    }),\n    CelestialBrew                       = Action.Create({ Type = \"Spell\", ID = 322507    }),\n    Clash                           = Action.Create({ Type = \"Spell\", ID = 324312    }),\n    InvokeNiuzao                       = Action.Create({ Type = \"Spell\", ID = 132578    }), \n    KegSmash                      = Action.Create({ Type = \"Spell\", ID = 121253    }),\n    PurifyingBrew                   = Action.Create({ Type = \"Spell\", ID = 119582    }),\n    SpearHandStrike                   = Action.Create({ Type = \"Spell\", ID = 116705    }),\n    ZenMeditation                       = Action.Create({ Type = \"Spell\", ID = 115176           }), \n    BrewmastersBalance                     = Action.Create({ Type = \"Spell\", ID = 245013, Hidden = true            }), \n    CelestialFortune                       = Action.Create({ Type = \"Spell\", ID = 216519, Hidden = true      }),\n    GiftoftheOx                           = Action.Create({ Type = \"Spell\", ID = 124502, Hidden = true      }),\n    ElusiveBrawler                        = Action.Create({ Type = \"Spell\", ID = 117906, Hidden = true         }),\n    ElusiveBrawlerBuffBuff              = Action.Create({ Type = \"Spell\", ID = 195630, Hidden = true         }),\n    Shuffle                             = Action.Create({ Type = \"Spell\", ID = 322120, Hidden = true        }),\n    Stagger                        = Action.Create({ Type = \"Spell\", ID = 115069, Hidden = true        }),\n    \n    --Other\n    StopCast                        = Action.Create({ Type = \"Spell\", ID = 61721, Hidden = true           }),\n    \n    --Hidden\n    \n    -- Normal Talents\n    EyeoftheTiger                   = Action.Create({ Type = \"Spell\", ID = 196607, Hidden = true    }),\n    ChiWave                            = Action.Create({ Type = \"Spell\", ID = 115098    }),\n    ChiBurst                        = Action.Create({ Type = \"Spell\", ID = 123986    }),\n    Celerity                           = Action.Create({ Type = \"Spell\", ID = 115173, Hidden = true    }),\n    ChiTorpedo                      = Action.Create({ Type = \"Spell\", ID = 115008    }),\n    TigersLust                        = Action.Create({ Type = \"Spell\", ID = 116841    }),\n    LightBrewing                        = Action.Create({ Type = \"Spell\", ID = 325093, Hidden = true    }),\n    Spitfire                         = Action.Create({ Type = \"Spell\", ID = 242580    }),\n    BlackOxBrew                        = Action.Create({ Type = \"Spell\", ID = 115399    }),\n    TigerTailSweep                  = Action.Create({ Type = \"Spell\", ID = 264348, Hidden = true    }),\n    SummonOxStatue                  = Action.Create({ Type = \"Spell\", ID = 115315   }),\n    ProvokeSummonBlackOxStatue      = Action.Create({ Type = \"Spell\", ID = 115546, Color = \"PINK\", Texture = 115315                                         }),\n    RingofPeace                        = Action.Create({ Type = \"Spell\", ID = 116844    }),\n    BobandWeave                       = Action.Create({ Type = \"Spell\", ID = 280515, Hidden = true    }),\n    HealingElixir                    = Action.Create({ Type = \"Spell\", ID = 122281    }),\n    DampenHarm                      = Action.Create({ Type = \"Spell\", ID = 122278    }),\n    SpecialDelivery                 = Action.Create({ Type = \"Spell\", ID = 196730, Hidden = true    }),    \n    RushingJadeWind                 = Action.Create({ Type = \"Spell\", ID = 116847    }),\n    ExplodingKeg                    = Action.Create({ Type = \"Spell\", ID = 325153  }),\n    HighTolerance                  = Action.Create({ Type = \"Spell\", ID = 196737, Hidden = true    }),\n    CelestialFlames                 = Action.Create({ Type = \"Spell\", ID = 325177, Hidden = true      }),\n    BlackoutCombo                        = Action.Create({ Type = \"Spell\", ID = 196736, Hidden = true      }),\n    BlackoutComboBuff                = Action.Create({ Type = \"Spell\", ID = 228563, Hidden = true      }),\n    \n    \n    -- PvP Talents\n    Microbrew                        = Action.Create({ Type = \"Spell\", ID = 202107, Hidden = true      }),\n    HotTrub                            = Action.Create({ Type = \"Spell\", ID = 202126, Hidden = true      }),\n    --    GuidedMeditaiton                = Action.Create({ Type = \"Spell\", ID = 202200, Hidden = true      }),\n    AvertHarm                        = Action.Create({ Type = \"Spell\", ID = 202162,      }),\n    CraftNimbleBrew                    = Action.Create({ Type = \"Spell\", ID = 213658,      }),\n    IncendiaryBreath                = Action.Create({ Type = \"Spell\", ID = 202272, Hidden = true      }),\n    DoubleBarrel                    = Action.Create({ Type = \"Spell\", ID = 202335,      }),\n    Admonishment                    = Action.Create({ Type = \"Spell\", ID = 207025,      }),\n    NiuzaosEssence                    = Action.Create({ Type = \"Spell\", ID = 232876, Hidden = true      }),\n    MightyOxKick                    = Action.Create({ Type = \"Spell\", ID = 202370,      }),\n    EerieFermentation                = Action.Create({ Type = \"Spell\", ID = 205147, Hidden = true      }),\n    \n    -- Covenant Abilities\n    SummonSteward                    = Action.Create({ Type = \"Spell\", ID = 324739    }),\n    DoorofShadows                    = Action.Create({ Type = \"Spell\", ID = 300728    }),\n    Fleshcraft                        = Action.Create({ Type = \"Spell\", ID = 321687    }),\n    Fleshcraftshield                  = Action.Create({ Type = \"Spell\", ID = 324867    }),\n    Soulshape                        = Action.Create({ Type = \"Spell\", ID = 310143    }),\n    WeaponsofOrder                = Action.Create({ Type = \"Spell\", ID = 310454    }),\n    WeaponsofOrderWW                =Action.Create({ Type = \"Spell\", ID = 311054    }),\n    BonedustBrew                    = Action.Create({ Type = \"Spell\", ID = 325216    }),\n    DeathsDue                        = Action.Create({ Type = \"Spell\", ID = 324128    }),  \n    FaelineStomp                        = Action.Create({ Type = \"Spell\", ID = 327104    }),\n    FallenOrder                        = Action.Create({ Type = \"Spell\", ID = 326860    }),       \n    \n    \n    -- Conduits\n    CoordinatedOffensive            = Action.Create({ Type = \"Spell\", ID = 336598, Hidden = true    }),\n    \n    \n    -- Legendaries\n    -- General Legendaries    \n    \n    --Brew Master Legendaries\n    CharredPassions                    = Action.Create({ Type = \"Spell\", ID = 338138, Hidden = true    }),\n    CharredPassionsBuff                 = Action.Create({ Type = \"Spell\", ID = 338140, Hidden = true    }),\n    \n    \n    --Anima Powers - to add later...\n    \n    \n    -- Trinkets\n    DreadFireVessel            = Create({ Type = \"Trinket\", ID = 6805 }),   \n    \n    \n    -- Potions\n    PotionofUnbridledFury            = Action.Create({ Type = \"Potion\", ID = 169299, QueueForbidden = true }),     \n    SuperiorPotionofUnbridledFury    = Action.Create({ Type = \"Potion\", ID = 168489, QueueForbidden = true }),\n    PotionofSpectralStrength        = Action.Create({ Type = \"Potion\", ID = 171275, QueueForbidden = true }),\n    PotionofSpectralAgility      = Action.Create({ Type = \"Potion\", ID = 171270, QueueForbidden = true }),\n    PotionofSpectralStamina            = Action.Create({ Type = \"Potion\", ID = 171274, QueueForbidden = true }),\n    PotionofEmpoweredExorcisms        = Action.Create({ Type = \"Potion\", ID = 171352, QueueForbidden = true }),\n    PotionofHardenedShadows            = Action.Create({ Type = \"Potion\", ID = 171271, QueueForbidden = true }),\n    PotionofPhantomFire                = Action.Create({ Type = \"Potion\", ID = 171349, QueueForbidden = true }),\n    PotionofDeathlyFixation            = Action.Create({ Type = \"Potion\", ID = 171351, QueueForbidden = true }),\n    SpiritualHealingPotion            = Action.Create({ Type = \"Potion\", ID = 171267, QueueForbidden = true }),      \n    \n    -- Misc\n    Channeling                      = Action.Create({ Type = \"Spell\", ID = 209274, Hidden = true     }),    -- Show an icon during channeling\n    TargetEnemy                     = Action.Create({ Type = \"Spell\", ID = 44603, Hidden = true     }),    -- Change Target (Tab button)\n    StopCast                        = Action.Create({ Type = \"Spell\", ID = 61721, Hidden = true     }),        -- spell_magic_polymorphrabbit\n    PoolResource                    = Action.Create({ Type = \"Spell\", ID = 209274, Hidden = true     }),\n    Quake                           = Action.Create({ Type = \"Spell\", ID = 240447, Hidden = true     }), -- Quake (Mythic Plus Affix)\n    GCD                          = Action.Create({ Type = \"Spell\", ID = 61304, Hidden = true     }),   \n}\n\n\nlocal A = setmetatable(Action[ACTION_CONST_MONK_BREWMASTER], { __index = Action })\n\nlocal player                                 = \"player\"\nlocal AdditionalTaunt = GetToggle(2, \"AdditionalTaunt\")\n\n\nlocal function num(val)\n    if val then return 1 else return 0 end\nend\n\nlocal function bool(val)\n    return val ~= 0\nend\nlocal player = \"player\"\n----------------------\n-------- COMMON PREAPL -------\n----------------------\nlocal Temp = {\n    TotalAndPhys                            = {\"TotalImun\", \"DamagePhysImun\"},\n    TotalAndCC                              = {\"TotalImun\", \"CCTotalImun\"},\n    TotalAndPhysKick                        = {\"TotalImun\", \"DamagePhysImun\", \"KickImun\"},\n    TotalAndPhysAndCC                       = {\"TotalImun\", \"DamagePhysImun\", \"CCTotalImun\"},\n    TotalAndPhysAndStun                     = {\"TotalImun\", \"DamagePhysImun\", \"StunImun\"},\n    TotalAndPhysAndCCAndStun                = {\"TotalImun\", \"DamagePhysImun\", \"CCTotalImun\", \"StunImun\"},\n    TotalAndMag                             = {\"TotalImun\", \"DamageMagicImun\"},\n    TotalAndMagKick                         = {\"TotalImun\", \"DamageMagicImun\", \"KickImun\"},\n    DisablePhys                             = {\"TotalImun\", \"DamagePhysImun\", \"Freedom\", \"CCTotalImun\"},\n    DisableMag                              = {\"TotalImun\", \"DamageMagicImun\", \"Freedom\", \"CCTotalImun\"},\n    IsSlotTrinketBlocked                    = {},\n}; do     \nend\n\nlocal function IsSchoolFree()\n    return LoC:IsMissed(\"SILENCE\") and LoC:Get(\"SCHOOL_INTERRUPT\", \"NATURE\") == 0\nend \n\nlocal IsIndoors, UnitIsUnit, UnitName = IsIndoors, UnitIsUnit, UnitName\n\n--Register Toaster\nToaster:Register(\"TripToast\", function(toast, ...)\n        local title, message, spellID = ...\n        toast:SetTitle(title or \"nil\")\n        toast:SetText(message or \"nil\")\n        if spellID then \n            if type(spellID) ~= \"number\" then \n                error(tostring(spellID) .. \" (spellID) is not a number for TripToast!\")\n                toast:SetIconTexture(\"Interface\\FriendsFrame\\Battlenet-WoWicon\")\n            else \n                toast:SetIconTexture((GetSpellTexture(spellID)))\n            end \n        else \n            toast:SetIconTexture(\"Interface\\FriendsFrame\\Battlenet-WoWicon\")\n        end \n        toast:SetUrgencyLevel(\"normal\") \nend)\n\nfunction Player:AreaTTD(range)\n    local ttdtotal = 0\n    local totalunits = 0\n    local r = range\n    \n    for _, unitID in pairs(ActiveUnitPlates) do \n        if Unit(unitID):GetRange() <= r then \n            local ttd = Unit(unitID):TimeToDie()\n            totalunits = totalunits + 1\n            ttdtotal = ttd + ttdtotal\n        end\n    end\n    \n    if totalunits == 0 then\n        return 0\n    end\n    \n    return ttdtotal / totalunits\nend    \n\nlocal function InMelee(unit)\n    -- @return boolean \n    return A.TigerPalm:IsInRange(unit)\nend \n\nlocal function GetByRange(count, range, isCheckEqual, isCheckCombat)\n    -- @return boolean \n    local c = 0 \n    for unit in pairs(ActiveUnitPlates) do \n        if (not isCheckEqual or not UnitIsUnit(\"target\", unit)) and (not isCheckCombat or Unit(unit):CombatTime() > 0) then \n            if InMelee(unit) then \n                c = c + 1\n            elseif range then \n                local r = Unit(unit):GetRange()\n                if r > 0 and r <= range then \n                    c = c + 1\n                end \n            end \n            \n            if c >= count then \n                return true \n            end \n        end \n    end\nend \nGetByRange = A.MakeFunctionCachedDynamic(GetByRange)\n\n-- Non GCD spell check\nlocal function countInterruptGCD(unit)\n    if not A.SpearHandStrike:IsReadyByPassCastGCD(unit) or not A.SpearHandStrike:AbsentImun(unit, Temp.TotalAndPhysKick, true) then \n        return true \n    end \nend \n\n--Work around fix for AoE off breaking\nif UseAoE == true\nthen AoETargets = Action.GetToggle(2,\"AoETargets\")\nelse AoETargets = 10\nend\n\n-----------------------------------------\n--                 ROTATION  \n-----------------------------------------\nlocal function AutoPurify()\n    -- Using by Dynamic bar also\n    if A.IsInitialized and BrewmasterTools then \n        local lvl = GetStaggerLevel()\n        if (lvl > 1 and lvl < 3 and GetStaggerProgress() > 80) or (lvl == 3 and GetStaggerProgress() > 70) or (lvl == 4 and GetStaggerProgress() > 50) or lvl > 4 then \n            return true, lvl\n        end \n    end \n    return false, -1\nend \nAction.AutoPurify = AutoPurify\n\nlocal function ShouldPurify()\n    local Toggle = GetToggle(2, \"ShouldPurify\")\n    local Purify, PurifyLVL = AutoPurify()\n    return Purify and (Toggle == 0 or Toggle == PurifyLVL)\nend \n\nlocal IronskinDuration = 7\nlocal function SelfDeffensives()\n    local BrewMaxCharge = 3 + (A.LightBrewing:IsSpellLearned() and 1 or 0)\n    \n    \n    -- PurifyingBrew\n    if A.PurifyingBrew:IsReady(player) and ShouldPurify() then \n        return A.PurifyingBrew\n    end \n    \n    \n    -- HealingElixir\n    local HealingElixir = GetToggle(2, \"HealingElixir\")\n    if     HealingElixir >= 0 and A.HealingElixir:IsReady(player) and IsSchoolFree() and\n    (\n        (     -- Auto \n            HealingElixir >= 85 and \n            (\n                Unit(player):HealthPercent() <= 20 or\n                (                        \n                    Unit(player):HealthPercent() < 70 and \n                    A.HealingElixir:GetSpellChargesFrac() > 1.1\n                ) or \n                (\n                    Unit(player):HealthPercent() < 40 and \n                    Unit(player):IsTanking(\"target\", 8)\n                ) \n            )\n        ) or \n        (    -- Custom\n            HealingElixir < 85 and \n            Unit(player):HealthPercent() <= HealingElixir\n        )\n    ) \n    then \n        return A.HealingElixir\n    end \n    \n    -- ZenMeditation\n    local ZenMeditation = GetToggle(2, \"ZenMeditation\")\n    if     ZenMeditation >= 0 and A.ZenMeditation:IsReady(player) and Player:IsStayingTime() > 0.8 and IsSchoolFree() and \n    (\n        (     -- Auto \n            ZenMeditation >= 100 and \n            (    -- Trying to catch kill strike by CLEU from latest hits\n                Unit(player):GetDMG() >= Unit(player):Health() or \n                Unit(player):GetRealTimeDMG() >= Unit(player):Health() \n            )\n        ) or \n        (    -- Custom\n            -- Note: User should configure own cast bars through LUA in 'Actions' tab with own HP preset for advanced logic to catch boss's critical casting strikes\n            ZenMeditation < 100 and \n            Unit(player):HealthPercent() <= ZenMeditation\n        )\n    ) \n    then \n        return A.ZenMeditation\n    end \n    \n    -- AvertHarm\n    if A.AvertHarm:IsReady(player) and Unit(player):TimeToDie() > 15 and (FriendlyTeam(nil, 2):GetTTD(2, 18, 20) or FriendlyTeam(nil, 2):HealerIsFocused(true, true, 20)) then \n        return A.AvertHarm\n    end \n    \n    -- CelestialBrew\n    local CelestialBrew = GetToggle(2, \"CelestialBrew\") \n    if     CelestialBrew >= 0 and A.CelestialBrew:IsReady(player) and\n    (\n        (     -- Auto \n            CelestialBrew >= 100 and \n            UnitStagger(player) >= A.CelestialBrew:GetSpellDescription()[1]\n        ) or \n        (    -- Custom\n            CelestialBrew < 100 and \n            GetStaggerPercent() >= CelestialBrew\n        )\n    ) \n    then \n        return A.CelestialBrew\n    end \n    \n    -- DampenHarm\n    local DampenHarm = GetToggle(2, \"DampenHarm\")\n    if     DampenHarm >= 0 and A.DampenHarm:IsReady(player) and Unit(player):IsTanking(\"target\", 8) and \n    (\n        (     -- Auto \n            DampenHarm >= 100 and \n            (\n                -- HP lose per sec >= 20\n                Unit(player):GetDMG() * 100 / Unit(player):HealthMax() >= 20 or \n                (\n                    A.IsInPvP and \n                    (\n                        Unit(player):UseDeff() or \n                        (\n                            Unit(player, 5):HasFlags() and \n                            Unit(player):GetRealTimeDMG() > 0 and \n                            Unit(player):IsFocused(nil, true) \n                        )\n                    )\n                )\n            ) and \n            Unit(player):HasBuffs(\"DeffBuffs\", true) == 0\n        ) or \n        (    -- Custom\n            DampenHarm < 100 and \n            Unit(player):HealthPercent() <= DampenHarm\n        )\n    ) \n    then \n        return A.DampenHarm\n    end \n    \n    -- FortifyingBrew\n    local FortifyingBrew = GetToggle(2, \"FortifyingBrew\")\n    if     FortifyingBrew >= 0 and A.FortifyingBrew:IsReady(player) and Unit(player):IsTanking(\"target\", 8) and \n    (\n        (     -- Auto \n            FortifyingBrew >= 100 and \n            (\n                (\n                    not A.IsInPvP and \n                    Unit(player):HealthPercent() < 40 and \n                    Unit(player):TimeToDieX(15) < 5 \n                ) or \n                (\n                    A.IsInPvP and \n                    (\n                        Unit(player):UseDeff() or \n                        (\n                            Unit(player, 5):HasFlags() and \n                            Unit(player):GetRealTimeDMG() > 0 and \n                            Unit(player):IsFocused(nil, true)                                 \n                        )\n                    )\n                )\n            ) and \n            Unit(player):HasBuffs(\"DeffBuffs\", true) == 0\n        ) or \n        (    -- Custom\n            FortifyingBrew < 100 and \n            Unit(player):HealthPercent() <= FortifyingBrew\n        )\n    ) \n    then \n        return A.FortifyingBrew\n    end \n    \n    -- Stoneform\n    local Stoneform = GetToggle(2, \"Stoneform\")\n    if     Stoneform >= 0 and A.Stoneform:IsRacialReadyP(player) and Unit(player):IsTanking(\"target\", 8) and \n    (\n        (     -- Auto \n            Stoneform >= 100 and \n            (\n                (\n                    not A.IsInPvP and                         \n                    Unit(player):TimeToDieX(65) < 3 \n                ) or \n                (\n                    A.IsInPvP and \n                    (\n                        Unit(player):UseDeff() or \n                        (\n                            Unit(player, 5):HasFlags() and \n                            Unit(player):GetRealTimeDMG() > 0 and \n                            Unit(player):IsFocused(nil, true)                                 \n                        )\n                    )\n                )\n            ) \n        ) or \n        (    -- Custom\n            Stoneform < 100 and \n            Unit(player):HealthPercent() <= Stoneform\n        )\n    ) \n    then \n        return A.Stoneform\n    end \n    \n    -- Stoneform (PvE Self Dispel)\n    if A.Stoneform:AutoRacial(player) and not A.IsInPvP and AuraIsValid(player, \"UseDispel\", \"Dispel\") then \n        return A.Stoneform\n    end \n    \nend \n\nlocal function BlackOxStatue()\n    for i = 1, MAX_TOTEMS do \n        local have, name, start, duration = GetTotemInfo(i)\n        if duration and duration == 900 then \n            return duration - (TMW.time - start)\n        end \n    end \n    return 0\nend\n\n--[[\nlocal function Niuzao()\n    for i = 1, MAX_TOTEMS do \n        local have, name, start, duration = GetTotemInfo(i)\n        if duration and duration == 45 then \n            return duration - (TMW.time - start)\n        end \n    end \n    return 0\nend\n]]\n\nlocal function ShouldTaunt(unit)\n    if A.Zone ~= \"none\" then \n        \n        -- Provoke\n        if A.Provoke:IsReady(unit) and (not A.IsInPvP or not A.Admonishment:IsSpellLearned() and not Unit(unit):IsPlayer() and not Unit(unit):IsTotem()) and Unit(unit):CombatTime() > 0 and not Unit(unit .. \"target\"):IsTank() then \n            return A.Provoke\n        end         \n    end \n    \n    -- Admonishment\n    if A.Admonishment:IsReady(unit) and Unit(unit):IsPlayer() and Unit(unit):HasDeBuffs(206891) == 0 and A.Admonishment:AbsentImun(unit, Temp.TotalAndPhys) then \n        return A.Admonishment\n    end     \nend \n\nlocal function countInterruptGCD(unit)\n    if not A.SpearHandStrike:IsReadyByPassCastGCD(unit) or not A.SpearHandStrike:AbsentImun(unit, Temp.TotalAndPhysKick, true) then \n        return true \n    end \nend \n\nlocal function Interrupts(unit)\n    local useKick, useCC, useRacial, notInterruptable, castRemainsTime = InterruptIsValid(unit,  nil, nil, countInterruptGCD(unit))\n    \n    -- Can waste interrupt action due delays caused by ping, interface input \n    if castRemainsTime < GetLatency() then \n        return \n    end     \n    \n    if useKick and not notInterruptable and A.SpearHandStrike:IsReady(unit) and A.SpearHandStrike:AbsentImun(unit, Temp.TotalAndPhysKick, true) then \n        return A.SpearHandStrike\n    end \n    \n    if useCC and A.Paralysis:IsReady(unit) and Unit(unit):IsControlAble(\"incapacitate\") and A.Paralysis:AbsentImun(unit, Temp.TotalAndPhysAndCC, true) then \n        return A.Paralysis                  \n    end             \n    \n    if useRacial and A.QuakingPalm:AutoRacial(unit) then \n        return A.QuakingPalm\n    end \n    \n    if useRacial and A.Haymaker:AutoRacial(unit) then \n        return A.Haymaker\n    end \n    \n    if useRacial and A.WarStomp:AutoRacial(unit) then \n        return A.WarStomp\n    end \n    \n    if useRacial and A.BullRush:AutoRacial(unit) then \n        return A.BullRush\n    end\n    \n    if useCC and A.LegSweep:IsReady(unit, true) and Unit(unit):GetRange() <= 5 and Unit(unit):IsControlAble(\"stun\") and A.LegSweep:AbsentImun(unit, Temp.TotalAndPhysAndCCAndStun, true)  then\n        return A.LegSweep     \n    end     \nend \n\nlocal function SharedMouseover(inAoE, isSchoolFree)\n    local unit = \"mouseover\"\n    \n    -- ArcaneTorrent\n    if A.ArcaneTorrent:AutoRacial(unit) then \n        return A.ArcaneTorrent\n    end     \n    \n    if IsUnitFriendly(\"mouseover\") then     \n        -- Resuscitate\n        if isSchoolFree and Unit(player):CombatTime() == 0 and Unit(unit):IsDead() and Player:IsStaying() and A.Resuscitate:IsReady(unit) then \n            return A.Resuscitate\n        end \n        \n        -- Detox\n        if isSchoolFree and A.Detox:IsReady(unit) and AuraIsValid(unit, \"UseDispel\", \"Dispel\") and A.Detox:AbsentImun(unit) then \n            return A.Detox\n        end \n        \n        -- TigersLust\n        if isSchoolFree and A.TigersLust:IsReady(unit) and Unit(unit):HasDeBuffs(\"Rooted\") > GetGCD() and A.TigersLust:AbsentImun(unit) then \n            return A.TigersLust\n        end \n        \n        -- GiftofNaaru\n        if A.GiftofNaaru:AutoRacial(unit) then \n            return A.GiftofNaaru\n        end \n        \n        -- Vivify\n        --       if isSchoolFree and A.Vivify:IsReady(unit) and Player:IsStaying() and (UnitIsUnit(unit, player) or (A.Vivify:PredictHeal(unit) and A.Vivify:AbsentImun(unit))) then \n        --           return A.Vivify\n        --       end         \n        \n        -- TigersLust\n        if isSchoolFree and A.TigersLust:IsReady(unit) then \n            local cMoving = Unit(unit):GetCurrentSpeed()\n            if cMoving > 0 and cMoving <= 70 and A.TigersLust:AbsentImun(unit) then \n                return A.TigersLust\n            end \n        end \n        \n        -- ChiBurst\n        if inAoE and isSchoolFree and A.ChiBurst:IsReady(unit, true) and Unit(unit):GetRange() <= 40 and Player:IsStaying() and A.ChiBurst:PredictHeal(unit) and A.ChiBurst:AbsentImun(unit) and (not A.IsInPvP or not EnemyTeam(\"HEALER\"):IsBreakAble(40)) then \n            return A.ChiBurst\n        end \n        \n        -- ChiWave\n        if inAoE and isSchoolFree and A.ChiWave:IsReady(unit, true) and Unit(unit):GetRange() <= 25 and A.ChiWave:PredictHeal(unit) and A.ChiWave:AbsentImun(unit) and (not A.IsInPvP or not EnemyTeam(\"HEALER\"):IsBreakAble(25)) then \n            return A.ChiWave\n        end \n    end \n    \n    if IsUnitEnemy(\"mouseover\") then \n        -- Taunts \n        local Taunt = ShouldTaunt(unit)\n        if Taunt then \n            return Taunt\n        end \n        \n        -- Interrupts \n        local Interrupt = Interrupts(unit)\n        if Interrupt then \n            return Interrupt\n        end \n        \n        -- ChiBurst\n        if inAoE and isSchoolFree and A.ChiBurst:IsReady(unit, true) and Unit(unit):GetRange() <= 40 and Player:IsStaying() and MultiUnits:GetByRange(40, 3) >= 3 and A.ChiBurst:AbsentImun(unit) and (not A.IsInPvP or not EnemyTeam(\"HEALER\"):IsBreakAble(40)) then \n            return A.ChiBurst\n        end         \n        \n        -- ChiWave\n        if inAoE and isSchoolFree and A.ChiWave:IsReady(unit, true) and Unit(unit):GetRange() <= 25 and MultiUnits:GetByRange(25, 3) >= 3 and A.ChiWave:AbsentImun(unit) and (not A.IsInPvP or not EnemyTeam(\"HEALER\"):IsBreakAble(25)) then \n            return A.ChiWave\n        end \n    end     \nend \n\n-- Interrupts spells\nlocal function Interrupts(unit)\n    local LegSweepInterrupt = Action.GetToggle(2, \"LegSweepInterrupt\")\n    local ParalysisInterrupt = Action.GetToggle(2, \"ParalysisInterrupt\")\n    \n    if A.GetToggle(2, \"InterruptsRyan\") and (A.InstanceInfo.ID >= 2284 and A.InstanceInfo.ID <= 2296) --uses ryan interrupt table in SL dungeons and raid instance IDs\n    then\n        useKick, useCC, useRacial, notKickAble, castLeft = Action.InterruptIsValid(unit, \"RyanInterrupts\", true)\n    else \n        useKick, useCC, useRacial, notInterruptable, castRemainsTime, castDoneTime = Action.InterruptIsValid(unit, nil, nil, countInterruptGCD(unit))\n    end \n    \n    if castRemainsTime >= A.GetLatency() then\n        -- Spear Hand Strike\n        if useKick and not notInterruptable and A.SpearHandStrike:IsReady(unit) then \n            return A.SpearHandStrike\n        end\n        \n        -- Paralysis\n        if A.Paralysis:IsReady(unit) and ParalysisInterrupt and A.SpearHandStrike:GetCooldown() > 1 and useCC then \n            return A.Paralysis\n        end \n        \n        -- LegSweep\n        if A.LegSweep:IsReady(unit) and LegSweepInterrupt and A.SpearHandStrike:GetCooldown() > 1 and useCC then \n            return A.LegSweep\n        end \n        \n        if useRacial and A.QuakingPalm:AutoRacial(unit) then \n            return A.QuakingPalm\n        end \n        \n        if useRacial and A.Haymaker:AutoRacial(unit) then \n            return A.Haymaker\n        end \n        \n        if useRacial and A.WarStomp:AutoRacial(unit) then \n            return A.WarStomp\n        end \n        \n        if useRacial and A.BullRush:AutoRacial(unit) then \n            return A.BullRush\n        end \n    end\nend\n\n\n--- ======= ACTION LISTS =======\n-- [3] Single Rotation\nA[3] = function(icon, isMulti)\n    ----------\n    --- ROTATION VAR ---\n    ----------\n    local EnemyRotation, FriendlyRotation\n    local isSchoolFree = IsSchoolFree()\n    local isMoving = A.Player:IsMoving()\n    local inCombat = Unit(player):CombatTime()        -- @number \n    local combatTime = Unit(\"player\"):CombatTime()\n    local inDisarm  = LoC:Get(\"DISARM\") > 0\n    local Energy = Player:Energy()\n    local Chi = Player:Chi()\n    local inMelee             = false \n    \n    --    local PotionTTD = Unit(\"target\"):TimeToDie() > Action.GetToggle(2, \"PotionTTD\")\n    local AutoPotionSelect = Action.GetToggle(2, \"AutoPotionSelect\")\n    local PotionTrue = Action.GetToggle(1, \"Potion\")    \n    local Racial = Action.GetToggle(1, \"Racial\")\n    local UseAoE = Action.GetToggle(2, \"AoE\")\n    local AoETargets = Action.GetToggle(2, \"AoETargets\")\n    local currentTargets = MultiUnits:GetByRange(7)    \n    local MouseoverTarget = UnitName(\"mouseover\")\n    local isSchoolFree         = IsSchoolFree()\n    \n    --------------------------------------\n    -------- ENEMY UNIT ROTATION ---------\n    --------------------------------------\n    -- Return \n    if Unit(\"player\"):HasBuffs(A.ZenMeditation.ID, true) > 0 then \n        return \n    end \n    \n    -- Defensive\n    if inCombat > 0 then \n        local Deffensive = SelfDeffensives(inCombat)\n        if Deffensive then \n            return Deffensive:Show(icon)\n        end \n    end \n    \n    -- Defensive Trinkets\n    if inCombat > 0 and (Unit(player):HealthPercent() < 30 or Unit(player):TimeToDie() < 5) then \n        if A.Trinket1:IsReady(player) and A.Trinket1:GetItemCategory() ~= \"DPS\" then \n            return A.Trinket1:Show(icon)\n        end \n        \n        if A.Trinket2:IsReady(player) and A.Trinket2:GetItemCategory() ~= \"DPS\" then \n            return A.Trinket2:Show(icon)\n        end\n    end             \n    \n    -- Mouseover Rotation\n    local Mouseover = SharedMouseover(inAoE, isSchoolFree)\n    if Mouseover then \n        return Mouseover:Show(icon)\n    end \n    \n    -- CraftNimbleBrew\n    if inCombat == 0 and A.CraftNimbleBrew:IsReady(player, true) and A.NimbleBrew:GetCount() < 2 and Player:IsStaying() then \n        return A.CraftNimbleBrew:Show(icon)\n    end \n    \n    -- ArcaneTorrent\n    if A.ArcaneTorrent:AutoRacial(\"target\") then \n        return A.ArcaneTorrent:Show(icon)\n    end         \n    \n    -- [[ Friendly Rotation ]]\n    if IsUnitFriendly(\"target\") then \n        unit = \"target\"\n        \n        -- Resuscitate\n        if isSchoolFree and inCombat == 0 and Unit(unit):IsDead() and Unit(unit):IsPlayer() and Player:IsStaying() and A.Resuscitate:IsReady(unit) then \n            return A.Resuscitate:Show(icon)\n        end \n        \n        -- Detox\n        if isSchoolFree and A.Detox:IsReady(unit) and AuraIsValid(unit, \"UseDispel\", \"Dispel\") and A.Detox:AbsentImun(unit) then \n            return A.Detox:Show(icon)\n        end \n        \n        -- TigersLust\n        if isSchoolFree and A.TigersLust:IsReady(unit) and Unit(unit):HasDeBuffs(\"Rooted\") > GetGCD() and A.TigersLust:AbsentImun(unit) then \n            return A.TigersLust:Show(icon)\n        end \n        \n        -- GiftofNaaru\n        if A.GiftofNaaru:AutoRacial(unit) then \n            return A.GiftofNaaru:Show(icon)\n        end \n        \n        -- Vivify\n        --      if isSchoolFree and Player:IsStaying() and A.Vivify:IsReady(unit) and (UnitIsUnit(unit, player) or (A.Vivify:PredictHeal(unit) and A.Vivify:AbsentImun(unit))) then \n        --          return A.Vivify:Show(icon)\n        --      end         \n        \n        -- TigersLust\n        if isSchoolFree and A.TigersLust:IsReady(unit) then \n            local cMoving = Unit(unit):GetCurrentSpeed()\n            if cMoving > 0 and cMoving < 64 and A.TigersLust:AbsentImun(unit) then \n                return A.TigersLust:Show(icon)\n            end \n        end \n        \n        -- ChiBurst\n        if inAoE and isSchoolFree and A.ChiBurst:IsReady(unit, true) and Unit(unit):GetRange() <= 40 and Player:IsStaying() and A.ChiBurst:PredictHeal(unit) and A.ChiBurst:AbsentImun(unit) and (not A.IsInPvP or not EnemyTeam(\"HEALER\"):IsBreakAble(40)) then \n            return A.ChiBurst:Show(icon)\n        end \n        \n        -- ChiWave\n        if inAoE and isSchoolFree and A.ChiWave:IsReady(unit, true) and Unit(unit):GetRange() <= 25 and A.ChiWave:PredictHeal(unit) and A.ChiWave:AbsentImun(unit) and (not A.IsInPvP or not EnemyTeam(\"HEALER\"):IsBreakAble(25)) then \n            return A.ChiWave:Show(icon)\n        end \n        \n        -- Vivify\n        -- Force cast \n        if A.IsInPvP and isSchoolFree and inCombat > 0 and Player:IsStaying() and A.Vivify:IsReady(unit) and (UnitIsUnit(unit, player) or A.Vivify:AbsentImun(unit)) and Unit(unit):GetRealTimeDMG() > 0 then \n            return A.Vivify:Show(icon)\n        end \n    end \n    \n    if IsUnitEnemy(\"target\") then \n        unit = \"target\"\n        local inMelee = A.TigerPalm:IsInRange(unit)\n        \n        -- Out of combat / Precombat\n        if inCombat == 0 then         \n            local Pull = BossMods:GetPullTimer()\n            \n            if Pull > 0 then \n                -- SuperiorBattlePotionOfAgility / BattlePotionOfAgility\n                if Pull < 2 and LoC:IsMissed(\"DISARM\") then \n                    if A.SuperiorBattlePotionOfAgility:IsReady(unit) then \n                        return A.SuperiorBattlePotionOfAgility:Show(icon)\n                    elseif A.BattlePotionOfAgility:IsReady(unit) then \n                        return A.BattlePotionOfAgility:Show(icon)\n                    end \n                end \n            end\n            \n            --actions=auto_attack\n            --actions+=/spear_hand_strike,if=target.debuff.casting.react\n            local Interrupt = Interrupts(unit)\n            if Interrupt then \n                return Interrupt:Show(icon)\n            end  \n            --actions+=/gift_of_the_ox,if=health<health.max*0.65\n            --actions+=/dampen_harm,if=incoming_damage_1500ms&buff.fortifying_brew.down\n            --actions+=/fortifying_brew,if=incoming_damage_1500ms&(buff.dampen_harm.down|buff.diffuse_magic.down)\n            --actions+=/use_item,name=dreadfire_vessel\n            -- Defensive Trinkets\n            \n        end   \n        --actions+=/potion\n        \n        local function Cooldowns()\n            --actions+=/blood_fury\n            if A.BloodFury:IsReady(\"player\") then \n                return A.BloodFury:Show(icon)\n            end\n            \n            --actions+=/berserking\n            if A.Berserking:IsReady(\"player\") then \n                return A.Berserking:Show(icon)\n            end\n            \n            --actions+=/lights_judgment\n            if A.LightsJudgment:IsReady(\"player\") then \n                return A.LightsJudgment:Show(icon)\n            end\n            \n            --actions+=/fireblood\n            if A.Fireblood:IsReady(\"player\") then \n                return A.Fireblood:Show(icon)\n            end\n            \n            --actions+=/ancestral_call\n            if A.AncestralCall:IsReady(\"player\") then \n                return A.AncestralCall:Show(icon)\n            end\n            \n            --actions+=/bag_of_tricks\n            if A.BagofTricks:IsReady(\"player\") then \n                return A.BagofTricks:Show(icon)\n            end\n            \n            --actions+=/invoke_niuzao_the_black_ox,if=target.time_to_die>25\n            if A.InvokeNiuzao:IsReady(unit) and Unit(\"target\"):TimeToDie() > 25 then\n                return A.InvokeNiuzao:Show(icon)\n            end\n            \n            --actions+=/touch_of_death,if=target.health.pct<=15\n            if A.TouchofDeath:IsReady(unit) then\n                return A.TouchofDeath:Show(icon)\n            end\n            \n            --actions+=/weapons_of_order\n            if A.WeaponsofOrder:IsReady(unit) then\n                return A.WeaponsofOrder:Show(icon)\n            end\n            \n            --actions+=/fallen_order\n            if A.FallenOrder:IsReady(unit) then\n                return A.FallenOrder:Show(icon)\n            end\n            \n            --actions+=/bonedust_brew\n            if A.BonedustBrew:IsReady(unit) then\n                return A.BonedustBrew:Show(icon)\n            end\n            \n            --actions+=/black_ox_brew,if=(energy+(energy.regen*cooldown.keg_smash.remains))<40&buff.blackout_combo.down&cooldown.keg_smash.up\n            if A.BlackOxBrew:IsReady(\"player\") and (Player:Energy() + (Player:EnergyRegen() * A.KegSmash:GetCooldown())) < (40 and (Unit(\"player\"):HasBuffs(A.BlackoutComboBuff.ID, true) > 0 or not A.BlackoutCombo:IsTalentLearned()) and A.KegSmash:GetCooldown() > 0) then\n                return A.BlackOxBrew:Show(icon)\n            end\n            \n        end\n        \n        if A.BurstIsON(unit) and Cooldowns() then\n            return true\n        end\n        --actions+=/purifying_brew\n        --# Black Ox Brew is currently used to either replenish brews based on less than half a brew charge available, or low energy to enable Keg Smash\n        --actions+=/black_ox_brew,if=cooldown.purifying_brew.charges_fractional<0.5\n        if A.BlackOxBrew:IsReady(\"player\") and A.PurifyingBrew:GetSpellChargesFrac() < 0.5 then\n            return A.BlackOxBrew:Show(icon)\n        end\n        \n        --# Offensively, the APL prioritizes KS on cleave, BoS else, with energy spenders and cds sorted below\n        --actions+=/keg_smash,if=spell_targets>=2\n        if A.KegSmash:IsReady(unit) and MultiUnits:GetByRange(10, 3) >= 2 then\n            return A.KegSmash:Show(icon)\n        end\n        \n        --actions+=/faeline_stomp,if=spell_targets>=2\n        if A.FaelineStomp:IsReady(unit) and MultiUnits:GetByRange(10, 3) >= 2 then\n            return A.FaelineStomp:Show(icon)\n        end\n        \n        --# cast KS at top prio during WoO buff\n        --actions+=/keg_smash,if=buff.weapons_of_order.up\n        if A.KegSmash:IsReady(unit) and Unit(\"player\"):HasBuffs(A.WeaponsofOrder.ID, true) > 0 then\n            return A.KegSmash:Show(icon)\n        end\n        \n        --# Celestial Brew priority whenever it took significant damage (adjust the health.max coefficient according to intensity of damage taken), and to dump excess charges before BoB.\n        --actions+=/celestial_brew,if=buff.blackout_combo.down&incoming_damage_1999ms>(health.max*0.1+stagger.last_tick_damage_4)&buff.elusive_brawler.stack<2\n        if A.CelestialBrew:IsReady(\"player\") and (Unit(\"player\"):HasBuffs(A.BlackoutComboBuff.ID, true) > 0 or not A.BlackoutCombo:IsTalentLearned()) and Unit(\"player\"):GetRealTimeDMG(2) > ((Unit(\"player\"):HealthMax() * 0.1) + BrewmasterTools.GetStaggerLevel(next_tick)) and Unit(\"player\"):HasBuffsStacks(A.ElusiveBrawlerBuff.ID, true) < 2 then\n            return A.CelestialBrew:Show(icon)\n        end\n        \n        --actions+=/tiger_palm,if=talent.rushing_jade_wind.enabled&buff.blackout_combo.up&buff.rushing_jade_wind.up\n        if A.TigerPalm:IsReady(unit) and A.RushingJadeWind:IsTalentLearned() and Unit(\"player\"):HasBuffs(A.BlackoutComboBuff.ID, true) > 0 and Unit(\"player\"):HasBuffs(A.RushingJadeWind.ID, true) > 0 then    \n            return A.TigerPalm:Show(icon)\n        end\n        \n        --actions+=/breath_of_fire,if=buff.charred_passions.down&runeforge.charred_passions.equipped\n        if A.BreathofFire:IsReady(unit) and Unit(\"player\"):HasBuffs(A.CharredPassionsBuff.ID, true) == 0 and A.CharredPassions:HasLegendaryCraftingPower() then\n            return A.BreathofFire:Show(icon)\n        end\n        \n        --actions+=/blackout_kick\n        if A.BlackoutKick:IsReady(unit) then\n            return A.BlackoutKick:Show(icon)\n        end\n        \n        --actions+=/keg_smash\n        if A.KegSmash:IsReady(unit) then\n            return A.KegSmash:Show(icon)\n        end\n        \n        --actions+=/faeline_stomp\n        if A.FaelineStomp:IsReady(unit) then\n            return A.FaelineStomp:Show(icon)\n        end\n        \n        --actions+=/expel_harm,if=buff.gift_of_the_ox.stack>=3\n        if A.ExpelHarm:IsReady(\"player\") and Unit(\"player\"):HasBuffsStacks(A.GiftoftheOx.ID, true) >= 3 then\n            return A.ExpelHarm:Show(icon)\n        end\n        \n        --actions+=/rushing_jade_wind,if=buff.rushing_jade_wind.down\n        if A.RushingJadeWind:IsReady(\"player\") and Unit(\"player\"):HasBuffs(A.RushingJadeWind.ID, true) == 0 then\n            return A.RushingJadeWind:Show(icon)\n        end\n        \n        --actions+=/spinning_crane_kick,if=buff.charred_passions.up\n        if A.SpinningCraneKick:IsReady(\"player\") and Unit(\"player\"):HasBuffs(A.CharredPassionsBuff.ID, true) > 0 then\n            return A.SpinningCraneKick:Show(icon)\n        end\n        \n        --actions+=/breath_of_fire,if=buff.blackout_combo.down&(buff.bloodlust.down|(buff.bloodlust.up&dot.breath_of_fire_dot.refreshable))\n        if A.BreathofFire:IsReady(unit) and Unit(\"player\"):HasBuffs(A.BlackoutComboBuff.ID, true) == 0 then\n            return A.BreathofFire:Show(icon)\n        end\n        \n        --actions+=/chi_burst\n        if A.ChiBurst:IsReady(unit) then\n            return A.ChiBurst:Show(icon)\n        end\n        \n        --actions+=/chi_wave\n        if A.ChiWave:IsReady(unit) then\n            return A.ChiWave:Show(icon)\n        end\n        --actions+=/spinning_crane_kick,if=active_enemies>=3&cooldown.keg_smash.remains>gcd&(energy+(energy.regen*(cooldown.keg_smash.remains+execute_time)))>=65&(!talent.spitfire.enabled|!runeforge.charred_passions.equipped)\n        if A.SpinningCraneKick:IsReady(\"player\") and MultiUnits:GetByRange(10, 4) >= 3 and A.KegSmash:GetCooldown() > GetGCD() and (Player:Energy() + (Player:EnergyRegen() * (A.KegSmash:GetCooldown() + Unit(\"target\"):TimeToDieX(15)))) >= 65 and (not A.Spitfire:IsTalentLearned() or not A.CharredPassions:HasLegendaryCraftingPower()) then\n            return A.SpinningCraneKick:Show(icon)\n        end\n        \n        --actions+=/tiger_palm,if=!talent.blackout_combo&cooldown.keg_smash.remains>gcd&(energy+(energy.regen*(cooldown.keg_smash.remains+gcd)))>=65\n        if A.TigerPalm:IsReady(unit) and not A.BlackoutCombo:IsTalentLearned() and A.KegSmash:GetCooldown() > GetGCD() and (Player:Energy() + (Player:EnergyRegen() * (A.KegSmash:GetCooldown() + GetGCD()))) >= 65 then\n            return A.TigerPalm:Show(icon)\n        end\n        \n        --actions+=/arcane_torrent,if=energy<31\n        if A.ArcaneTorrent:IsReady(\"player\") and Player:Energy() < 31 then\n            return A.ArcaneTorrent:Show(icon)\n        end\n        \n        --actions+=/rushing_jade_wind\n        if A.RushingJadeWind:IsReady(\"player\") then\n            return A.RushingJadeWind:Show(icon)\n        end\n        \n    end        \nend\n--Finished",
				}, -- [6]
				{
					["Name"] = "Prediction Healing",
					["Code"] = "local _G, math, error, type, pairs    = _G, math, error, type, pairs\nlocal math_ceil                        = math.ceil\nlocal math_max                        = math.max\nlocal math_min                        = math.min\n\nlocal TMW                             = _G.TMW\n\nlocal A                             = _G.Action\nlocal CONST                         = A.Const\nlocal Print                            = A.Print\nlocal toStr                         = A.toStr\nlocal HealingEngine                    = A.HealingEngine\nlocal Unit                             = A.Unit \nlocal GetCurrentGCD                    = A.GetCurrentGCD\nlocal GetSpellDescription            = A.GetSpellDescription\nlocal GetToggle                        = A.GetToggle\nlocal GetLatency                    = A.GetLatency\n\nlocal HealingEngineIsManaSave        = HealingEngine.IsManaSave\n\nlocal MW                             = A[CONST.MONK_MISTWEAVER]\n\nlocal UnitIsUnit                    = _G.UnitIsUnit\n\nlocal function UnitIsSoothingMisting(unitID)\n    return A.IamHealer and Unit(\"player\"):IsCastingRemains(MW.SoothingMist.ID) > 0 and Unit(unitID):HasBuffs(MW.SoothingMist.ID, true, true) > 0\nend \n\nlocal function GetHealingModifier(unitID, castTime, skipEnvelopingMist)\n    local extraHealModifier, envelopingMistDuration, domeofMistBuffDuration  = 1, 0, 0\n    if A.IamHealer then \n        envelopingMistDuration = Unit(unitID):HasBuffs(MW.EnvelopingMist.ID, true)\n        if not skipEnvelopingMist and envelopingMistDuration > castTime + GetLatency() then \n            extraHealModifier = extraHealModifier * (1 + (MW.EnvelopingMist:GetSpellDescription()[2] / 100))\n        end \n        \n        if UnitIsUnit(unitID, \"player\") then \n            domeofMistBuffDuration = Unit(unitID):HasBuffs(MW.DomeofMistBuff.ID, true)\n            if domeofMistBuffDuration > castTime + GetLatency() then \n                extraHealModifier = extraHealModifier * 1.3\n            end \n        end \n    end \n    \n    return extraHealModifier, envelopingMistDuration, domeofMistBuffDuration\nend \n\nfunction A:PredictHeal(unitID, variation, isClear) \n    -- @usage obj:PredictHeal(unitID[, variation[, isClear]]) \n    -- @return boolean, number \n    -- Returns:\n    -- [1] true if action can be used\n    -- [2] total amount of predicted missed health \n    \n    -- Any healing spell can be applied     \n    if Unit(unitID):IsPenalty() then\n        return true, 0\n    end     \n    \n    local PO = GetToggle(8, \"PredictOptions\")\n    -- PO[1] incHeal\n    -- PO[2] incDMG\n    -- PO[3] threat -- not usable in prediction\n    -- PO[4] HoTs\n    -- PO[5] absorbPossitive\n    -- PO[6] absorbNegative\n    local defaultVariation, isManaSave\n    local variation = variation or 1\n    if not isClear and A.IamHealer and HealingEngineIsManaSave(unitID) then \n        isManaSave = true \n        defaultVariation = variation\n        variation = math_max(variation - 1 + GetToggle(8, \"ManaManagementPredictVariation\"), 1)        \n    end \n    \n    -- Shared \n    if self.predictName == \"Vivify\" then \n        local desc = self:GetSpellDescription()\n        local castTime = self:GetSpellCastTime()\n        \n        -- Add current GCD to pre-pare \n        if castTime > 0 then \n            castTime = castTime + GetCurrentGCD()\n        end \n        \n        -- Re-calculate variation depends on mana savers\n        if isManaSave then \n            if Unit(\"player\"):HasBuffs(MW.ManaTea.ID, true) > castTime then \n                -- Make variation half if we have buff up ManaTea \n                variation = math_max(variation / 2, 1)\n            end \n        end \n        \n        local incHeal, incDMG, HoTs, absorbPossitive, absorbNegative = 0, 0, 0, 0, 0\n        if PO[1] and castTime > 0 then \n            incHeal = Unit(unitID):GetIncomingHeals()\n        end \n        \n        if PO[2] and castTime > 0 then \n            incDMG = Unit(unitID):GetDMG() * castTime\n        end \n        \n        if PO[4] and castTime > 0 then -- 4 here!\n            HoTs = Unit(unitID):GetHEAL() * castTime\n        end \n        \n        if PO[5] then \n            absorbPossitive = Unit(unitID):GetAbsorb()\n            -- Better don't touch it, not tested anyway\n            if absorbPossitive >= Unit(unitID):HealthDeficit() then \n                absorbPossitive = 0\n            end \n        end \n        \n        if PO[6] then \n            absorbNegative = Unit(unitID):GetTotalHealAbsorbs()\n        end\n        \n        local extraHealModifier = GetHealingModifier(unitID, castTime)\n        \n        local withoutOptions = desc[1] * extraHealModifier * variation\n        local total = withoutOptions + incHeal - incDMG + HoTs + absorbPossitive - absorbNegative\n        \n        return Unit(unitID):HealthDeficit() >= total, total   \n    end \n    \n    if self.predictName == \"ChiBurst\" then \n        local desc = self:GetSpellDescription()\n        local castTime = self:GetSpellCastTime()\n        \n        -- Add current GCD to pre-pare \n        if castTime > 0 then \n            castTime = castTime + GetCurrentGCD()\n        end \n        \n        -- Re-calculate variation depends on mana savers\n        if isManaSave then \n            if Unit(\"player\"):HasBuffs(MW.ManaTea.ID, true) > castTime then \n                -- Make variation half if we have buff up ManaTea \n                variation = math_max(variation / 2, 1)\n            end \n        end \n        \n        local incHeal, incDMG, HoTs, absorbPossitive, absorbNegative = 0, 0, 0, 0, 0\n        if PO[1] and castTime > 0 then \n            incHeal = Unit(unitID):GetIncomingHeals()\n        end \n        \n        if PO[2] and castTime > 0 then \n            incDMG = Unit(unitID):GetDMG() * castTime\n        end \n        \n        if PO[4] and castTime > 0 then -- 4 here!\n            HoTs = Unit(unitID):GetHEAL() * castTime\n        end \n        \n        if PO[5] then \n            absorbPossitive = Unit(unitID):GetAbsorb()\n            -- Better don't touch it, not tested anyway\n            if absorbPossitive >= Unit(unitID):HealthDeficit() then \n                absorbPossitive = 0\n            end \n        end \n        \n        if PO[6] then \n            absorbNegative = Unit(unitID):GetTotalHealAbsorbs()\n        end\n        \n        local extraHealModifier = GetHealingModifier(unitID, castTime)\n        \n        local withoutOptions = desc[1] * extraHealModifier * variation\n        local total = withoutOptions + incHeal - incDMG + HoTs + absorbPossitive - absorbNegative\n        \n        return Unit(unitID):HealthDeficit() >= total, total    \n    end\n    \n    if self.predictName == \"ChiWave\" then \n        local desc = self:GetSpellDescription()\n        \n        -- Re-calculate variation depends on mana savers\n        if isManaSave then \n            if Unit(\"player\"):HasBuffs(MW.ManaTea.ID, true) > GetCurrentGCD() + GetLatency() then \n                -- Make variation half if we have buff up ManaTea \n                variation = math_max(variation / 2, 1)\n            end \n        end \n        \n        local absorbPossitive, absorbNegative = 0, 0\n        if PO[5] then \n            absorbPossitive = Unit(unitID):GetAbsorb()\n            -- Better don't touch it, not tested anyway\n            if absorbPossitive >= Unit(unitID):HealthDeficit() then \n                absorbPossitive = 0\n            end \n        end \n        \n        if PO[6] then \n            absorbNegative = Unit(unitID):GetTotalHealAbsorbs()\n        end\n        \n        local extraHealModifier = GetHealingModifier(unitID, 0)\n        \n        local withoutOptions = desc[1] * extraHealModifier * variation\n        local total = withoutOptions + absorbPossitive - absorbNegative\n        \n        return Unit(unitID):HealthDeficit() >= total, total\n    end \n    \n    -- BrewMaster\n    if self.predictName == \"ExpelHarm\" then   \n        local desc = GetSpellDescription(124502)\n        \n        local absorbPossitive, absorbNegative = 0, 0\n        if PO[5] then \n            absorbPossitive = Unit(unitID):GetAbsorb()\n            -- Better don't touch it, not tested anyway\n            if absorbPossitive >= Unit(unitID):HealthDeficit() then \n                absorbPossitive = 0\n            end \n        end \n        \n        if PO[6] then \n            absorbNegative = Unit(unitID):GetTotalHealAbsorbs()\n        end\n        \n        local withoutOptions = desc[1] * variation\n        local total = withoutOptions + absorbPossitive - absorbNegative\n        \n        return Unit(unitID):HealthDeficit() >= total, total          \n    end     \n    \n    -- Mistweaver \n    if self.predictName == \"Revival\" then \n        local desc = self:GetSpellDescription()\n        \n        -- Re-calculate variation depends on mana savers\n        if isManaSave then \n            if Unit(\"player\"):HasBuffs(MW.ManaTea.ID, true) > GetCurrentGCD() + GetLatency() then \n                -- Make variation half if we have buff up ManaTea \n                variation = math_max(variation / 2, 1)\n            end \n        end \n        \n        local absorbPossitive, absorbNegative = 0, 0\n        if PO[5] then \n            absorbPossitive = Unit(unitID):GetAbsorb()\n            -- Better don't touch it, not tested anyway\n            if absorbPossitive >= Unit(unitID):HealthDeficit() then \n                absorbPossitive = 0\n            end \n        end \n        \n        if PO[6] then \n            absorbNegative = Unit(unitID):GetTotalHealAbsorbs()\n        end\n        \n        local extraHealModifier = GetHealingModifier(unitID, 0)\n        \n        local withoutOptions = desc[1] * extraHealModifier * variation\n        local total = withoutOptions + absorbPossitive - absorbNegative\n        \n        return Unit(unitID):HealthDeficit() >= total, total \n    end     \n    \n    if self.predictName == \"InvokeChiJitheRedCrane\" then     \n        local desc = self:GetSpellDescription()\n        \n        -- Re-calculate variation depends on mana savers\n        if isManaSave then \n            if Unit(\"player\"):HasBuffs(MW.ManaTea.ID, true) > GetCurrentGCD() + GetLatency() then \n                -- Make variation half if we have buff up ManaTea \n                variation = math_max(variation / 2, 1)\n            end \n        end \n        \n        local absorbPossitive, absorbNegative = 0, 0\n        if PO[5] then \n            absorbPossitive = Unit(unitID):GetAbsorb()\n            -- Better don't touch it, not tested anyway\n            if absorbPossitive >= Unit(unitID):HealthDeficit() then \n                absorbPossitive = 0\n            end \n        end \n        \n        if PO[6] then \n            absorbNegative = Unit(unitID):GetTotalHealAbsorbs()\n        end\n        \n        local withoutOptions = desc[1] * variation -- This spell doesn't scales on healing modifiers!\n        local total = withoutOptions + absorbPossitive - absorbNegative\n        \n        return Unit(unitID):HealthDeficit() >= total, total \n    end     \n    \n    if self.predictName == \"EssenceFont\" then \n        local desc             = self:GetSpellDescription()\n        local castTime         = desc[6]\n        \n        local shards           = math_ceil(castTime / desc[7])    \n        local shardHeal        = desc[1]\n        local shardsHeal     = shardHeal * shards\n        \n        local durationHoT     = desc[4] \n        local healHoT        = desc[2]\n        local perTickHoT    = healHoT / durationHoT\n        \n        -- Add current GCD to pre-pare \n        if castTime > 0 then \n            castTime = castTime + GetCurrentGCD()\n        end\n        \n        -- Re-calculate variation depends on mana savers\n        if isManaSave then \n            if Unit(\"player\"):HasBuffs(MW.ManaTea.ID, true) > GetCurrentGCD() + GetLatency() then -- GetCurrentGCD() + GetLatency() here because it's channeling\n                -- Make variation half if we have buff up ManaTea \n                variation = math_max(variation / 2, 1)\n            end \n        end \n        \n        local incHeal, incDMG, HoTs, absorbPossitive, absorbNegative = 0, 0, 0, 0, 0\n        if PO[1] and castTime > 0 then \n            incHeal = Unit(unitID):GetIncomingHeals()\n        end \n        \n        if PO[2] and castTime > 0 then \n            incDMG = Unit(unitID):GetDMG() * castTime\n        end \n        \n        if PO[4] and castTime > 0 then -- 4 here!\n            HoTs = Unit(unitID):GetHEAL() * castTime\n        end \n        \n        if PO[5] then \n            absorbPossitive = Unit(unitID):GetAbsorb()\n            -- Better don't touch it, not tested anyway\n            if absorbPossitive >= Unit(unitID):HealthDeficit() then \n                absorbPossitive = 0\n            end \n        end \n        \n        if PO[6] then \n            absorbNegative = Unit(unitID):GetTotalHealAbsorbs()\n        end \n        \n        local extraHealModifier, envelopingMistDuration, domeofMistBuffDuration = GetHealingModifier(unitID, castTime)\n        \n        -- Modifiers of HoT \n        -- Note: Would be good to know how game scales few multipliers on different expire, probably it taking source clear input and then summup\n        local lifeCocoon = Unit(unitID):HasBuffs(MW.LifeCocoon.ID, true)\n        if lifeCocoon > 0 then \n            local mod                 = 1.5\n            lifeCocoon                 = math_min(lifeCocoon, durationHoT)    -- cut off longer extra duration\n            healHoT                 = healHoT + math_max((perTickHoT * mod * lifeCocoon) - perTickHoT, perTickHoT * mod * lifeCocoon) -- summup\n            --perTickHoT            = healHoT / durationHoT -- refresh\n        end \n        \n        if envelopingMistDuration > 0 then \n            local mod                 = 1 + (MW.EnvelopingMist:GetSpellDescription()[2] / 100)\n            envelopingMistDuration  = math_min(envelopingMistDuration, durationHoT) -- cut off longer extra duration\n            healHoT                 = healHoT + math_max(((perTickHoT * mod * envelopingMistDuration) - perTickHoT), perTickHoT * mod * envelopingMistDuration) -- summup\n            --perTickHoT            = healHoT / durationHoT -- refresh\n        end \n        \n        if domeofMistBuffDuration > 0 then -- self is checked by GetHealingModifier\n            local mod                 = 1.3\n            domeofMistBuffDuration     = math_min(domeofMistBuffDuration, durationHoT) -- cut off longer extra duration\n            healHoT                 = healHoT + math_max(((perTickHoT * mod * domeofMistBuffDuration) - perTickHoT), perTickHoT * mod * domeofMistBuffDuration) -- summup\n            --perTickHoT            = healHoT / durationHoT -- refresh\n        end \n        \n        local withoutOptions = ((shardsHeal * extraHealModifier) + healHoT) * variation\n        local total = withoutOptions + incHeal - incDMG + HoTs + absorbPossitive - absorbNegative \n        -- We will count shorter castTime isntead of full duration since incDMG or HoTs can be so large\n        \n        return Unit(unitID):HealthDeficit() >= total, total\n    end \n    \n    if self.predictName == \"EnvelopingMist\" then \n        if not isClear and A.IamHealer then \n            local limitHP = GetToggle(2, \"EnvelopingMistHP\")\n            if limitHP < 100 and Unit(unitID):HealthPercent() > limitHP then \n                return false, 0\n            end \n        end     \n        \n        local desc = self:GetSpellDescription()\n        local castTime = UnitIsSoothingMisting(unitID) and 0 or self:GetSpellCastTime()\n        local fullHeal = desc[1]\n        local duration = desc[3]\n        \n        -- Add current GCD to pre-pare \n        if castTime > 0 then \n            castTime = castTime + GetCurrentGCD()\n        end \n        \n        -- Re-calculate variation depends on mana savers\n        if isManaSave then \n            if Unit(\"player\"):HasBuffs(MW.ManaTea.ID, true) > castTime then\n                -- Make variation half if we have buff up ManaTea \n                variation = math_max(variation / 2, 1)\n            end \n        end \n        \n        local incHeal, incDMG, HoTs, absorbPossitive, absorbNegative = 0, 0, 0, 0, 0\n        if PO[1] and castTime > 0 then \n            incHeal = Unit(unitID):GetIncomingHeals()\n        end \n        \n        if PO[2] then \n            incDMG = Unit(unitID):GetDMG() * ((castTime + duration) / 2)\n        end \n        \n        if PO[4] then -- 4 here!\n            HoTs = Unit(unitID):GetHEAL() * ((castTime + duration) / 2)\n        end \n        \n        if PO[5] then \n            absorbPossitive = Unit(unitID):GetAbsorb()\n            -- Better don't touch it, not tested anyway\n            if absorbPossitive >= Unit(unitID):HealthDeficit() then \n                absorbPossitive = 0\n            end \n        end \n        \n        if PO[6] then \n            absorbNegative = Unit(unitID):GetTotalHealAbsorbs()\n        end \n        \n        local extraHealInstant = MW.Mastery:GetSpellDescription()[1]\n        if Unit(\"player\"):HasBuffs(MW.ThunderFocusTea.ID, true) > 0 then \n            extraHealInstant = extraHealInstant + MW.ThunderFocusTea:GetSpellDescription()[1]\n        end \n        \n        local extraHealModifier = GetHealingModifier(unitID, castTime, true)\n        \n        -- Modifier of HoT\n        local lifeCocoon = Unit(unitID):HasBuffs(MW.LifeCocoon.ID, true)\n        if lifeCocoon > 0 then \n            local mod                 = 1.5\n            lifeCocoon                 = math_min(lifeCocoon, duration)    -- cut off longer extra duration\n            fullHeal                 = fullHeal + math_max((fullHeal * mod * lifeCocoon) - fullHeal, fullHeal * mod * lifeCocoon) -- summup\n        end \n        \n        local withoutOptions = (fullHeal + extraHealInstant) * extraHealModifier * variation\n        local total = withoutOptions + incHeal - incDMG + HoTs + absorbPossitive - absorbNegative\n        -- We will count average castTime + duration \n        \n        return Unit(unitID):HealthDeficit() >= total, total\n    end \n    \n    if self.predictName == \"SurgingMist\" then \n        if not isClear and A.IamHealer then \n            local limitHP = GetToggle(2, \"SurgingMistHP\")\n            if limitHP < 100 and Unit(unitID):HealthPercent() > limitHP then \n                return false, 0\n            end \n        end     \n        \n        local desc = self:GetSpellDescription()\n        local castTime = UnitIsSoothingMisting(unitID) and 0 or self:GetSpellCastTime()\n        \n        -- Add current GCD to pre-pare \n        if castTime > 0 then \n            castTime = castTime + GetCurrentGCD()\n        end \n        \n        -- Re-calculate variation depends on mana savers\n        if isManaSave then \n            if Unit(\"player\"):HasBuffs(MW.ManaTea.ID, true) > castTime then\n                -- Make variation half if we have buff up ManaTea \n                variation = math_max(variation / 2, 1)\n            end \n        end \n        \n        local incHeal, incDMG, HoTs, absorbPossitive, absorbNegative = 0, 0, 0, 0, 0\n        if PO[1] and castTime > 0 then \n            incHeal = Unit(unitID):GetIncomingHeals()\n        end \n        \n        if PO[2] and castTime > 0 then \n            incDMG = Unit(unitID):GetDMG() * castTime\n        end \n        \n        if PO[4] and castTime > 0 then -- 4 here!\n            HoTs = Unit(unitID):GetHEAL() * castTime\n        end \n        \n        if PO[5] then \n            absorbPossitive = Unit(unitID):GetAbsorb()\n            -- Better don't touch it, not tested anyway\n            if absorbPossitive >= Unit(unitID):HealthDeficit() then \n                absorbPossitive = 0\n            end \n        end \n        \n        if PO[6] then \n            absorbNegative = Unit(unitID):GetTotalHealAbsorbs()\n        end \n        \n        local extraHealModifier = GetHealingModifier(unitID, castTime)\n        local stacks = Unit(unitID):HasBuffsStacks(self.ID, true) \n        if stacks > 0 then \n            extraHealModifier = extraHealModifier * (1 + (stacks * 0.5))\n        end \n        \n        local withoutOptions = desc[1] * extraHealModifier * variation\n        local total = withoutOptions + incHeal - incDMG + HoTs + absorbPossitive - absorbNegative\n        \n        return Unit(unitID):HealthDeficit() >= total, total\n    end \n    \n    if self.predictName == \"RefreshingJadeWind\" then \n        local desc = self:GetSpellDescription()\n        local duration = desc[3]\n        \n        -- Re-calculate variation depends on mana savers\n        if isManaSave then \n            if Unit(\"player\"):HasBuffs(MW.ManaTea.ID, true) > GetCurrentGCD() + GetLatency() then\n                -- Make variation half if we have buff up ManaTea \n                variation = math_max(variation / 2, 1)\n            end \n        end \n        \n        local incHeal, incDMG, HoTs, absorbPossitive, absorbNegative = 0, 0, 0, 0, 0\n        if PO[1] then \n            incHeal = Unit(unitID):GetIncomingHeals()\n        end \n        \n        if PO[2] then \n            incDMG = Unit(unitID):GetDMG() * duration\n        end \n        \n        if PO[4] then -- 4 here!\n            HoTs = Unit(unitID):GetHEAL() * duration\n        end \n        \n        if PO[5] then \n            absorbPossitive = Unit(unitID):GetAbsorb()\n            -- Better don't touch it, not tested anyway\n            if absorbPossitive >= Unit(unitID):HealthDeficit() then \n                absorbPossitive = 0\n            end \n        end \n        \n        if PO[6] then \n            absorbNegative = Unit(unitID):GetTotalHealAbsorbs()\n        end \n        \n        local extraHealModifier = GetHealingModifier(unitID, 0)\n        \n        local withoutOptions = desc[1] * extraHealModifier * variation\n        local total = withoutOptions + incHeal - incDMG + HoTs + absorbPossitive - absorbNegative\n        \n        return Unit(unitID):HealthDeficit() >= total, total\n    end \n    \n    if self.predictName == \"RenewingMist\" then \n        local desc = self:GetSpellDescription()\n        local fullHeal = desc[1]\n        local duration = desc[3] - (Unit(\"player\"):HasBuffs(MW.ThunderFocusTea.ID, true) > GetCurrentGCD() + GetLatency() and 10 or 0) -- avoid issues\n        \n        -- Re-calculate variation depends on mana savers\n        if isManaSave then \n            if Unit(\"player\"):HasBuffs(MW.ManaTea.ID, true) > GetCurrentGCD() + GetLatency() then\n                -- Make variation half if we have buff up ManaTea \n                variation = math_max(variation / 2, 1)\n            end \n        end \n        \n        local incHeal, incDMG, HoTs, absorbPossitive, absorbNegative = 0, 0, 0, 0, 0\n        if PO[1] then \n            incHeal = Unit(unitID):GetIncomingHeals()\n        end \n        \n        if PO[2] then \n            incDMG = Unit(unitID):GetDMG() * (duration / 2)\n        end \n        \n        if PO[4] then -- 4 here!\n            HoTs = Unit(unitID):GetHEAL() * (duration / 2)\n        end \n        \n        if PO[5] then \n            absorbPossitive = Unit(unitID):GetAbsorb()\n            -- Better don't touch it, not tested anyway\n            if absorbPossitive >= Unit(unitID):HealthDeficit() then \n                absorbPossitive = 0\n            end \n        end \n        \n        if PO[6] then \n            absorbNegative = Unit(unitID):GetTotalHealAbsorbs()\n        end \n        \n        local extraHealInstant = MW.Mastery:GetSpellDescription()[1]\n        \n        local extraHealModifier = GetHealingModifier(unitID, 0)\n        -- Modifier of HoT\n        local lifeCocoon = Unit(unitID):HasBuffs(MW.LifeCocoon.ID, true)\n        if lifeCocoon > 0 then \n            local mod                 = 1.5\n            lifeCocoon                 = math_min(lifeCocoon, duration)    -- cut off longer extra duration\n            fullHeal                 = fullHeal + math_max((fullHeal * mod * lifeCocoon) - fullHeal, fullHeal * mod * lifeCocoon) -- summup\n        end \n        \n        local withoutOptions = (fullHeal + extraHealInstant) * extraHealModifier * variation\n        local total = withoutOptions + incHeal - incDMG + HoTs + absorbPossitive - absorbNegative\n        -- We will count average duration \n        \n        return Unit(unitID):HealthDeficit() >= total, total\n    end \n    \n    if self.predictName == \"SoothingMist\" then\n        -- No toggle check here!\n        local desc = self:GetSpellDescription()\n        local fullHeal = desc[1]\n        local duration = desc[2]\n        local castTime = duration\n        \n        -- Add current GCD to pre-pare \n        if castTime > 0 then \n            castTime = castTime + GetCurrentGCD()\n        end \n        \n        -- Re-calculate variation depends on mana savers\n        if isManaSave then \n            if Unit(\"player\"):HasBuffs(MW.ManaTea.ID, true) > GetCurrentGCD() + GetLatency() then -- GetCurrentGCD() + GetLatency() here because it's channeling\n                -- Make variation half if we have buff up ManaTea \n                variation = math_max(variation / 2, 1)\n            end \n        end \n        \n        local incHeal, incDMG, HoTs, absorbPossitive, absorbNegative = 0, 0, 0, 0, 0\n        if PO[1] then \n            incHeal = Unit(unitID):GetIncomingHeals()\n        end \n        \n        if PO[2] then \n            incDMG = Unit(unitID):GetDMG() * (duration / 3) -- We will count 33% duration\n        end \n        \n        if PO[4] then -- 4 here!\n            HoTs = Unit(unitID):GetHEAL() * (duration / 3) -- We will count 33% duration \n        end  \n        \n        if PO[5] then \n            absorbPossitive = Unit(unitID):GetAbsorb()\n            -- Better don't touch it, not tested anyway\n            if absorbPossitive >= Unit(unitID):HealthDeficit() then \n                absorbPossitive = 0\n            end \n        end \n        \n        if PO[6] then \n            absorbNegative = Unit(unitID):GetTotalHealAbsorbs()\n        end \n        \n        local _, envelopingMistDuration, domeofMistBuffDuration = GetHealingModifier(unitID, 0)\n        -- Modifier of HoT\n        local lifeCocoon = Unit(unitID):HasBuffs(MW.LifeCocoon.ID, true)\n        if lifeCocoon > 0 then \n            local mod                 = 1.5\n            lifeCocoon                 = math_min(lifeCocoon, duration)             -- cut off longer extra duration\n            fullHeal                 = fullHeal + math_max((fullHeal * mod * lifeCocoon) - fullHeal, fullHeal * mod * lifeCocoon) -- summup\n        end \n        \n        if envelopingMistDuration > 0 then \n            local mod                 = 1 + (MW.EnvelopingMist:GetSpellDescription()[2] / 100)\n            envelopingMistDuration  = math_min(envelopingMistDuration, duration) -- cut off longer extra duration\n            fullHeal                 = fullHeal + math_max((fullHeal * mod * envelopingMistDuration) - fullHeal, fullHeal * mod * envelopingMistDuration) -- summup\n        end \n        \n        if domeofMistBuffDuration > 0 then -- self is checked by GetHealingModifier\n            local mod                 = 1.3\n            domeofMistBuffDuration     = math_min(domeofMistBuffDuration, duration) -- cut off longer extra duration\n            fullHeal                 = fullHeal + math_max((fullHeal * mod * domeofMistBuffDuration) - fullHeal, fullHeal * mod * domeofMistBuffDuration) -- summup\n        end \n        \n        local withoutOptions = fullHeal * variation\n        local total = withoutOptions + incHeal - incDMG + HoTs + absorbPossitive - absorbNegative        \n        \n        return Unit(unitID):HealthDeficit() >= total, total\n    end \n    \n    -- Debug \n    if not self.predictName then \n        error((self:GetKeyName() or \"Unknown action name\") .. \" doesn't contain predictName\")        \n    end \n    \n    return false, 0\n    \n    --[[ Old\n    if NAME == \"EssenceFont\" then \n        local pre_heal = Unit(UNIT):GetIncomingHeals()  or 0\n        local description = self:GetSpellDescription()\n        local cast_time = description[6] or 0\n        local duration = description[4] or 0\n        local tick = description[1] or 0\n        local hot_tick = description[2] / duration\n        local counter_ticks = math_ceil(cast_time / 0.9)\n        local summary_hot_ticks = hot_tick * 0.9 * counter_ticks\n        local cached_summary_hot_ticks = summary_hot_ticks\n        if LifeCocoon_duration > 0 then \n            if LifeCocoon_duration >= cast_time then \n                LifeCocoon_duration = cast_time\n            end \n            summary_hot_ticks = (cached_summary_hot_ticks / cast_time * (cast_time - LifeCocoon_duration)) + (cached_summary_hot_ticks / cast_time * LifeCocoon_variation * LifeCocoon_duration)\n        end \n        if EnvelopingMist_duration > 0 then \n            if EnvelopingMist_duration >= cast_time then \n                EnvelopingMist_duration = cast_time\n            end \n            summary_hot_ticks = summary_hot_ticks + ((cached_summary_hot_ticks / cast_time * (cast_time - EnvelopingMist_duration)) + (cached_summary_hot_ticks / cast_time * EnvelopingMist_variation * EnvelopingMist_duration) - summary_hot_ticks)\n        end \n        -- While casting\n        local summary = (tick * EnvelopingMist_variation * counter_ticks) + summary_hot_ticks\n        -- After casting\n        local remain_duration = duration - cast_time\n        local summary_remain_hot = hot_tick * remain_duration \n        if LifeCocoon_duration - cast_time > 0 then \n            LifeCocoon_duration = LifeCocoon_duration - cast_time\n            if LifeCocoon_duration >= remain_duration then \n                LifeCocoon_duration = remain_duration\n            end \n            summary_remain_hot = (hot_tick * (remain_duration - LifeCocoon_duration)) + (hot_tick * LifeCocoon_variation * LifeCocoon_duration)\n        end \n        if EnvelopingMist_duration - cast_time > 0 then \n            EnvelopingMist_duration = EnvelopingMist_duration - cast_time\n            if EnvelopingMist_duration >= remain_duration then \n                EnvelopingMist_duration = remain_duration\n            end \n            summary_remain_hot = summary_remain_hot + ((hot_tick * (remain_duration - EnvelopingMist_duration)) + (hot_tick * EnvelopingMist_variation * EnvelopingMist_duration) - summary_remain_hot)\n        end         \n\n        local cast = cast_time + A.GetCurrentGCD()\n        total = (summary + summary_remain_hot) * variation + pre_heal + (HPS * cast) - (DMG * cast)     \n    end]]\nend\n\nfunction A.DebugPredictHeal(unitID)\n    if unitID and A[A.PlayerSpec] then \n        local bool, total \n        for _, action in pairs(A[A.PlayerSpec]) do \n            if type(action) == \"table\" and action.predictName then \n                bool, total = action:PredictHeal(unitID)\n                Print(action.predictName .. \": \" .. toStr[bool] .. \", \" .. Unit(unitID):HealthDeficit() .. \" >= \" .. total)\n            end \n        end \n    end \nend \n\n\n\n",
				}, -- [7]
				["n"] = 7,
			},
			["Version"] = 90301,
			["Groups"] = {
				{
					["TimerBar_MiddleColor"] = "ff000000",
					["Scale"] = 0.600000023841858,
					["TimerBar_CompleteColor"] = "ff000000",
					["TimerBar_StartColor"] = "ff000000",
					["Locked"] = true,
					["GUID"] = "TMW:group:1Rhh0xLqd4g8",
					["Columns"] = 8,
					["Name"] = "Shown Main",
					["Icons"] = {
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1T0KeNg=IDQd", -- [1]
							},
							["Enabled"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1T0KeNh2uwMT", -- [1]
							},
							["Enabled"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1T0Kg0ZzHksM", -- [1]
							},
							["Enabled"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["GUID"] = "TMW:icon:1T0MjrGnynSL",
						}, -- [3]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1T0Kg0a1tFci", -- [1]
							},
							["Enabled"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["GUID"] = "TMW:icon:1T0NdouSxYDb",
						}, -- [4]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1T0Kg0a6eYf9", -- [1]
							},
							["Enabled"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1T0Kg0aBPYen", -- [1]
							},
							["Enabled"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1T0Kg0aG1oeM", -- [1]
							},
							["Enabled"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1T0Kg0aKbPUI", -- [1]
							},
							["Enabled"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [11]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [12]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [13]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [14]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [15]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [16]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [17]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [18]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [19]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [20]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [21]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [22]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [23]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [24]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [25]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [26]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [27]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [28]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [29]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [30]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [31]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [32]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [33]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [34]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [35]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [36]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [37]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [38]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [39]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [40]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [41]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [42]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [43]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [44]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [45]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [46]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [47]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [48]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [49]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [50]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [51]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [52]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [53]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [54]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [55]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [56]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [57]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [58]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [59]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [60]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [61]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [62]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [63]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [64]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [65]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [66]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [67]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [68]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [69]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [70]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [71]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [72]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [73]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [74]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [75]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [76]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [77]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [78]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [79]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [80]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [81]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [82]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [83]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [84]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [85]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [86]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [87]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [88]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [89]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [90]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [91]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [92]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [93]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [94]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [95]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [96]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [97]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [98]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [99]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [100]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [101]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [102]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [103]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [104]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [105]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [106]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [107]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [108]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [109]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [110]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [111]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [112]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [113]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [114]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [115]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [116]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [117]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [118]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [119]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [120]
					},
					["Point"] = {
						["y"] = 12,
						["point"] = "TOPLEFT",
						["relativePoint"] = "TOPLEFT",
						["x"] = -29,
					},
				}, -- [1]
				{
					["TimerBar_MiddleColor"] = "ff000000",
					["Scale"] = 0.600000023841858,
					["TimerBar_CompleteColor"] = "ff000000",
					["TimerBar_StartColor"] = "ff000000",
					["Locked"] = true,
					["GUID"] = "TMW:group:1T0KXe2TsCkW",
					["Columns"] = 8,
					["Name"] = "Hidden APL",
					["Icons"] = {
						{
							["Type"] = "conditionicon",
							["Conditions"] = {
								{
									["Type"] = "LUA",
									["Name"] = "Rotation(thisobj)",
								}, -- [1]
								["n"] = 1,
							},
							["Enabled"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										[2] = "",
									},
								},
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["FakeHidden"] = true,
							["GUID"] = "TMW:icon:1T0KeNg=IDQd",
						}, -- [1]
						{
							["Type"] = "conditionicon",
							["Conditions"] = {
								{
									["Type"] = "LUA",
									["Name"] = "Rotation(thisobj)",
								}, -- [1]
								["n"] = 1,
							},
							["Enabled"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										[2] = "",
									},
								},
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["FakeHidden"] = true,
							["GUID"] = "TMW:icon:1T0KeNh2uwMT",
						}, -- [2]
						{
							["Type"] = "conditionicon",
							["Conditions"] = {
								{
									["Type"] = "LUA",
									["Name"] = "Rotation(thisobj)",
								}, -- [1]
								["n"] = 1,
							},
							["Enabled"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										[2] = "",
									},
								},
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["FakeHidden"] = true,
							["GUID"] = "TMW:icon:1T0Kg0ZzHksM",
						}, -- [3]
						{
							["Type"] = "conditionicon",
							["Conditions"] = {
								{
									["Type"] = "LUA",
									["Name"] = "Rotation(thisobj)",
								}, -- [1]
								["n"] = 1,
							},
							["Enabled"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										[2] = "",
									},
								},
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["FakeHidden"] = true,
							["GUID"] = "TMW:icon:1T0Kg0a1tFci",
						}, -- [4]
						{
							["Type"] = "conditionicon",
							["Conditions"] = {
								{
									["Type"] = "LUA",
									["Name"] = "Rotation(thisobj)",
								}, -- [1]
								["n"] = 1,
							},
							["Enabled"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										[2] = "",
									},
								},
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["FakeHidden"] = true,
							["GUID"] = "TMW:icon:1T0Kg0a6eYf9",
						}, -- [5]
						{
							["Type"] = "conditionicon",
							["Conditions"] = {
								{
									["Type"] = "LUA",
									["Name"] = "Rotation(thisobj)",
								}, -- [1]
								["n"] = 1,
							},
							["Enabled"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										[2] = "",
									},
								},
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["FakeHidden"] = true,
							["GUID"] = "TMW:icon:1T0Kg0aBPYen",
						}, -- [6]
						{
							["Type"] = "conditionicon",
							["Conditions"] = {
								{
									["Type"] = "LUA",
									["Name"] = "Rotation(thisobj)",
								}, -- [1]
								["n"] = 1,
							},
							["Enabled"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										[2] = "",
									},
								},
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["FakeHidden"] = true,
							["GUID"] = "TMW:icon:1T0Kg0aG1oeM",
						}, -- [7]
						{
							["Type"] = "conditionicon",
							["Conditions"] = {
								{
									["Type"] = "LUA",
									["Name"] = "Rotation(thisobj)",
								}, -- [1]
								["n"] = 1,
							},
							["Enabled"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										[2] = "",
									},
								},
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["FakeHidden"] = true,
							["GUID"] = "TMW:icon:1T0Kg0aKbPUI",
						}, -- [8]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [11]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [12]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [13]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [14]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [15]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [16]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [17]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [18]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [19]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [20]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [21]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [22]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [23]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [24]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [25]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [26]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [27]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [28]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [29]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [30]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [31]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [32]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [33]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [34]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [35]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [36]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [37]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [38]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [39]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [40]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [41]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [42]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [43]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [44]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [45]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [46]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [47]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [48]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [49]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [50]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [51]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [52]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [53]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [54]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [55]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [56]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [57]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [58]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [59]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [60]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [61]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [62]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [63]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [64]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [65]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [66]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [67]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [68]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [69]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [70]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [71]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [72]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [73]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [74]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [75]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [76]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [77]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [78]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [79]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [80]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [81]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [82]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [83]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [84]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [85]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [86]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [87]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [88]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [89]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [90]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [91]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [92]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [93]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [94]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [95]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [96]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [97]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [98]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [99]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [100]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [101]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [102]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [103]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [104]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [105]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [106]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [107]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [108]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [109]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [110]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [111]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [112]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [113]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [114]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [115]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [116]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [117]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [118]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [119]
						{
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [120]
					},
					["Point"] = {
						["y"] = 50,
						["point"] = "TOPLEFT",
						["relativePoint"] = "TOPLEFT",
						["x"] = -29.0000038146973,
					},
				}, -- [2]
				{
					["Scale"] = 2.5,
					["Locked"] = true,
					["GUID"] = "TMW:group:1P3cu8AAtSYM",
					["Columns"] = 1,
					["Name"] = "Visible APL",
					["Icons"] = {
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1T0MjrGnynSL", -- [1]
							},
							["Enabled"] = true,
							["Events"] = {
								{
									["Type"] = "Lua",
									["Lua"] = "Action.ToggleMainUI()",
									["OnlyShown"] = true,
									["Event"] = "OnRightClick",
								}, -- [1]
								["n"] = 1,
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["GUID"] = "TMW:icon:1T0MjsTsMtq6",
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [18]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [19]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [20]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [21]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [22]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [23]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [24]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [25]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [26]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [27]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [28]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [29]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [30]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [31]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [32]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [33]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [34]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [35]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [36]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [37]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [38]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [39]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [40]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [41]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [42]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [43]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [44]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [45]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [46]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [47]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [48]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [49]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [50]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [51]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [52]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [53]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [54]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [55]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [56]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [57]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [58]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [59]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [60]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [61]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [62]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [63]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [64]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [65]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [66]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [67]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [68]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [69]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [70]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [71]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [72]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [73]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [74]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [75]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [76]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [77]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [78]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [79]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [80]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [81]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [82]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [83]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [84]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [85]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [86]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [87]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [88]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [89]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [90]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [91]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [92]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [93]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [94]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [95]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [96]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [97]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [98]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [99]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [100]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [101]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [102]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [103]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [104]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [105]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [106]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [107]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [108]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [109]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [110]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [111]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [112]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [113]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [114]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [115]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [116]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [117]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [118]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [119]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [120]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [121]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [122]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [123]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [124]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [125]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [126]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [127]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [128]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [129]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [130]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [131]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [132]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [133]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [134]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [135]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [136]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [137]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [138]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [139]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [140]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [141]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [142]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [143]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [144]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [145]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [146]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [147]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [148]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [149]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [150]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [151]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [152]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [153]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [154]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [155]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [156]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [157]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [158]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [159]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [160]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [161]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [162]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [163]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [164]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [165]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [166]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [167]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [168]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [169]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [170]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [171]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [172]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [173]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [174]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [175]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [176]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [177]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [178]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [179]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [180]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [181]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [182]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [183]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [184]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [185]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [186]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [187]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [188]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [189]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [190]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [191]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [192]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [193]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [194]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [195]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [196]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [197]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [198]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [199]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [200]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [201]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [202]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [203]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [204]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [205]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [206]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [207]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [208]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [209]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [210]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [211]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [212]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [213]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [214]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [215]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [216]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [217]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [218]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [219]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [220]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [221]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [222]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [223]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [224]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [225]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [226]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [227]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [228]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [229]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [230]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [231]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [232]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [233]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [234]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [235]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [236]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [237]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [238]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [239]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [240]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [241]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [242]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [243]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [244]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [245]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [246]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [247]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [248]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [249]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [250]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [251]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [252]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [253]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [254]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [255]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [256]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [257]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [258]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [259]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [260]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [261]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [262]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [263]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [264]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [265]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [266]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [267]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [268]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [269]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [270]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [271]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [272]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [273]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [274]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [275]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [276]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [277]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [278]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [279]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [280]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [281]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [282]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [283]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [284]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [285]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [286]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [287]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [288]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [289]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [290]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [291]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [292]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [293]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [294]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [295]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [296]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [297]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [298]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [299]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [300]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [301]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [302]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [303]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [304]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [305]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [306]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [307]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [308]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [309]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [310]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [311]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [312]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [313]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [314]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [315]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [316]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [317]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [318]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [319]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [320]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [321]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [322]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [323]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [324]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [325]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [326]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [327]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [328]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [329]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [330]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [331]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [332]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [333]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [334]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [335]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [336]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [337]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [338]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [339]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [340]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [341]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [342]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [343]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [344]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [345]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [346]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [347]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [348]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [349]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [350]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [351]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [352]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [353]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [354]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [355]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [356]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [357]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [358]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [359]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [360]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [361]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [362]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [363]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [364]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [365]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [366]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [367]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [368]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [369]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [370]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [371]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [372]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [373]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [374]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [375]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [376]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [377]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [378]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [379]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [380]
					},
					["Conditions"] = {
						{
							["Type"] = "LUA",
							["Name"] = "return not GetToggle(1, \"DisableRotationDisplay\")",
						}, -- [1]
						["n"] = 1,
					},
					["Point"] = {
						["y"] = -3.0517578125e-05,
						["relativeTo"] = "TMW:group:1TMvhh5X05mC",
						["x"] = -0.000244140625,
					},
				}, -- [3]
				{
					["Scale"] = 2.5,
					["Level"] = 11,
					["GUID"] = "TMW:group:1TMvhh5X05mC",
					["Columns"] = 1,
					["Name"] = "Visible APL Layout",
					["Icons"] = {
						{
							["Type"] = "conditionicon",
							["Enabled"] = true,
							["Events"] = {
								{
									["Type"] = "Lua",
									["Lua"] = "if IsShiftKeyDown() then\n    Action.ToggleBurst()\nelseif IsControlKeyDown() then\n    Action.ToggleMode()\nelseif IsAltKeyDown() then\n    Action.ToggleAoE()\nelse\n    Action.PrintHelpToggle()\nend",
									["OnlyShown"] = true,
									["Event"] = "OnLeftClick",
								}, -- [1]
								{
									["Type"] = "Lua",
									["Lua"] = "Action.ToggleMainUI()",
									["OnlyShown"] = true,
									["Event"] = "OnRightClick",
								}, -- [2]
								["n"] = 2,
							},
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1TMvg5InaYOw",
									["Texts"] = {
										"[ActionBurst]", -- [1]
									},
								},
							},
							["CustomTex"] = "NONE",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [18]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [19]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [20]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [21]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [22]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [23]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [24]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [25]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [26]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [27]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [28]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [29]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [30]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [31]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [32]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [33]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [34]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [35]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [36]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [37]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [38]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [39]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [40]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [41]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [42]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [43]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [44]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [45]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [46]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [47]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [48]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [49]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [50]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [51]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [52]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [53]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [54]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [55]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [56]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [57]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [58]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [59]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [60]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [61]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [62]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [63]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [64]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [65]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [66]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [67]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [68]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [69]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [70]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [71]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [72]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [73]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [74]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [75]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [76]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [77]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [78]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [79]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [80]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [81]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [82]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [83]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [84]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [85]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [86]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [87]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [88]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [89]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [90]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [91]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [92]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [93]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [94]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [95]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [96]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [97]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [98]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [99]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [100]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [101]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [102]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [103]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [104]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [105]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [106]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [107]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [108]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [109]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [110]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [111]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [112]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [113]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [114]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [115]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [116]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [117]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [118]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [119]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [120]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [121]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [122]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [123]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [124]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [125]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [126]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [127]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [128]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [129]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [130]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [131]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [132]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [133]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [134]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [135]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [136]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [137]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [138]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [139]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [140]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [141]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [142]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [143]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [144]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [145]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [146]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [147]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [148]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [149]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [150]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [151]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [152]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [153]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [154]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [155]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [156]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [157]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [158]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [159]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [160]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [161]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [162]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [163]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [164]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [165]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [166]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [167]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [168]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [169]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [170]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [171]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [172]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [173]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [174]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [175]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [176]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [177]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [178]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [179]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [180]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [181]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [182]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [183]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [184]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [185]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [186]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [187]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [188]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [189]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [190]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [191]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [192]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [193]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [194]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [195]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [196]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [197]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [198]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [199]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [200]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [201]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [202]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [203]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [204]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [205]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [206]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [207]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [208]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [209]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [210]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [211]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [212]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [213]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [214]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [215]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [216]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [217]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [218]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [219]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [220]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [221]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [222]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [223]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [224]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [225]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [226]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [227]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [228]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [229]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [230]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [231]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [232]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [233]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [234]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [235]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [236]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [237]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [238]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [239]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [240]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [241]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [242]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [243]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [244]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [245]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [246]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [247]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [248]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [249]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [250]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [251]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [252]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [253]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [254]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [255]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [256]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [257]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [258]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [259]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [260]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [261]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [262]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [263]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [264]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [265]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [266]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [267]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [268]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [269]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [270]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [271]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [272]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [273]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [274]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [275]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [276]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [277]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [278]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [279]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [280]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [281]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [282]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [283]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [284]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [285]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [286]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [287]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [288]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [289]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [290]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [291]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [292]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [293]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [294]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [295]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [296]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [297]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [298]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [299]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [300]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [301]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [302]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [303]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [304]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [305]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [306]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [307]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [308]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [309]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [310]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [311]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [312]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [313]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [314]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [315]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [316]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [317]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [318]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [319]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [320]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [321]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [322]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [323]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [324]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [325]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [326]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [327]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [328]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [329]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [330]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [331]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [332]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [333]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [334]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [335]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [336]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [337]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [338]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [339]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [340]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [341]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [342]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [343]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [344]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [345]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [346]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [347]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [348]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [349]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [350]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [351]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [352]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [353]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [354]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [355]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [356]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [357]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [358]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [359]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [360]
					},
					["Conditions"] = {
						{
							["Type"] = "LUA",
							["Name"] = "return not GetToggle(1, \"DisableRotationDisplay\") and not GetToggle(1, \"DisableRotationModes\")",
						}, -- [1]
						["n"] = 1,
					},
					["Point"] = {
						["y"] = -1.703859806060791,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
						["x"] = -173.4887759685516,
					},
				}, -- [4]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [18]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [19]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [20]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [21]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [22]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [23]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [24]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [25]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [26]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [27]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [28]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [29]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [30]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [31]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [32]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [33]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [34]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [35]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [36]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [37]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [38]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [39]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [40]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [41]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [42]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [43]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [44]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [45]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [46]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [47]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [48]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [49]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [50]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [51]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [52]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [53]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [54]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [55]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [56]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [57]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [58]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [59]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [60]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [61]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [62]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [63]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [64]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [65]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [66]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [67]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [68]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [69]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [70]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [71]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [72]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [73]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [74]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [75]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [76]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [77]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [78]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [79]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [80]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [81]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [82]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [83]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [84]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [85]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [86]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [87]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [88]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [89]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [90]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [91]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [92]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [93]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [94]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [95]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [96]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [97]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [98]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [99]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [100]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [101]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [102]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [103]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [104]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [105]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [106]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [107]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [108]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [109]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [110]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [111]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [112]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [113]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [114]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [115]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [116]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [117]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [118]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [119]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [120]
					},
				}, -- [5]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [18]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [19]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [20]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [21]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [22]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [23]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [24]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [25]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [26]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [27]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [28]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [29]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [30]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [31]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [32]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [33]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [34]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [35]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [36]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [37]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [38]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [39]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [40]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [41]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [42]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [43]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [44]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [45]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [46]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [47]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [48]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [49]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [50]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [51]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [52]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [53]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [54]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [55]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [56]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [57]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [58]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [59]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [60]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [61]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [62]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [63]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [64]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [65]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [66]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [67]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [68]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [69]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [70]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [71]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [72]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [73]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [74]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [75]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [76]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [77]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [78]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [79]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [80]
					},
				}, -- [6]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [18]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [19]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [20]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [21]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [22]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [23]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [24]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [25]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [26]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [27]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [28]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [29]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [30]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [31]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [32]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [33]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [34]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [35]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [36]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [37]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [38]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [39]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [40]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [41]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [42]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [43]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [44]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [45]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [46]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [47]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [48]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [49]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [50]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [51]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [52]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [53]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [54]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [55]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [56]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [57]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [58]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [59]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [60]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [61]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [62]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [63]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [64]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [65]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [66]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [67]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [68]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [69]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [70]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [71]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [72]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [73]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [74]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [75]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [76]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [77]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [78]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [79]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [80]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [81]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [82]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [83]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [84]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [85]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [86]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [87]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [88]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [89]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [90]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [91]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [92]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [93]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [94]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [95]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [96]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [97]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [98]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [99]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [100]
					},
				}, -- [7]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [18]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [19]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [20]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [21]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [22]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [23]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [24]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [25]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [26]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [27]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [28]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [29]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [30]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [31]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [32]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [33]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [34]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [35]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [36]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [37]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [38]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [39]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [40]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [41]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [42]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [43]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [44]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [45]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [46]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [47]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [48]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [49]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [50]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [51]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [52]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [53]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [54]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [55]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [56]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [57]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [58]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [59]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [60]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [61]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [62]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [63]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [64]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [65]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [66]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [67]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [68]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [69]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [70]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [71]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [72]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [73]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [74]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [75]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [76]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [77]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [78]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [79]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [80]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [81]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [82]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [83]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [84]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [85]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [86]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [87]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [88]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [89]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [90]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [91]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [92]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [93]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [94]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [95]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [96]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [97]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [98]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [99]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [100]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [101]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [102]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [103]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [104]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [105]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [106]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [107]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [108]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [109]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [110]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [111]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [112]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [113]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [114]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [115]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [116]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [117]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [118]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [119]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [120]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [121]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [122]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [123]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [124]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [125]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [126]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [127]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [128]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [129]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [130]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [131]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [132]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [133]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [134]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [135]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [136]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [137]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [138]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [139]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [140]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [141]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [142]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [143]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [144]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [145]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [146]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [147]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [148]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [149]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [150]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [151]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [152]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [153]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [154]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [155]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [156]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [157]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [158]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [159]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [160]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [161]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [162]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [163]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [164]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [165]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [166]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [167]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [168]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [169]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [170]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [171]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [172]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [173]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [174]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [175]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [176]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [177]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [178]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [179]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [180]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [181]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [182]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [183]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [184]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [185]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [186]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [187]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [188]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [189]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [190]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [191]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [192]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [193]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [194]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [195]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [196]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [197]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [198]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [199]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [200]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [201]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [202]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [203]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [204]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [205]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [206]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [207]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [208]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [209]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [210]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [211]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [212]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [213]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [214]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [215]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [216]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [217]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [218]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [219]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [220]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [221]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [222]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [223]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [224]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [225]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [226]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [227]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [228]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [229]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [230]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [231]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [232]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [233]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [234]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [235]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [236]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [237]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [238]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [239]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [240]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [241]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [242]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [243]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [244]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [245]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [246]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [247]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [248]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [249]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [250]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [251]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [252]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [253]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [254]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [255]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [256]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [257]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [258]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [259]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [260]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [261]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [262]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [263]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [264]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [265]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [266]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [267]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [268]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [269]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [270]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [271]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [272]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [273]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [274]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [275]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [276]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [277]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [278]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [279]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [280]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [281]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [282]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [283]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [284]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [285]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [286]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [287]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [288]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [289]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [290]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [291]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [292]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [293]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [294]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [295]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [296]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [297]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [298]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [299]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [300]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [301]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [302]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [303]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [304]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [305]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [306]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [307]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [308]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [309]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [310]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [311]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [312]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [313]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [314]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [315]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [316]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [317]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [318]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [319]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [320]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [321]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [322]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [323]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [324]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [325]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [326]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [327]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [328]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [329]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [330]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [331]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [332]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [333]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [334]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [335]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [336]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [337]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [338]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [339]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [340]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [341]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [342]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [343]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [344]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [345]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [346]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [347]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [348]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [349]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [350]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [351]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [352]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [353]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [354]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [355]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [356]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [357]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [358]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [359]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [360]
					},
				}, -- [8]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [18]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [19]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [20]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [21]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [22]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [23]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [24]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [25]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [26]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [27]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [28]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [29]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [30]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [31]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [32]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [33]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [34]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [35]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [36]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [37]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [38]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [39]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [40]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [41]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [42]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [43]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [44]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [45]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [46]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [47]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [48]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [49]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [50]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [51]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [52]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [53]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [54]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [55]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [56]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [57]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [58]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [59]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [60]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [61]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [62]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [63]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [64]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [65]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [66]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [67]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [68]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [69]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [70]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [71]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [72]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [73]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [74]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [75]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [76]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [77]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [78]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [79]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [80]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [81]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [82]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [83]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [84]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [85]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [86]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [87]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [88]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [89]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [90]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [91]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [92]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [93]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [94]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [95]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [96]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [97]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [98]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [99]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [100]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [101]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [102]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [103]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [104]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [105]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [106]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [107]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [108]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [109]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [110]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [111]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [112]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [113]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [114]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [115]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [116]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [117]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [118]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [119]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [120]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [121]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [122]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [123]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [124]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [125]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [126]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [127]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [128]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [129]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [130]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [131]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [132]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [133]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [134]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [135]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [136]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [137]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [138]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [139]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [140]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [141]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [142]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [143]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [144]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [145]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [146]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [147]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [148]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [149]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [150]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [151]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [152]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [153]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [154]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [155]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [156]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [157]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [158]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [159]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [160]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [161]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [162]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [163]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [164]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [165]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [166]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [167]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [168]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [169]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [170]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [171]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [172]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [173]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [174]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [175]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [176]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [177]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [178]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [179]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [180]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [181]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [182]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [183]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [184]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [185]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [186]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [187]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [188]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [189]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [190]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [191]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [192]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [193]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [194]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [195]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [196]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [197]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [198]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [199]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [200]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [201]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [202]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [203]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [204]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [205]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [206]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [207]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [208]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [209]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [210]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [211]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [212]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [213]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [214]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [215]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [216]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [217]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [218]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [219]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [220]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [221]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [222]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [223]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [224]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [225]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [226]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [227]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [228]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [229]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [230]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [231]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [232]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [233]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [234]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [235]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [236]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [237]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [238]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [239]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [240]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [241]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [242]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [243]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [244]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [245]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [246]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [247]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [248]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [249]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [250]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [251]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [252]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [253]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [254]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [255]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [256]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [257]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [258]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [259]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [260]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [261]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [262]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [263]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [264]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [265]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [266]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [267]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [268]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [269]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [270]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [271]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [272]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [273]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [274]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [275]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [276]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [277]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [278]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [279]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [280]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [281]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [282]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [283]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [284]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [285]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [286]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [287]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [288]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [289]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [290]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [291]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [292]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [293]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [294]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [295]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [296]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [297]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [298]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [299]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [300]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [301]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [302]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [303]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [304]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [305]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [306]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [307]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [308]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [309]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [310]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [311]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [312]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [313]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [314]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [315]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [316]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [317]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [318]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [319]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [320]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [321]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [322]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [323]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [324]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [325]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [326]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [327]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [328]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [329]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [330]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [331]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [332]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [333]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [334]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [335]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [336]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [337]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [338]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [339]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [340]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [341]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [342]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [343]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [344]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [345]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [346]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [347]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [348]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [349]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [350]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [351]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [352]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [353]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [354]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [355]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [356]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [357]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [358]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [359]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [360]
					},
				}, -- [9]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [18]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [19]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [20]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [21]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [22]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [23]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [24]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [25]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [26]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [27]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [28]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [29]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [30]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [31]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [32]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [33]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [34]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [35]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [36]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [37]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [38]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [39]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [40]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [41]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [42]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [43]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [44]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [45]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [46]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [47]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [48]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [49]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [50]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [51]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [52]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [53]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [54]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [55]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [56]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [57]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [58]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [59]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [60]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [61]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [62]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [63]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [64]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [65]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [66]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [67]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [68]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [69]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [70]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [71]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [72]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [73]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [74]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [75]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [76]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [77]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [78]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [79]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [80]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [81]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [82]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [83]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [84]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [85]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [86]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [87]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [88]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [89]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [90]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [91]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [92]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [93]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [94]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [95]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [96]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [97]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [98]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [99]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [100]
					},
				}, -- [10]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [18]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [19]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [20]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [21]
					},
				}, -- [11]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [18]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [19]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [20]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [21]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [22]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [23]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [24]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [25]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [26]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [27]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [28]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [29]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [30]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [31]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [32]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [33]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [34]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [35]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [36]
					},
				}, -- [12]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [18]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [19]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [20]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [21]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [22]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [23]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [24]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [25]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [26]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [27]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [28]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [29]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [30]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [31]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [32]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [33]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [34]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [35]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [36]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [37]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [38]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [39]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [40]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [41]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [42]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [43]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [44]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [45]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [46]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [47]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [48]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [49]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [50]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [51]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [52]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [53]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [54]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [55]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [56]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [57]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [58]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [59]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [60]
					},
				}, -- [13]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [18]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [19]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [20]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [21]
					},
				}, -- [14]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [18]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [19]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [20]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [21]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [22]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [23]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [24]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [25]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [26]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [27]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [28]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [29]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [30]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [31]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [32]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [33]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [34]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [35]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [36]
					},
				}, -- [15]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [18]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [19]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [20]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [21]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [22]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [23]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [24]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [25]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [26]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [27]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [28]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [29]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [30]
					},
				}, -- [16]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [18]
					},
				}, -- [17]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
					},
				}, -- [18]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
					},
				}, -- [19]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
					},
				}, -- [20]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
					},
				}, -- [21]
			},
			["NumGroups"] = 4,
			["TextureName"] = "Flat",
			["ForceNoBlizzCC"] = true,
			["Locked"] = true,
		},
	},
}