package me.bubble.bubble.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class AddUserRequest {
    private String provider;
    private String email;
    private String name;
    private String password;
}
