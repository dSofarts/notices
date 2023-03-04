package ru.dsofarts.notices.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.dsofarts.notices.model.Note;

public interface NoteRepository extends JpaRepository<Note, Long> {

}
