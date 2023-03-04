package ru.dsofarts.notices.service;

import java.util.List;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import ru.dsofarts.notices.model.Note;
import ru.dsofarts.notices.repository.NoteRepository;

@Service
@Slf4j
@RequiredArgsConstructor
public class NoteService {

    private final NoteRepository noteRepository;

    public List<Note> listNotes() {
        return noteRepository.findAll();
    }

    public void create(Note note) {
        noteRepository.save(note);
        log.info("Saving new Note: {}", note.getId());
    }

    public boolean update(Long id, Note note) {
        Note currentNote = getNoteById(id);
        if (currentNote != null) {
            currentNote.setTitle(note.getTitle());
            currentNote.setText(note.getText());
            noteRepository.save(currentNote);
            return true;
        }
        return false;
    }

    public void delete(Long id) {
        noteRepository.delete(getNoteById(id));
    }

    public Note getNoteById(Long id) {
        return noteRepository.findById(id).orElse(null);
    }
}
