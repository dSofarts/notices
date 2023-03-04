package ru.dsofarts.notices.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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

}
