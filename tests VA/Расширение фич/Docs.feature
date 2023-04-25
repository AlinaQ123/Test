﻿#language: ru

@tree

Функционал: Административный отдел

Как Сотрудник административного отдела я хочу
проверить формирование документов в системе
чтобы описать права и доступы пользователю  

Контекст:
	И я подключаю TestClient "Docs" логин "СидунИМ" пароль "Qwerty1"
	И я закрываю все окна клиентского приложения

 Сценарий: Формирование заявки на закупку

	* Переменные
		И Я запоминаю в переменную "Поставщик" значение "ВА - Канцтовары"
		И Я запоминаю в переменную "Почта" значение "kanz@1440.space"
		И Я запоминаю в переменную "Контрагент" значение "КОМУС ООО"
		И Я запоминаю в переменную "Склад" значение "MF, Общехозяйственный"
		И Я запоминаю в переменную "Номенклатура" значение "Вода \"Сестрица-природная\" 18,9 л"

	* Ввод НСИ (Партнер)
		И В командном интерфейсе я выбираю 'НСИ и администрирование' 'Партнеры'
		И в таблице "Список" я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Помощник регистрации нового партнера'
		И в поле с именем 'ПубличноеНаименование' я ввожу текст '$Поставщик$'
		И в поле с именем 'АдресЭППартнера' я ввожу текст '$Почта$'
		И я нажимаю на кнопку с именем 'Далее'
		Если открылось окно 'Помощник регистрации нового партнера' тогда
			И я меняю значение переключателя с именем 'ДействиеПоРезультатамНайдено' на 'Продолжить регистрацию нового партнера'
			И я перехожу к закладке с именем "СтраницаКнопкиНазадДалее"
			И в таблице "ТаблицаНайдено" я активизирую поле с именем "ТаблицаНайденоПредставлениеПартнер"
			И в таблице "ДеревоСравненияПартнеров" я активизирую поле с именем "ДеревоСравненияПартнеровРеквизит"
			И я нажимаю на кнопку с именем 'Далее3'
		И я изменяю флаг с именем 'Поставщик'
		И я нажимаю на кнопку с именем 'Далее3'
		И из выпадающего списка с именем "ГруппаДоступа" я выбираю точное значение 'Группа доступа по умолчанию'
		И я нажимаю на кнопку с именем 'Далее3'
		И я нажимаю на кнопку с именем 'Далее2'
		Тогда открылось окно '$Поставщик$ (Партнер)'
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я закрываю текущее окно
			
	* Документ: Заказ поставщику
		* Ввод документа
			И В командном интерфейсе я выбираю 'Закупки' 'Заказы поставщикам'
			И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
			Тогда открылось окно 'Заказ поставщику (создание)'
			И я нажимаю кнопку выбора у поля с именем "Партнер"
			И в таблице "Список" я перехожу к строке:
				| 'Наименование' |
				| '$Контрагент$' |
			И в таблице "Список" я выбираю текущую строку
			И я нажимаю кнопку выбора у поля с именем "Контрагент"
			Тогда открылось окно 'Контрагенты (юридические или физические лица)'
			И в таблице "Список" я перехожу к строке:
				| 'Наименование'                 |
				| '$Контрагент$ (КПП 772201001)' |
			И в таблице "Список" я активизирую поле с именем "Наименование"
			И в таблице "Список" я выбираю текущую строку
			И я нажимаю кнопку выбора у поля с именем "Договор"
			И в таблице "Список" я выбираю текущую строку
			И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
			И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыНоменклатура"
			И в таблице "СписокРасширенныйПоискНоменклатура" я активизирую дополнение формы с именем "СписокРасширенныйПоискНоменклатураСтрокаПоиска"
			И в таблице "СписокРасширенныйПоискНоменклатура" в дополнение формы с именем 'СписокРасширенныйПоискНоменклатураСтрокаПоиска' я ввожу текст '$Номенклатура$'
			И я нажимаю на кнопку с именем 'СписокРасширенныйПоискНоменклатураВыбратьЗначениеНоменклатуры'
			И в таблице "СписокРасширенныйПоискНоменклатура" я выбираю текущую строку
			И в таблице "Товары" в поле с именем 'ТоварыКоличествоУпаковок' я ввожу текст '5,000'
			И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '500,00'
			И в таблице "Товары" я завершаю редактирование строки
			И я нажимаю на кнопку с именем 'ФормаЗаписать'
			И я нажимаю на кнопку с именем 'УправлениеПрисоединеннымиФайламиОткрытьСписок0'
			И я буду выбирать внешний файл 'C:\Users\a.popkova\Desktop\1648414042.png'
			И я нажимаю на кнопку с именем 'ДобавитьИзФайлаНаДиске'
			И Я закрываю окно 'Присоединенные файлы: Заказ поставщику * от *'
			И я нажимаю на кнопку с именем 'ФормаПровести'

		* Проверка заполнения
		 Тогда открылось окно 'Заказ поставщику * от *'
		 И в таблице "Товары" я выбираю текущую строку
		 Тогда элемент формы с именем "Статус" стал равен 'На согласовании'
		 И элемент формы с именем "Партнер" стал равен '$Контрагент$''
		 И элемент формы с именем "Склад" стал равен '$Склад$'
		 И таблица "Товары" стала равной:
		 	| 'Номенклатура'   | 'Цена'   | 'Количество' | 'Сумма'    |
		 	| '$Номенклатура$' | '500,00' | '5,000'      | '2 500,00' |
		 И элемент формы с именем "СуммаВсегоБезНДС" стал равен '2 500,00'

		* Проверка движения
			Когда открылось окно 'Заказ поставщику * от *'
			И я нажимаю на кнопку с именем 'ПодменюОтчетыСмТакже_Авто_3E08091877A5277BEC2619EF47395CBB'
			Тогда табличный документ "ОтчетТабличныйДокумент" содержит значения:
				| 'Номенклатура'   | 'Склад'   | 'Заказано' |
				| '$Номенклатура$' | '$Склад$' | '5,000'    |
			
		* Закрытие открытых форм документов
			И я закрываю все окна клиентского приложения
									
	* Документ: Заявка на расходование ДС
		* Ввод документа
			И В командном интерфейсе я выбираю 'Казначейство' 'Заявки на расходование ДС'
			Тогда открылось окно 'Заявки на расходование денежных средств'
			И в таблице "Список" я нажимаю на кнопку с именем 'Создать'
			Тогда открылось окно 'Заявка на расходование денежных средств (создание)'
			И я нажимаю на гиперссылку с именем "НадписьУказатьОснование"
			Когда открылось окно 'Выбор типа документа-основания'
			И в таблице "" я перехожу к строке:
				| 'Колонка1'         |
				| 'Заказ поставщику' |
			И в таблице "" я выбираю текущую строку
			И в таблице "Список" я перехожу к строке:
				| 'Поставщик'    | 'Склад'   | 'Сумма'    |
				| '$Контрагент$' | '$Склад$' | '2 500,00' |
			И в таблице "Список" я активизирую поле с именем "СписокПартнер"
			И в таблице "Список" я активизирую поле с именем "СписокСуммаДокумента"
			И в таблице "Список" я активизирую поле с именем "СписокПартнер"
			И в таблице "Список" я активизирую поле с именем "СписокСуммаДокумента"
			И в таблице "Список" я активизирую поле с именем "СписокПартнер"
			И я нажимаю на кнопку с именем 'ФормаВыбрать'
			Тогда открылось окно 'Заявка на расходование денежных средств (создание) *'			
			И в поле с именем 'ЖелательнаяДатаПлатежа' я ввожу текущую дату
			И из выпадающего списка с именем "Сделка" я выбираю точное значение 'Аппараты '
			И я нажимаю кнопку выбора у поля с именем "БанковскийСчетКонтрагента"
			Тогда открылось окно 'Банковские счета'
			И в таблице "Список" я нажимаю на кнопку с именем 'СписокВыбрать'
			Тогда открылось окно 'Заявка на расходование денежных средств (создание) *'
			И я перехожу к закладке с именем "СтраницаРасшифровка"
			И из выпадающего списка с именем "РасшифровкаБезРазбиенияСтатьяДвиженияДенежныхСредств" я выбираю по строке 'CF.OP.1.3.7.3 > Платежи по расходным материалам для офиса'
			И я нажимаю на кнопку с именем 'ФормаЗаписать'
			И я буду выбирать внешний файл 'C:\Users\a.popkova\Desktop\1648414042.png'
			И я нажимаю на кнопку с именем 'УправлениеПрисоединеннымиФайламиЗагрузитьФайл0'
			И я нажимаю на кнопку с именем 'ФормаПровести'					

		* Проверка заполнения
			Тогда открылось окно 'Заявка на расходование ДС * от *'
			И элемент формы с именем "СтатьяДвиженияДенежныхСредств" стал равен 'CF.OP.1.3.7.3 > Платежи по расходным материалам для офиса'
			И элемент формы с именем "СуммаДокумента" стал равен '2 500,00'
			И элемент формы с именем "РасшифровкаБезРазбиенияПартнер" стал равен '$Контрагент$'
			И я нажимаю на кнопку с именем 'УправлениеПрисоединеннымиФайламиОткрытьСписок0'
			И таблица "Список" содержит строки:
				| 'Наименование' |
				| '1648414042'   |				
			И я закрываю текущее окно
														
		* Проверка движения
			Когда открылось окно 'Заявка на расходование ДС * от *'
			И я нажимаю на кнопку с именем 'ПодменюОтчетыСмТакже_Авто_3E08091877A5277BEC2619EF47395CBB'
			Тогда открылось окно 'Движения документа (Горизонтально)'
			Тогда табличный документ "ОтчетТабличныйДокумент" содержит значения:
				| 'Статья ДДС'                                                | 'Заявка'                           | 'Сумма заявки' |
				| 'CF.OP.1.3.7.3 > Платежи по расходным материалам для офиса' | 'Заявка на расходование ДС * от *' | '2 500,00'     |		

	* Закрытие приложения
		И я закрываю все окна клиентского приложения		
		И я удаляю все переменные
		И я закрываю сеанс текущего клиента тестирования	
		