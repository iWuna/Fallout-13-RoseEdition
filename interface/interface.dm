//Please use mob or src (not usr) in these procs. This way they can be called in the same fashion as procs.
/client/verb/wiki()
	set name = "wiki"
	set desc = "Открывает вики в вашем браузере."
	set hidden = 1
	var/wikiurl = CONFIG_GET(string/wikiurl)
	if(wikiurl)
		if(alert("Это откроет вики в вашем браузере. Вы уверены?",,"Да","Нет")!="Да")
			return
		src << link(wikiurl)
	else
		to_chat(src, "<span class='danger'>The Wiki URL is not set in the server configuration.</span>")
	return

/client/verb/discord()
	set name = "Discord"
	set desc = "Посетить Discord сервера."
	set hidden = 1
	var/discordurl = CONFIG_GET(string/discordurl)
	if(discordurl)
		if(alert("Это откроет Дискорд в вашем браузере, вы уверены?",,"Да","Нет")!="Да")
			return
		src << link(discordurl)
	else
		to_chat(src, "<span class='danger'>The discord URL is not set in the server configuration.</span>")
	return

/client/verb/rules()
	set name = "rules"
	set desc = "Показать правила сервера."
	set hidden = 1
	var/rulesurl = CONFIG_GET(string/rulesurl)
	switch(alert("Где вы хотите посмотреть правила?", null, "Дискорд (внешняя ссылка)", "Показать здесь", "Закрыть"))
		if("Дискорд (внешняя ссылка)")
			if(!rulesurl)
				to_chat(src, "<span class='danger'>The rules URL is not set in the server configuration.</span>")
				return
			src << link(rulesurl)
		if("Показать здесь")
			src << browse('html/rules.html', "window=changes")


/client/verb/github()
	set name = "Github"
	set desc = "Посетить Github сервера"
	set hidden = 1
	var/githuburl = CONFIG_GET(string/githuburl)
	if(githuburl)
		if(alert("Это откроет репозиторий Github в вашем браузере. Вы уверены?",,"Да","Нет")!="Да")
			return
		src << link(githuburl)
	else
		to_chat(src, "<span class='danger'>The Github URL is not set in the server configuration.</span>")
	return

/client/verb/reportissue()
	set name = "report-issue"
	set desc = "Сообщить об ошибке"
	set hidden = 1
	var/githuburl = CONFIG_GET(string/githuburl)
	if(githuburl)
		var/message = "Откроется страница сообщений об ошибках на Гитхабе. Вы уверены?"
		if(GLOB.revdata.testmerge.len)
			message += "<br>The following experimental changes are active and are probably the cause of any new or sudden issues you may experience. If possible, please try to find a specific thread for your issue instead of posting to the general issue tracker:<br>"
			message += GLOB.revdata.GetTestMergeInfo(FALSE)
		if(tgalert(src, message, "Сообщить о баге","Да","Нет")!="Да")
			return
		var/static/issue_template = file2text(".github/ISSUE_TEMPLATE.md")
		var/servername = CONFIG_GET(string/servername)
		var/url_params = "Передаю версию клиента: [byond_version]\n\n[issue_template]"
		if(GLOB.round_id || servername)
			url_params = "Отчёт отправлен [GLOB.round_id ? " Round ID: [GLOB.round_id][servername ? " ([servername])" : ""]" : servername]\n\n[url_params]"
		DIRECT_OUTPUT(src, link("[githuburl]/issues/new?body=[url_encode(url_params)]"))
	else
		to_chat(src, "<span class='danger'>The Github URL is not set in the server configuration.</span>")
	return

/client/verb/hotkeys_help()
	set name = "Горячие клавиши"
	set category = "OOC"

	var/adminhotkeys = {"<font color='purple'>
Admin:
\tF3 = asay
\tF5 = Aghost (admin-ghost)
\tF6 = player-panel
\tF7 = Buildmode
\tF8 = Invisimin
\tCtrl+F8 = Stealthmin
</font>"}

	mob.hotkey_help()

	if(holder)
		to_chat(src, adminhotkeys)

/client/verb/changelog()
	set name = "Изменения"
	set category = "OOC"
	var/datum/asset/changelog = get_asset_datum(/datum/asset/simple/changelog)
	changelog.send(src)
	src << browse('html/changelog.html', "window=changes;size=675x650")
	if(prefs.lastchangelog != GLOB.changelog_hash)
		prefs.lastchangelog = GLOB.changelog_hash
		prefs.save_preferences()
		winset(src, "infowindow.changelog", "font-style=;")


/mob/proc/hotkey_help()
	var/hotkey_mode = {"<font color='purple'>
Горячие клавиши: (Горячие клавиши должны быть активированы)
\tTAB = Активировать режим горячих клавиш
\ta = Налево
\ts = Вниз
\td = Направо
\tw = Вверх
\tq = Бросить
\te = Экипировать
\tr = Кинуть
\tm = Эмоция
\tt = Говорить
\to = OOC
\tb = Сопротивляться
\t<B></B>h = Прекратить тащить
\tx = Сменить руку
\tz = Активировать удерживаемый предмет (или y)
\tShift+e = Поместить удерживаемый предмет на пояс или взять последний помещенный на пояс предмет
\tShift+b = Поместить удерживаемый предмет в портфель или взять последний помещенный в портфель предмет
\tf = Влево по кругу намерений
\tg = Вправо по кругу намерений
\t1 = Намерение помочь
\t2 = Намерение обезоружить
\t3 = Намерение схватить
\t4 = Намерение вредить
\tNumpad = Выбрать часть тела (Нажмите восемь раз для Голова->Глаза->Рот)
\tAlt(HOLD) = Изменить намерение
</font>"}

	var/other = {"<font color='purple'>
Любой режим: (Включение горячих клавиш не обязательно)
\tCtrl+a = Налево
\tCtrl+s = Вниз
\tCtrl+d = Направо
\tCtrl+w = Вверх
\tCtrl+q = Бросить
\tCtrl+e = Экипировать
\tCtrl+r = Кинуть
\tCtrl+b = Сопротивляться
\tCtrl+h = Прекратить тащить
\tCtrl+o = OOC
\tCtrl+x = Сменить руку
\tCtrl+z = Активировать удерживаемый предмет (или Ctrl+y)
\tCtrl+f = Влево по кругу намерений
\tCtrl+g = Вправо по кругу намерений
\tCtrl+1 = Намерение помочь
\tCtrl+2 = Намерение обезоружить
\tCtrl+3 = Намерение схватить
\tCtrl+4 = Намерение вредить
\tCtrl+'+/-' ИЛИ
\tShift+Mousewheel = Приблизить/отдалить для призрака
\tDEL = Прекратить тащить
\tINS = Вправо по кругу намерений
\tHOME = Бросить
\tPGUP = Сменить руку
\tPGDN = Активировать удерживаемый предмет
\tEND = Кинуть
\tCtrl+Numpad = Выбрать часть тела (Нажмите восемь раз для Голова->Глаза->Рот)
</font>"}

	to_chat(src, hotkey_mode)
	to_chat(src, other)

/mob/living/silicon/robot/hotkey_help()
	//h = talk-wheel has a nonsense tag in it because \th is an escape sequence in BYOND.
	var/hotkey_mode = {"<font color='purple'>
Горячие клавиши: (Горячие клавиши должны быть активированы)
\tTAB = Активировать режим горячих клавиш
\ta = Налево
\ts = Вниз
\td = Направо
\tw = Наверх
\tq = Снять активный модуль
\t<B></B>h = Прекратить тащить
\tm = Эмоция
\tt = Говорить
\to = OOC
\tx = Изменить активный модуль
\tb = Сопротивляться
\tz = Активировать удерживаемый предмет (или y)
\tf = Влево по кругу намерений
\tg = Вправо по кругу намерений
\t1 = Активировать модуль 1
\t2 = Активировать модуль 2
\t3 = Активировать модуль 3
\t4 = Переключить намерение
</font>"}

	var/other = {"<font color='purple'>
Любой режим: (Включение горячих клавиш не обязательно)
\tCtrl+a = Налево
\tCtrl+s = Вниз
\tCtrl+d = Направо
\tCtrl+w = Вверх
\tCtrl+q = Снять активный модуль
\tCtrl+x = Изменить активный модуль
\tCtrl+b = Сопротивляться
\tCtrl+h = Прекратить тащить
\tCtrl+o = OOC
\tCtrl+z = Активировать удерживаемый предмет (или Ctrl+y)
\tCtrl+f = Влево по кругу намерений
\tCtrl+g = Вправо по кругу намерений
\tCtrl+1 = Активировать модуль 1
\tCtrl+2 = Активировать модуль 2
\tCtrl+3 = Активировать модуль 3
\tCtrl+4 = Переключить намерение
\tDEL = Прекратить тащить
\tINS = Переключить намерение
\tPGUP = Переключить активный модуль
\tPGDN = Активировать удерживаемый предмет
</font>"}

	to_chat(src, hotkey_mode)
	to_chat(src, other)
