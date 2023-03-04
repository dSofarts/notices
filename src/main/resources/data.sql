CREATE TABLE IF NOT EXISTS note (
    id BIGSERIAL PRIMARY KEY,
    title VARCHAR(255),
    text TEXT
);
INSERT INTO note (id, title, text)
VALUES (0, 'Работа с сервисом', '📝Для создания новой заметки нажмите на кнопку "Создать заметку"!') ON CONFLICT DO NOTHING;