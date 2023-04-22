package com.myproject.SpringBoot.controller;

import com.myproject.SpringBoot.model.LoginRequest;
import com.myproject.SpringBoot.model.Persona;
import com.myproject.SpringBoot.service.PersonaService;
import java.util.Date;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.NewCookie;
import javax.ws.rs.core.Response;


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
public class LoginController {
    @Autowired
    private PersonaService personaService;

   
//    @PostMapping("/isAdmin")
//    @Produces(MediaType.APPLICATION_JSON)
//    @Consumes(MediaType.APPLICATION_JSON)
//    public Response isAdmin(Long userId) {
//        Persona user = this.userRepo.getById(userId);
//
//        if (user != null && user.getRole().equals(Role.ADMIN)) {
//            return Response
//                    .status(Response.Status.OK)
//                    .build();
//        } else {
//            return Response
//                    .status(Response.Status.UNAUTHORIZED)
//                    .header("Access-Control-Allow-Origin", "*")
//                    .build();
//        }
//    }

    
    
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
