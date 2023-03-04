CREATE TABLE IF NOT EXISTS note (
    id BIGINT PRIMARY KEY,
    title VARCHAR,
    text TEXT
);
INSERT INTO note (id, title, text)
VALUES (1, 'Работа с сервисом', 'Для создания новой заметки нажмите на кнопку "создать заметку", для удаления заметки нажмите на крестик') ON CONFLICT DO NOTHING;