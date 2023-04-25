﻿#language: ru

@tree

Функционал: Заявка на закупку

Как Администратор я хочу
проверить заполнения заявки на закупку, присоединенные файлы к заявке и движения документа
чтобы исключить ошибок в системе   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Формирование заявки на закупку
	И В командном интерфейсе я выбираю 'Закупки' 'Заявки на закупку (1440)'
	Тогда открылось окно 'Заявки на закупку (1440)'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заявка на закупку (создание)'
	И из выпадающего списка с именем "ТипЗакупки" я выбираю точное значение 'Самостоятельная закупка'
	И я нажимаю кнопку выбора у поля с именем "КонсультантПоЗакупке"
	Тогда открылось окно 'Выберите пользователя'
	И в таблице "ПользователиСписок" я выбираю текущую строку
	Тогда открылось окно 'Заявка на закупку (создание) *'
	И я нажимаю кнопку выбора у поля с именем "СтатьяБюджета"
	Тогда открылось окно 'Статьи бюджетов'
	И в таблице "Список" я активизирую дополнение формы с именем "СписокСтрокаПоиска"
	И в таблице "Список" в дополнение формы с именем 'СписокСтрокаПоиска' я ввожу текст 'Прочие рекламные расходы'
	И в таблице "Список" я выбираю текущую строку
	Когда открылось окно 'Статьи бюджетов'
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И в поле с именем 'Комментарий' я ввожу текст 'Необходимо провести тест'
	И я перехожу к закладке с именем "ГруппаТовары"
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыСклад"
	Тогда открылось окно 'Склады и магазины'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование'                          |
		| 'T1, Ответственное хранение, КНС ГРУПП' |
	И в таблице "Список" я выбираю текущую строку
	И в таблице "Товары" я активизирую поле с именем "ТоварыНоменклатура"
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыНоменклатура"
	Тогда открылось окно 'Номенклатура'
	И в таблице "СписокРасширенныйПоискНоменклатура" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыКоличествоУпаковок' я ввожу текст '1,000'
	И в таблице "Товары" в поле с именем 'ТоварыЖелаемаяДатаПоставки' я ввожу текст '15.04.2023'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И В текущем окне я нажимаю кнопку командного интерфейса 'Файлы'
	И я буду выбирать внешний файл 'C:\Users\a.popkova\Desktop\1648414042.png'
	И я нажимаю на кнопку с именем 'ДобавитьИзФайлаНаДиске'
	И в таблице "Список" я активизирую поле с именем "СписокНаименование"
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Как открыть файл?'
	И я нажимаю на кнопку с именем 'ОткрытьФайл'
	Когда открылось окно 'Заявка на закупку * от *'
	И В текущем окне я нажимаю кнопку командного интерфейса 'Основное'
	И я нажимаю на кнопку с именем 'ФормаПровести'

	*Проверка движений
		Когда открылось окно 'Заявка на закупку * от *'
		И я нажимаю на кнопку с именем 'ПодменюОтчетыСмТакже_Авто_3E08091877A5277BEC2619EF47395CBB'
		Тогда открылось окно 'Движения документа (Горизонтально)'
		Тогда табличный документ 'ОтчетТабличныйДокумент' содержит значения:
			| 'Идентификатор закупки'                                                                                 | 'Количество' | 'Номер строки' | 'Регистратор'              | 'Состояние обработки потребности' |
			| ' Intel® RAID Controller RS3UC080 12Gb/s SAS, 6Gb/s SATA, LSI3008 IOC-based entry-RAID 0,1,1E,10 & JB'| '1,000'      | '1'            | 'Заявка на закупку * от *' | 'Новый'                           |
			| ' Intel® RAID Controller RS3UC080 12Gb/s SAS, 6Gb/s SATA, LSI3008 IOC-based entry-RAID 0,1,1E,10 & JB'| '1,000'      | '2'            | 'Заявка на закупку * от *' | 'Новый'                           |
			| ' Intel® RAID Controller RS3UC080 12Gb/s SAS, 6Gb/s SATA, LSI3008 IOC-based entry-RAID 0,1,1E,10 & JB' | '1,000'      | '3'            | 'Заявка на закупку * от *' | 'В обработке'                     |
		