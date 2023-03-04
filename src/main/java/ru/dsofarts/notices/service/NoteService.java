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

}
