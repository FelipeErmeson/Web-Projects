package com.algaworks.algamoney.api.resource;

import com.algaworks.algamoney.api.model.Pessoa;
import com.algaworks.algamoney.api.repository.PessoaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/pessoas")
public class PessoaResource {

    @Autowired
    PessoaRepository pessoaRepository;

    @GetMapping
    public ResponseEntity lista() {
        List<Pessoa> pessoas = pessoaRepository.findAll();
        return ResponseEntity.ok().body(pessoas);
    }

    @GetMapping("/{codigo}")
    public ResponseEntity buscaPeloCodigo(@PathVariable Long codigo) {
        Optional<Pessoa> pessoa = pessoaRepository.findById(codigo);
        return pessoa.isPresent() ? ResponseEntity.ok(pessoa.get()) : ResponseEntity.notFound().build();
    }

    @PostMapping
    public ResponseEntity salva(@Valid @RequestBody Pessoa pessoa) {
        Pessoa pessoaSalva = pessoaRepository.save(pessoa);
        return ResponseEntity.status(HttpStatus.CREATED).body(pessoaSalva);
    }

}
