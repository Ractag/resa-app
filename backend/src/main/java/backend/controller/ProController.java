package backend.controller;

import backend.model.Pro;
import backend.repository.ProRepository;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/pros")
public class ProController {

    private final ProRepository proRepository;

    public ProController(ProRepository proRepository) {
        this.proRepository = proRepository;
    }

    @GetMapping
    public List<Pro> listerTousLesPros() {
        return proRepository.findAll();
    }

    @GetMapping("/{id}")
    public Pro obtenirUnPro(@PathVariable Long id) {
        return proRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Pro introuvable : " + id));
    }
}