INSERT INTO questions (title, description, type, answer_type, possible_answers)
VALUES ('Опыт работы, лет', 'Опыт работы на аналогичной должности, указанный в годах', 'QUESTION', 'SINGLE_CHOICE', '{1, 2, 3, 7}'),             --1
       ('Высшее образование', 'Наличие высшего образования', 'RESUME_FIELD', 'SINGLE_CHOICE', '{4, 5, 6}'),                                      --2
       ('Опыт работы за границей', 'Опыт работы переводчиком за границей', 'QUESTION', 'SINGLE_CHOICE', '{1, 2, 3, 7}'),                         --3
       ('Опыт работы на официальных мероприятиях', 'Опыт работы переводчиком на мероприятиях с участием официальных лиц', 'QUESTION', 'SINGLE_CHOICE',
        '{7, 8}'),                                                                                                                               --4
       ('Время владения китайским языком', 'Количество лет практики китайского языка', 'QUESTION', 'SINGLE_CHOICE', '{1, 2, 3, 7}'),             --5
       ('Опыт проживания в Китае', 'Был ли опыт проживания в КНР', 'QUESTION', 'SINGLE_CHOICE', '{9, 10}'),                                      --6
       ('Имеете ли разряд', 'Был ли опыт прохождения обучения в Китае', 'QUESTION', 'SINGLE_CHOICE', '{9, 10}'),                                 --7
       ('Разряд', 'Имеющийся разряд по профессии', 'QUESTION', 'SINGLE_CHOICE', '{13, 14, 15, 16, 17, 18}'),                                     --8
       ('Технологический стэк', 'Перечень технологий, которыми умеет пользоваться кандидат', 'QUESTION', 'MULTI_SELECT', '{19, 20, 21, 22}'),    --9
       ('Разрешение на оружие', 'Имеется ли разрешение на ношение оружия', 'QUESTION', 'SINGLE_CHOICE', '{9, 10}'),                              --10
       ('Владение боевыми искусствами', 'Владеет ли кандидат боевыми искусствами', 'QUESTION', 'SINGLE_CHOICE', '{9, 10}'),                      --11
       ('Доступные категории транспортных средств', 'Доступные категории транспортных средств', 'QUESTION', 'MULTI_SELECT', '{23, 24, 25, 26}'), --12
       ('Водительский стаж', 'Водительский стаж в годах', 'QUESTION', 'SINGLE_CHOICE', '{1, 2, 3}'),                                             --13
       ('Умение работать в 1С', 'Умение работать в 1С', 'QUESTION', 'SINGLE_CHOICE', '{7, 8}'),                                                  --14
       ('Курсы повышения квалификации', 'Факт прохождения курсов повышения квалификации', 'QUESTION', 'SINGLE_CHOICE', '{9, 10}'),               --15
       ('Возможен ли прием онлайн', 'Проводит ли специалист онлайн приемы пациентов', 'QUESTION', 'SINGLE_CHOICE', '{9, 10}'),                   --16
       ('Опыт работы в качестве CTO', 'Опыт работы в качестве CTO', 'QUESTION', 'SINGLE_CHOICE', '{26}'),                                        --17
       ('Работали ли на других управляющих должностях', 'Работали ли на других управляющих должностях', 'QUESTION', 'SINGLE_CHOICE',
        '{9, 10}'),                                                                                                                              --18                                                                                                                        --18
       ('Величина компании, в которой вы работали', 'Величина компании, в которой вы работали', 'QUESTION', 'SINGLE_CHOICE',
        '{29, 30, 31, 32}'),                                                                                                                     --19                                                                                                                       --19
       ('Доводилось ли проходить курсы по управлению персоналом', 'Доводилось ли проходить курсы по управлению персоналом', 'QUESTION',
        'SINGLE_CHOICE',
        '{9, 10}'),                                                                                                                              --20
       ('Какой формат работы предпочитаете', 'Какой формат работы предпочитаете', 'QUESTION', 'MULTI_SELECT', '{32, 33, 34, 35}'),               --21
       ('Доводилось ли работать в международных компаниях', 'Доводилось ли работать в международных компаниях', 'QUESTION', 'SINGLE_CHOICE',
        '{36, 37}'),--22                                                                                                                        --22
       ('Уровень английского', 'Уровень английского', 'QUESTION', 'SINGLE_CHOICE', '{38, 39, 40}'),                                              --23
       ('Владение другими иностранными языками', 'Владение другими иностранными языками', 'QUESTION', 'SINGLE_CHOICE', '{9, 10}'),               --24
       ('Технологический стэк', 'Перечень технологий, которыми умеет пользоваться кандидат', 'QUESTION', 'MULTI_SELECT',
        '{19, 20, 21, 22, 41, 42, 43}'); --25


INSERT INTO answers (open_questions, title, positive_title, type, default_answer, skip_at_result)
VALUES (NULL, 'Менее года', 'Менее года', 'POSITIVE', FALSE, FALSE),                                                        --1
       (NULL, 'От 1 до 3 лет', 'От 1 до 3 лет', 'POSITIVE', FALSE, FALSE),                                                  --2
       (NULL, 'От 3 до 6 лет', 'От 3 до 6 лет', 'POSITIVE', FALSE, FALSE),                                                  --3
       (NULL, 'Нет', 'Нет высшего образования', 'NEGATIVE', FALSE, FALSE),                                                  --4
       (NULL, 'Незаконченное', 'Незаконченное высшее образование', 'NEUTRAL', FALSE, TRUE),                                 --5
       (NULL, 'Есть', 'Есть высшее образование', 'POSITIVE', FALSE, FALSE),                                                 --6
       (NULL, 'Нет опыта', 'Нет опыта подобной работы', 'NEGATIVE', FALSE, FALSE),                                          --7
       (NULL, 'Есть опыт', 'Есть опыт подобной работы', 'POSITIVE', FALSE, FALSE),                                          --8
       (NULL, 'Да', 'Утвердительный ответ', 'POSITIVE', FALSE, FALSE),                                                      --9
       (NULL, 'Нет', 'Отрицательный ответ', 'NEGATIVE', FALSE, FALSE),                                                      --10
       ('{8}', 'Да, есть разряд', 'Разряд имеется', 'POSITIVE', FALSE, FALSE),                                              --11
       (NULL, 'Разряда нет', 'Разряд отстутствует', 'NEGATIVE', FALSE, FALSE),                                              --12
       (NULL, '1-й разряд', '1-й разряд', 'POSITIVE', TRUE, FALSE),                                                         --13
       (NULL, '2-й разряд', '2-й разряд', 'POSITIVE', FALSE, FALSE),                                                        --14
       (NULL, '3-й разряд', '3-й разряд', 'POSITIVE', FALSE, FALSE),                                                        --15
       (NULL, '4-й разряд', '4-й разряд', 'POSITIVE', FALSE, FALSE),                                                        --16
       (NULL, '5-й разряд', '5-й разряд', 'POSITIVE', FALSE, FALSE),                                                        --17
       (NULL, '6-й разряд', '6-й разряд', 'POSITIVE', FALSE, FALSE),                                                        --18
       (NULL, 'Spring Framework', 'Spring Framework', 'POSITIVE', FALSE, FALSE),                                            --19
       (NULL, 'Stream API', 'Stream API', 'POSITIVE', FALSE, FALSE),                                                        --20
       (NULL, 'Hibernate', 'Hibernate', 'POSITIVE', FALSE, FALSE),                                                          --21
       (NULL, 'Java Concurrency', 'Java Concurrency', 'POSITIVE', FALSE, FALSE),                                            --22
       (NULL, 'A', 'Категория A', 'NEUTRAL', FALSE, FALSE),                                                                 --23
       (NULL, 'B', 'Категория B', 'NEUTRAL', FALSE, FALSE),                                                                 --24
       (NULL, 'C', 'Категория C', 'NEUTRAL', FALSE, FALSE),                                                                 --25
       (NULL, 'D', 'Категория D', 'NEUTRAL', FALSE, FALSE),                                                                 --26
       ('{19, 20, 22}', 'Да, работал CTO', 'Да, работал CTO', 'POSITIVE', FALSE, FALSE),                                    --27
       ('{18, 19, 20}', 'Нет, не работал CTO', 'Нет, не работал CTO', 'NEGATIVE', FALSE, FALSE),                            --28
       (NULL, 'До 100 сотрудников', 'До 100 сотрудников', 'NEUTRAL', FALSE, FALSE),                                         --29
       (NULL, 'До 500 сотрудников', 'До 500 сотрудников', 'NEUTRAL', FALSE, FALSE),                                         --30
       (NULL, 'До 1000 сотрудников', 'До 1000 сотрудников', 'NEUTRAL', FALSE, FALSE),                                       --31
       (NULL, 'Офис', 'Работа в офисе', 'NEUTRAL', FALSE, FALSE),                                                           --32
       (NULL, 'Удаленная работа', 'Удаленная работа', 'NEUTRAL', FALSE, FALSE),                                             --33
       (NULL, 'Гибрид', 'гибридный формат работы', 'NEUTRAL', FALSE, FALSE),                                                --34
       (NULL, 'Не важен формат работы', 'Не важен формат работы', 'NEUTRAL', FALSE, FALSE),                                 --35
       ('{23, 24}', 'Работал в международной компании', 'Работал в международной компании', 'NEUTRAL', FALSE, FALSE),       --36
       ('{23, 24}', 'Не работал в международной компании', 'Не работал в международной компании', 'NEUTRAL', FALSE, FALSE), --37
       (NULL, 'Низкий', 'Низкий', 'NEUTRAL', FALSE, FALSE),                                                                 --38
       (NULL, 'Средний', 'Средний', 'NEUTRAL', FALSE, FALSE),                                                               --39
       (NULL, 'Высокий', 'Высокий', 'NEUTRAL', FALSE, FALSE),                                                               --40
       (NULL, 'Java Core', 'Java Core', 'NEUTRAL', FALSE, FALSE),                                                           --41
       (NULL, 'PostgreSQL', 'PostgreSQL', 'NEUTRAL', FALSE, FALSE),                                                         --42
       (NULL, 'Kafka', 'Kafka', 'NEUTRAL', FALSE, FALSE); --43

INSERT INTO platforms (platform, application_version)
VALUES ('WEB', '1'),       --1
       ('IOS', '1.3'),     --2
       ('Android', '1.2'), --3
       ('IOS', '2.2'),     --4
       ('Android', '2.7'); --5

INSERT INTO segments (parent_segment_id, create_time, title, description, roles, tags)
VALUES (NULL,'2023-02-12 02:02:00', 'Программист, разработчик', 'Разработчик программного обеспечения', '{96}', '{"Programmer", "Software", "IT"}'), -- 1
       (NULL,'2023-02-12 02:02:00', 'Переводчик', 'Переводчик', '{93}', '{"Translator", "ForeignLanguages"}'), --2
       (2,'2023-02-12 02:02:00', 'Переводчик с китайского', 'Переводчик, владеющмя китайским языком, унаследован от переводчика', '{93}','{"Translator", "Chinese"}'),    --3
       (NULL,'2023-02-12 02:02:00', 'Охранник', 'Охранник', '{90}', '{"Security", "Safety", "Guard"}'), --4
       (1,'2023-02-12 02:02:00', 'Java-разработчик', 'Разработчик серверной части приложений на языке Java', '{96}','{"Java", "Backend", "Programmer", "Software", "IT"}'), --5
       (3,'2023-02-12 02:02:00', 'Телохранитель', 'Телохранитель, унаследован от охранника', '{90}', '{"Bodyguard", "Security", "PrivateProtection"}'), --6
       (NULL,'2023-02-12 02:02:00', 'Водитель', 'Водитель транспортного средства', '{21}', '{"Driver", "Car", "Road"}'), --7
       (NULL,'2023-02-12 02:02:00', 'Бухгатлер', 'Бухгатлер', '{3, 18}', '{"Finance", "Accounting", "Money", "Calculations"}'), --8
       (NULL,'2023-02-12 02:02:00', 'Механик', 'Специалист по сборке или ремонту различной техники', '{173}', '{"Repair", "Mechanic", "Assembly"}'), --9
       (NULL,'2023-02-12 02:02:00', 'Психолог', 'Психолог', '{101}', '{"Psychologist", "Life", "Thoughts", "Help"}'), --10
       (NULL,'2023-02-12 02:02:00', 'Технический директор (CTO)', 'Технический директор (CTO)', '{11, 125}', '{"CTO", "Director", "Management"}'); --11

INSERT INTO entrypoints (title, description)
VALUES ('Onboarding', 'Размещение вакансии работодателем'), --1
       ('Резюме', 'Размещение резюме соискателем'); --2

INSERT INTO screens (title, description, type, state, platforms)
VALUES ('Основная информация', 'Заполнение основной информации', 'STATIC', 'ACTIVE', '{1, 2, 3}'),                     --1
       ('Должность', 'Выбор должности для поиска', 'STATIC', 'ACTIVE', '{1, 3}'),                                      --2
       ('Наличие опыта работы', 'Заполнение инормации по опыту работы', 'DYNAMIC', 'ACTIVE', '{1, 4, 3}'),             --3
       ('Узкоспециализированные вопросы', 'Заполнение ответов на спецаильные вопросы', 'DYNAMIC', 'ACTIVE', '{2, 5}'), --4
       ('Наличие образования', 'Заполнение информации об образовании', 'STATIC', 'ARCHIVE', '{1, 4, 5}');
--5


--Первый слой
INSERT INTO layers (parent_layer_id, title, description, state, create_time, platforms)
VALUES (NULL, 'Первый слой', 'Базовый слой', 'STABLE', '2023-04-12 02:02:00', '{1, 2, 3}');
-- 1
--
-- INSERT INTO segment_state_links (layer_id, old_id, segment_id, state)
-- VALUES (1, NULL, 1, 'ACTIVE'); -- 1
--
-- INSERT INTO question_required_links (layer_id, old_id, segment_id, application_id, question_id, question_required)
-- VALUES (1, NULL, 1, 2, 1, TRUE), -- 1
--        (1, NULL, 1, 3, 1, TRUE), -- 2
--        (1, NULL, 1, 4, 1, TRUE), -- 3
--
--        (1, NULL, 1, 2, 9, TRUE), -- 4
--        (1, NULL, 1, 3, 9, TRUE), -- 5
--        (1, NULL, 1, 4, 9, TRUE); -- 6
--
-- INSERT INTO segment_application_screen_links (layer_id, old_id, segment_id, entrypoint_id, application_id, screen_id, screen_position)
-- VALUES (1, NULL, 1, 1, 2, 1, 1), -- 1
--        (1, NULL, 1, 1, 2, 2, 2), -- 2
--        (1, NULL, 1, 1, 2, 4, 3), -- 3
--        (1, NULL, 1, 1, 2, 3, 4), -- 4
--
--        (1, NULL, 1, 2, 2, 1, 1), -- 5
--        (1, NULL, 1, 2, 2, 2, 2), -- 6
--        (1, NULL, 1, 2, 2, 4, 3), -- 7
--        (1, NULL, 1, 2, 2, 3, 4), -- 8
--
--        (1, NULL, 1, 1, 3, 1, 1), -- 9
--        (1, NULL, 1, 1, 3, 2, 2), -- 10
--        (1, NULL, 1, 1, 3, 4, 3), -- 11
--        (1, NULL, 1, 1, 3, 3, 4), -- 12
--
--        (1, NULL, 1, 2, 3, 1, 1), -- 13
--        (1, NULL, 1, 2, 3, 2, 2), -- 14
--        (1, NULL, 1, 2, 3, 4, 3), -- 15
--        (1, NULL, 1, 2, 3, 3, 4), -- 16
--
--        (1, NULL, 1, 1, 4, 1, 1), -- 17
--        (1, NULL, 1, 1, 4, 2, 2), -- 18
--        (1, NULL, 1, 1, 4, 4, 3), -- 19
--        (1, NULL, 1, 1, 4, 3, 4), -- 20
--
--        (1, NULL, 1, 2, 4, 1, 1), -- 21
--        (1, NULL, 1, 2, 4, 2, 2), -- 22
--        (1, NULL, 1, 2, 4, 4, 3), -- 23
--        (1, NULL, 1, 2, 4, 3, 4); -- 24
-- INSERT INTO screen_question_links (layer_id, old_id, segment_id, entrypoint_id, application_id, screen_id, question_id, question_position,
--                                    question_visibility)
-- VALUES (1, NULL, 1, 1, 2, 3, 1, 1, 'SHOW'), -- 1
--        (1, NULL, 1, 2, 2, 3, 1, 1, 'HIDE'), -- 2
--        (1, NULL, 1, 1, 3, 3, 1, 1, 'SHOW'), -- 3
--        (1, NULL, 1, 2, 3, 3, 1, 1, 'HIDE'), -- 4
--        (1, NULL, 1, 1, 4, 3, 1, 1, 'SHOW'), -- 5
--        (1, NULL, 1, 2, 4, 3, 1, 1, 'HIDE'), -- 6
--
--        (1, NULL, 1, 1, 2, 4, 9, 1, 'SHOW'), -- 7
--        (1, NULL, 1, 2, 2, 4, 9, 1, 'HIDE'), -- 8
--        (1, NULL, 1, 1, 3, 4, 9, 1, 'SHOW'), -- 9
--        (1, NULL, 1, 2, 3, 4, 9, 1, 'HIDE'), -- 10
--        (1, NULL, 1, 1, 4, 4, 9, 1, 'SHOW'), -- 11
--        (1, NULL, 1, 2, 4, 4, 9, 1, 'HIDE');
-- -- 12
--Второй слой
INSERT INTO layers (parent_layer_id, title, description, state, create_time, platforms)
VALUES (1, 'Второй слой', 'Слой, унаследованный от базового слоя', 'STABLE', '2023-04-13 02:02:00', '{1, 4, 3}');
-- 2

-- INSERT INTO segment_state_links (layer_id, old_id, segment_id, state)
-- VALUES (2, NULL, 2, 'ACTIVE',);
-- -- 2

--
-- INSERT INTO question_required_links (layer_id, old_id, segment_id, application_id, question_id, question_required)
-- VALUES (2, 1, 1, 2, 1, FALSE),   -- 7
--        (2, 2, 1, 3, 1, FALSE),   -- 8
--        (2, 3, 1, 4, 1, FALSE),   -- 9
--
--        (2, NULL, 2, 2, 3, TRUE), --10
--        (2, NULL, 2, 3, 3, TRUE), -- 11
--        (2, NULL, 2, 4, 3, TRUE), -- 12
--
--        (2, NULL, 2, 2, 4, TRUE), -- 13
--        (2, NULL, 2, 3, 4, TRUE), -- 14
--        (2, NULL, 2, 4, 4, TRUE); -- 15
--
-- INSERT INTO segment_application_screen_links (layer_id, old_id, segment_id, entrypoint_id, application_id, screen_id, screen_position)
-- VALUES (2, NULL, 2, 1, 2, 1, 1), -- 25
--        (2, NULL, 2, 1, 2, 2, 2), -- 26
--        (2, NULL, 2, 1, 2, 3, 3), -- 27
--        (2, NULL, 2, 1, 2, 4, 4), -- 28
--
--        (2, NULL, 2, 2, 2, 1, 1), -- 29
--        (2, NULL, 2, 2, 2, 2, 2), -- 30
--        (2, NULL, 2, 2, 2, 3, 3), -- 31
--        (2, NULL, 2, 2, 2, 4, 4), -- 32
--
--        (2, NULL, 2, 1, 3, 1, 1), -- 33
--        (2, NULL, 2, 1, 3, 2, 2), -- 34
--        (2, NULL, 2, 1, 3, 3, 3), -- 35
--        (2, NULL, 2, 1, 3, 4, 4), -- 36
--
--        (2, NULL, 2, 2, 3, 1, 1), -- 37
--        (2, NULL, 2, 2, 3, 2, 2), -- 38
--        (2, NULL, 2, 2, 3, 3, 3), -- 39
--        (2, NULL, 2, 2, 3, 4, 4), -- 40
--
--        (2, NULL, 2, 1, 4, 1, 1), -- 41
--        (2, NULL, 2, 1, 4, 2, 2), -- 42
--        (2, NULL, 2, 1, 4, 3, 3), -- 43
--        (2, NULL, 2, 1, 4, 4, 4), -- 44
--
--        (2, NULL, 2, 2, 4, 1, 1), -- 45
--        (2, NULL, 2, 2, 4, 2, 2), -- 46
--        (2, NULL, 2, 2, 4, 3, 3), -- 47
--        (2, NULL, 2, 2, 4, 4, 4); -- 48
--
-- INSERT INTO screen_question_links (layer_id, old_id, segment_id, entrypoint_id, application_id, screen_id, question_id, question_position,
--                                    question_visibility)
-- VALUES (2, NULL, 2, 1, 2, 3, 3, 1, 'SHOW'),           -- 13
--        (2, NULL, 2, 2, 2, 3, 3, 1, 'SHOW'),           -- 14
--        (2, NULL, 2, 1, 3, 3, 3, 1, 'HIDE_PREFILLED'), -- 15
--        (2, NULL, 2, 2, 3, 3, 3, 1, 'SHOW'),           -- 16
--        (2, NULL, 2, 1, 4, 3, 3, 1, 'SHOW_PREFILLED'), -- 17
--        (2, NULL, 2, 2, 4, 3, 3, 1, 'SHOW'),           -- 18
--
--        (2, NULL, 2, 1, 2, 4, 4, 1, 'SHOW'),           -- 19
--        (2, NULL, 2, 2, 2, 4, 4, 1, 'HIDE'),           -- 20
--        (2, NULL, 2, 1, 3, 4, 4, 1, 'SHOW'),           -- 21
--        (2, NULL, 2, 2, 3, 4, 4, 1, 'SHOW'),           -- 22
--        (2, NULL, 2, 1, 4, 4, 4, 1, 'HIDE'),           -- 23
--        (2, NULL, 2, 2, 4, 4, 4, 1, 'SHOW');
-- -- 24
--Третий слой
INSERT INTO layers (parent_layer_id, title, description, state, create_time, platforms)
VALUES (2, 'Третий слой', 'Слой, унаследованный от второго слоя', 'STABLE', '2023-04-13 02:02:00', '{1, 4, 5}');
-- 3

-- INSERT INTO segment_state_links (layer_id, old_id, segment_id, state)
-- VALUES (3, NULL, 3, 'ACTIVE'), -- 3
--        (3, NULL, 4, 'ACTIVE'), -- 4
--        (3, NULL, 5, 'ARCHIVE'); -- 5
-- INSERT INTO question_required_links (layer_id, old_id, segment_id, application_id, question_id, question_required)
-- VALUES (3, NULL, 3, 2, 1, TRUE),  -- 13
--        (3, NULL, 3, 3, 1, TRUE),  -- 14
--        (3, NULL, 3, 4, 1, TRUE),  -- 15
--
--        (3, NULL, 3, 2, 2, TRUE),  -- 16
--        (3, NULL, 3, 3, 2, TRUE),  -- 17
--        (3, NULL, 3, 4, 2, TRUE),  -- 18
--
--        (3, NULL, 3, 2, 5, TRUE),  -- 19
--        (3, NULL, 3, 3, 5, TRUE),  -- 20
--        (3, NULL, 3, 4, 5, TRUE),  -- 21
--
--        (3, NULL, 3, 2, 6, FALSE), -- 22
--        (3, NULL, 3, 3, 6, FALSE), -- 23
--        (3, NULL, 3, 4, 6, FALSE), -- 24
--
--        (3, NULL, 4, 2, 7, TRUE),  -- 25
--        (3, NULL, 4, 3, 7, TRUE),  -- 26
--        (3, NULL, 4, 4, 7, TRUE),  -- 27
--
--        (3, NULL, 4, 2, 8, TRUE),  -- 28
--        (3, NULL, 4, 3, 8, TRUE),  -- 29
--        (3, NULL, 4, 4, 8, TRUE),  -- 30
--
--        (3, NULL, 5, 2, 1, TRUE),  -- 31
--        (3, NULL, 5, 3, 1, TRUE),  -- 32
--        (3, NULL, 5, 4, 1, TRUE),  -- 33
--
--        (3, NULL, 5, 2, 2, TRUE),  -- 34
--        (3, NULL, 5, 3, 2, TRUE),  -- 35
--        (3, NULL, 5, 4, 2, TRUE),  -- 36
--
--        (3, NULL, 5, 2, 9, TRUE),  -- 37
--        (3, NULL, 5, 3, 9, TRUE),  -- 38
--        (3, NULL, 5, 4, 9, TRUE); -- 39
--
-- INSERT INTO segment_application_screen_links (layer_id, old_id, segment_id, entrypoint_id, application_id, screen_id, screen_position)
-- VALUES (3, 25, 2, 1, 2, 1, 2),   -- 49
--        (3, 26, 2, 1, 2, 2, 1),   -- 50
--        (3, 27, 2, 1, 2, 3, 4),   -- 51
--        (3, 28, 2, 1, 2, 4, 3),   -- 52
--
--        (3, NULL, 3, 1, 2, 1, 1), -- 53
--        (3, NULL, 3, 1, 2, 2, 2), --
--        (3, NULL, 3, 1, 2, 3, 3), --
--        (3, NULL, 3, 1, 2, 4, 4), --
--
--        (3, NULL, 3, 2, 2, 1, 1), -- 57
--        (3, NULL, 3, 2, 2, 2, 2), --
--        (3, NULL, 3, 2, 2, 3, 3), --
--        (3, NULL, 3, 2, 2, 4, 4), --
--
--        (3, NULL, 3, 1, 3, 1, 1), -- 61
--        (3, NULL, 3, 1, 3, 2, 2), --
--        (3, NULL, 3, 1, 3, 3, 3), --
--        (3, NULL, 3, 1, 3, 4, 4), --
--
--        (3, NULL, 3, 2, 3, 1, 1), -- 65
--        (3, NULL, 3, 2, 3, 2, 2), --
--        (3, NULL, 3, 2, 3, 3, 3), --
--        (3, NULL, 3, 2, 3, 4, 4), --
--
--        (3, NULL, 3, 1, 4, 1, 1), -- 69
--        (3, NULL, 3, 1, 4, 2, 2), --
--        (3, NULL, 3, 1, 4, 3, 3), --
--        (3, NULL, 3, 1, 4, 4, 4), --
--
--        (3, NULL, 3, 2, 4, 1, 1), -- 73
--        (3, NULL, 3, 2, 4, 2, 2), --
--        (3, NULL, 3, 2, 4, 3, 3), --
--        (3, NULL, 3, 2, 4, 4, 4), --
--
--        (3, NULL, 4, 1, 2, 1, 1), -- 77
--        (3, NULL, 4, 1, 2, 2, 2), --
--        (3, NULL, 4, 1, 2, 3, 3), --
--        (3, NULL, 4, 1, 2, 4, 4), --
--
--        (3, NULL, 4, 2, 2, 1, 1), -- 81
--        (3, NULL, 4, 2, 2, 2, 2), --
--        (3, NULL, 4, 2, 2, 3, 3), --
--        (3, NULL, 4, 2, 2, 4, 4), --
--
--        (3, NULL, 4, 1, 3, 1, 1), -- 85
--        (3, NULL, 4, 1, 3, 2, 2), --
--        (3, NULL, 4, 1, 3, 3, 3), --
--        (3, NULL, 4, 1, 3, 4, 4), --
--
--        (3, NULL, 4, 2, 3, 1, 1), -- 89
--        (3, NULL, 4, 2, 3, 2, 2), --
--        (3, NULL, 4, 2, 3, 3, 3), --
--        (3, NULL, 4, 2, 3, 4, 4), --
--
--        (3, NULL, 4, 1, 4, 1, 1), -- 93
--        (3, NULL, 4, 1, 4, 2, 2), --
--        (3, NULL, 4, 1, 4, 3, 3), --
--        (3, NULL, 4, 1, 4, 4, 4), --
--
--        (3, NULL, 4, 2, 4, 1, 1), -- 97
--        (3, NULL, 4, 2, 4, 2, 2), --
--        (3, NULL, 4, 2, 4, 3, 3), --
--        (3, NULL, 4, 2, 4, 4, 4), --
--
--        (3, NULL, 5, 1, 2, 1, 1), -- 101
--        (3, NULL, 5, 1, 2, 2, 2), --
--        (3, NULL, 5, 1, 2, 3, 3), --
--        (3, NULL, 5, 1, 2, 4, 4), --
--
--        (3, NULL, 5, 2, 2, 1, 1), -- 105
--        (3, NULL, 5, 2, 2, 2, 2), --
--        (3, NULL, 5, 2, 2, 3, 3), --
--        (3, NULL, 5, 2, 2, 4, 4), --
--
--        (3, NULL, 5, 1, 3, 1, 1), -- 109
--        (3, NULL, 5, 1, 3, 2, 2), --
--        (3, NULL, 5, 1, 3, 3, 3), --
--        (3, NULL, 5, 1, 3, 4, 4), --
--
--        (3, NULL, 5, 2, 3, 1, 1), -- 113
--        (3, NULL, 5, 2, 3, 2, 2), --
--        (3, NULL, 5, 2, 3, 3, 3), --
--        (3, NULL, 5, 2, 3, 4, 4), --
--
--        (3, NULL, 5, 1, 4, 1, 1), -- 117
--        (3, NULL, 5, 1, 4, 2, 2), --
--        (3, NULL, 5, 1, 4, 3, 3), --
--        (3, NULL, 5, 1, 4, 4, 4), --
--
--        (3, NULL, 5, 2, 4, 1, 1), -- 121
--        (3, NULL, 5, 2, 4, 2, 2), --
--        (3, NULL, 5, 2, 4, 3, 3), --
--        (3, NULL, 5, 2, 4, 4, 4); --
--
-- INSERT INTO screen_question_links (layer_id, old_id, segment_id, entrypoint_id, application_id, screen_id, question_id, question_position,
--                                    question_visibility)
-- VALUES (3, 13, 2, 1, 2, 3, 3, 1, 'HIDE'),             -- 25
--        (3, 14, 2, 2, 2, 3, 3, 1, 'HIDE'),             --
--        (3, 15, 2, 1, 3, 3, 3, 1, 'SHOW_PREFILLED'),   --
--        (3, 16, 2, 2, 3, 3, 3, 1, 'HIDE'),             --
--        (3, 17, 2, 1, 4, 3, 3, 1, 'HIDE_PREFILLED'),   --
--        (3, 18, 2, 2, 4, 3, 3, 1, 'HIDE'),             --
--
--        (3, NULL, 3, 1, 2, 3, 1, 1, 'SHOW_PREFILLED'), --
--        (3, NULL, 3, 2, 2, 3, 1, 1, 'SHOW'),           --
--        (3, NULL, 3, 1, 3, 3, 1, 1, 'HIDE'),           --
--        (3, NULL, 3, 2, 3, 3, 1, 1, 'SHOW'),           --
--        (3, NULL, 3, 1, 4, 3, 1, 1, 'HIDE_PREFILLED'), --
--        (3, NULL, 3, 2, 4, 3, 1, 1, 'SHOW'),           --
--
--        (3, NULL, 3, 1, 2, 4, 2, 1, 'SHOW'),           --
--        (3, NULL, 3, 2, 2, 4, 2, 1, 'SHOW'),           --
--        (3, NULL, 3, 1, 3, 4, 2, 1, 'HIDE'),           --
--        (3, NULL, 3, 2, 3, 4, 2, 1, 'SHOW'),           --
--        (3, NULL, 3, 1, 4, 4, 2, 1, 'HIDE_PREFILLED'), --
--        (3, NULL, 3, 2, 4, 4, 2, 1, 'SHOW'),           --
--
--        (3, NULL, 3, 1, 2, 4, 5, 2, 'SHOW'),           --
--        (3, NULL, 3, 2, 2, 4, 5, 2, 'SHOW'),           --
--        (3, NULL, 3, 1, 3, 4, 5, 2, 'SHOW'),           --
--        (3, NULL, 3, 2, 3, 4, 5, 2, 'SHOW'),           --
--        (3, NULL, 3, 1, 4, 4, 5, 2, 'SHOW'),           --
--        (3, NULL, 3, 2, 4, 4, 5, 2, 'SHOW'),           --
--
--        (3, NULL, 3, 1, 2, 4, 6, 3, 'SHOW'),           --
--        (3, NULL, 3, 2, 2, 4, 6, 3, 'HIDE'),           --
--        (3, NULL, 3, 1, 3, 4, 6, 3, 'SHOW'),           --
--        (3, NULL, 3, 2, 3, 4, 6, 3, 'SHOW'),           --
--        (3, NULL, 3, 1, 4, 4, 6, 3, 'HIDE_PREFILLED'), --
--        (3, NULL, 3, 2, 4, 4, 6, 3, 'SHOW'),           --
--
--        (3, NULL, 4, 1, 2, 4, 7, 1, 'SHOW'),           --
--        (3, NULL, 4, 2, 2, 4, 7, 1, 'HIDE_PREFILLED'), --
--        (3, NULL, 4, 1, 3, 4, 7, 1, 'SHOW'),           --
--        (3, NULL, 4, 2, 3, 4, 7, 1, 'SHOW_PREFILLED'), --
--        (3, NULL, 4, 1, 4, 4, 7, 1, 'HIDE'),           --
--        (3, NULL, 4, 2, 4, 4, 7, 1, 'SHOW'),           --
--
--        (3, NULL, 4, 1, 2, 4, 8, 2, 'SHOW'),           --
--        (3, NULL, 4, 2, 2, 4, 8, 2, 'SHOW'),           --
--        (3, NULL, 4, 1, 3, 4, 8, 2, 'SHOW'),           --
--        (3, NULL, 4, 2, 3, 4, 8, 2, 'SHOW_PREFILLED'), --
--        (3, NULL, 4, 1, 4, 4, 8, 2, 'SHOW'),           --
--        (3, NULL, 4, 2, 4, 4, 8, 2, 'SHOW'),           --
--
--        (3, NULL, 5, 1, 2, 3, 1, 1, 'SHOW'),           --
--        (3, NULL, 5, 2, 2, 3, 1, 1, 'HIDE'),           --
--        (3, NULL, 5, 1, 3, 3, 1, 1, 'SHOW'),           --
--        (3, NULL, 5, 2, 3, 3, 1, 1, 'SHOW'),           --
--        (3, NULL, 5, 1, 4, 3, 1, 1, 'SHOW'),           --
--        (3, NULL, 5, 2, 4, 3, 1, 1, 'SHOW'),           --
--
--        (3, NULL, 5, 1, 2, 4, 2, 1, 'SHOW'),           --
--        (3, NULL, 5, 2, 2, 4, 2, 1, 'SHOW_PREFILLED'), --
--        (3, NULL, 5, 1, 3, 4, 2, 1, 'SHOW'),           --
--        (3, NULL, 5, 2, 3, 4, 2, 1, 'SHOW'),           --
--        (3, NULL, 5, 1, 4, 4, 2, 1, 'SHOW'),           --
--        (3, NULL, 5, 2, 4, 4, 2, 1, 'SHOW'),           --
--
--        (3, NULL, 5, 1, 2, 4, 9, 2, 'SHOW'),           --
--        (3, NULL, 5, 2, 2, 4, 9, 2, 'HIDE'),           --
--        (3, NULL, 5, 1, 3, 4, 9, 2, 'SHOW'),           --
--        (3, NULL, 5, 2, 3, 4, 9, 2, 'HIDE_PREFILLED'), --
--        (3, NULL, 5, 1, 4, 4, 9, 2, 'SHOW'),           --
--        (3, NULL, 5, 2, 4, 4, 9, 2, 'SHOW_PREFILLED');
--

--Четвертый слой
--Пятый слой
--Шестой слой
--Седьмой слой

INSERT INTO PROFESSIONAL_ROLE (PROFESSIONAL_ROLE_ID, NAME)
    OVERRIDING SYSTEM VALUE
VALUES (1, 'Event-менеджер'),
       (2, 'PR-менеджер'),
       (3, 'SMM-менеджер, контент-менеджер'),
       (4, 'Автомойщик'),
       (5, 'Автослесарь, автомеханик'),
       (6, 'Агент по недвижимости'),
       (7, 'Агроном'),
       (8, 'Администратор'),
       (9, 'Администратор магазина, администратор торгового зала'),
       (10, 'Аналитик'),
       (11, 'Андеррайтер'),
       (12, 'Арт-директор, креативный директор'),
       (13, 'Артист, актер, аниматор'),
       (14, 'Архитектор'),
       (15, 'Ассистент врача'),
       (16, 'Аудитор'),
       (17, 'Бизнес-тренер'),
       (18, 'Бухгалтер'),
       (19, 'Ветеринарный врач'),
       (20, 'Видеооператор, видеомонтажер'),
       (21, 'Водитель'),
       (22, 'Военнослужащий'),
       (23, 'Воспитатель, няня'),
       (24, 'Врач'),
       (25, 'Гейм-дизайнер'),
       (26, 'Генеральный директор, исполнительный директор (CEO)'),
       (27, 'Геодезист'),
       (28, 'Геолог'),
       (29, 'Главный врач, заведующий отделением'),
       (30, 'Главный инженер проекта'),
       (31, 'Грузчик'),
       (32, 'Дворник'),
       (33, 'Делопроизводитель, архивариус'),
       (34, 'Дизайнер, художник'),
       (35, 'Директор магазина, директор сети магазинов'),
       (36, 'Директор по информационным технологиям (CIO)'),
       (37, 'Директор по маркетингу и PR (CMO)'),
       (38, 'Директор по персоналу (HRD)'),
       (39, 'Диспетчер'),
       (40, 'Другое'),
       (41, 'Журналист, корреспондент'),
       (42, 'Заведующий аптекой'),
       (43, 'Зоотехник'),
       (44, 'Инженер по качеству'),
       (45, 'Инженер по охране труда и технике безопасности, инженер-эколог'),
       (46, 'Инженер по эксплуатации'),
       (47, 'Инженер ПТО, инженер-сметчик'),
       (48, 'Инженер-конструктор, инженер-проектировщик'),
       (49, 'Технолог'),
       (50, 'Казначей'),
       (51, 'Кассир-операционист'),
       (52, 'Кладовщик'),
       (53, 'Коммерческий директор (CCO)'),
       (54, 'Координатор отдела продаж'),
       (55, 'Копирайтер, редактор, корректор'),
       (56, 'Косметолог'),
       (57, 'Кредитный специалист'),
       (58, 'Курьер'),
       (59, 'Маляр, штукатур'),
       (60, 'Массажист'),
       (61, 'Мастер ногтевого сервиса'),
       (62, 'Мастер-приемщик'),
       (63, 'Машинист'),
       (64, 'Медицинская сестра, медицинский брат'),
       (65, 'Медицинский представитель'),
       (66, 'Менеджер по закупкам'),
       (67, 'Менеджер по логистике, менеджер по ВЭД'),
       (68, 'Менеджер по маркетингу, интернет-маркетолог'),
       (69, 'Менеджер по персоналу'),
       (70, 'Менеджер по продажам, менеджер по работе с клиентами'),
       (71, 'Менеджер по работе с партнерами'),
       (72, 'Менеджер по туризму'),
       (73, 'Менеджер продукта'),
       (74, 'Менеджер ресторана'),
       (75, 'Менеджер/консультант по стратегии'),
       (76, 'Менеджер/руководитель АХО'),
       (77, 'Мерчандайзер'),
       (78, 'Монтажник'),
       (79, 'Научный специалист, исследователь'),
       (80, 'Начальник производства'),
       (81, 'Начальник склада'),
       (82, 'Начальник смены, мастер участка'),
       (83, 'Оператор call-центра, специалист контактного центра'),
       (84, 'Оператор ПК, оператор базы данных'),
       (85, 'Оператор производственной линии'),
       (86, 'Оператор станков с ЧПУ'),
       (87, 'Операционный директор (COO)'),
       (88, 'Офис-менеджер'),
       (89, 'Официант, бармен, бариста'),
       (90, 'Охранник'),
       (91, 'Оценщик'),
       (92, 'Парикмахер'),
       (93, 'Переводчик'),
       (94, 'Повар, пекарь, кондитер'),
       (95, 'Полицейский'),
       (96, 'Программист, разработчик'),
       (97, 'Продавец-консультант, продавец-кассир'),
       (98, 'Продюсер'),
       (99, 'Промоутер'),
       (100, 'Прораб, мастер СМР'),
       (101, 'Психолог'),
       (102, 'Разнорабочий'),
       (103, 'Режиссер, сценарист'),
       (104, 'Руководитель группы разработки'),
       (105, 'Руководитель отдела клиентского обслуживания'),
       (106, 'Руководитель отдела продаж'),
       (107, 'Руководитель проектов'),
       (108, 'Руководитель строительного проекта'),
       (109, 'Сварщик'),
       (110, 'Секретарь, помощник руководителя, ассистент'),
       (111, 'Сервисный инженер, инженер-механик'),
       (112, 'Сетевой инженер'),
       (113, 'Системный администратор'),
       (114, 'Системный инженер'),
       (115, 'Слесарь, сантехник'),
       (116, 'Специалист по информационной безопасности'),
       (117, 'Специалист по кадрам'),
       (118, 'Специалист по подбору персонала'),
       (119, 'Специалист по тендерам'),
       (120, 'Специалист службы безопасности'),
       (121, 'Специалист технической поддержки'),
       (122, 'Страховой агент'),
       (123, 'Супервайзер'),
       (124, 'Тестировщик'),
       (125, 'Технический директор (CTO)'),
       (126, 'Технический писатель'),
       (127, 'Товаровед'),
       (128, 'Токарь, фрезеровщик, шлифовщик'),
       (129, 'Торговый представитель'),
       (130, 'Уборщица, уборщик'),
       (131, 'Упаковщик, комплектовщик'),
       (132, 'Учитель, преподаватель, педагог'),
       (133, 'Фармацевт-провизор'),
       (134, 'Финансовый аналитик, инвестиционный аналитик'),
       (135, 'Финансовый директор (CFO)'),
       (136, 'Финансовый контролер'),
       (137, 'Финансовый менеджер'),
       (138, 'Фитнес-тренер, инструктор тренажерного зала'),
       (139, 'Фотограф, ретушер'),
       (140, 'Хостес'),
       (141, 'Швея, портной, закройщик'),
       (142, 'Экономист'),
       (143, 'Электромонтажник'),
       (144, 'Инженер-энергетик, инженер-электрик'),
       (145, 'Юрисконсульт'),
       (146, 'Юрист'),
       (147, 'Специалист по взысканию задолженности'),
       (148, 'Системный аналитик'),
       (149, 'Контролёр ОТК'),
       (150, 'Бизнес-аналитик'),
       (151, 'Специалист по сертификации'),
       (152, 'Метролог'),
       (153, 'Менеджер по компенсациям и льготам'),
       (154, 'Брокер'),
       (155, 'Методолог'),
       (156, 'BI-аналитик, аналитик данных'),
       (157, 'Руководитель отдела аналитики'),
       (158, 'Комплаенс-менеджер'),
       (159, 'Бортпроводник'),
       (160, 'DevOps-инженер'),
       (161, 'Руководитель филиала'),
       (162, 'Мастер по ремонту оборудования, техники'),
       (163, 'Маркетолог-аналитик'),
       (164, 'Продуктовый аналитик'),
       (165, 'Дата-сайентист'),
       (166, 'Директор юридического департамента (CLO)'),
       (167, 'Методист'),
       (168, 'Лаборант'),
       (169, 'Инженер-электроник, инженер-электронщик'),
       (170, 'Руководитель отдела маркетинга и рекламы'),
       (171, 'Руководитель отдела персонала'),
       (172, 'Руководитель отдела логистики'),
       (173, 'Механик'),
       (174, 'Инженер ПНР');
