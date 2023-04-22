package com.myproject.SpringBoot.controller;

import com.myproject.SpringBoot.model.LoginRequest;
import com.myproject.SpringBoot.model.Persona;
import com.myproject.SpringBoot.service.PersonaService;
import java.util.Date;

import org.json.JSONObject;

import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;


@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/auth")
public class AuthController {
    @Autowired
    private PersonaService personaService;
    
    @PostMapping("/register")
    @ResponseBody 
    public ResponseEntity<String> register(@RequestBody LoginRequest loginRequest) {
        Persona user = this.personaService.buscarPersonaPorUsername(loginRequest.getUsername());
        
         if (user != null) {
            return ResponseEntity.badRequest().build();
        } 
        Persona newUser = new Persona();
        newUser.setUsername(loginRequest.getUsername());
        newUser.setPassword(loginRequest.getPassword());
        this.personaService.crearPersona(newUser);
        return ResponseEntity.ok("");
    }

    @PostMapping("/login")
    @ResponseBody
    public ResponseEntity<String> validate(@RequestBody LoginRequest loginRequest) {
        Persona user = this.personaService.buscarPersonaPorUsername(loginRequest.getUsername());

        if (user == null) {
            return ResponseEntity.badRequest().build();
        }

        if (user.getPassword().equals(loginRequest.getPassword())) {
            String key = "mi_clave";
            long time = System.currentTimeMillis();
            String jwt = Jwts.builder()
                    .setSubject("Mi Subject")
                    .setIssuedAt(new Date(time))
                    .setExpiration(new Date(time + 90000))
                    .claim("username", user.getUsername())
//                   .claim("role", user.getRole().name())
                    .claim("profile_picture", user.getProfile_picture())
                    .claim("user_id", user.getId())
                    .signWith(SignatureAlgorithm.HS256, key)
                    .compact();
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("JWT", jwt);
            String json = jsonObject.toString();
            return ResponseEntity.ok(json);
        } else {
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).build();
        }
    }
}
