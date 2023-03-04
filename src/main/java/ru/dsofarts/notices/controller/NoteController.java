package ru.dsofarts.notices.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import ru.dsofarts.notices.model.Note;
import ru.dsofarts.notices.service.NoteService;

@Controller
@RequiredArgsConstructor
public class NoteController {

    private final NoteService noteService;

    @GetMapping("/")
    public String notes(Model model) {
        model.addAttribute("notes", noteService.listNotes());
        return "main";
    }

    @PostMapping("/create")
    public String create(Note note) {
        noteService.create(note);
        return "redirect:/";
    }

    @GetMapping("/{note}")
    public String note(@PathVariable("note") Note note, Model model) {
        model.addAttribute("note", note);
        return "note";
    }

    @PostMapping("/update/{id}")
    public String update(@PathVariable("id") Long id, Note note, Model model) {
        noteService.update(id, note);
        model.addAttribute("note", noteService.getNoteById(id));
        return "redirect:/";
    }

    @PostMapping("/delete/{id}")
    public String delete(@PathVariable("id") Long id, Model model) {
        noteService.delete(id);
        model.addAttribute("notes", noteService.listNotes());
        return "redirect:/";
    }

}
