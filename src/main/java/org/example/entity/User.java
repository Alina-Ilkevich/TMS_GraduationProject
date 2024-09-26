package org.example.entity;


import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;

import java.util.List;

@Entity
@Table(name = "\"user\"")
public class User {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "name")
    @NotEmpty (message = "Имя не должно быть пустым")
    @Size (min = 2, max = 30, message = "Длина имени должна составлять от 2 до 30 символов")
    private String name;

    @Column(name = "login")
    @NotEmpty (message = "Логин не должен быть пустым")
    @Size (min = 2, max = 30, message = "Длина логина должна составлять от 2 до 30 символов")
    private String login;

    @Column(name = "password")
    @NotEmpty (message = "Пароль не должен быть пустым")
    @Pattern(regexp = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d).{8,20}$",
            message = "Пароль должен содержать хотя бы 1 заглавную букву, 1 строчную букву, 1 цифру и быть не менее 8 символов")
    private String password;

    @Column(name = "phone_number")
    @NotEmpty(message = "Номер телефона не должен быть пустым")
    @Pattern(regexp = "^(\\+375|80)(29|25|44|33)\\d{7}$", message = "Номер телефона введен некорректно")
    private String phoneNumber;

    @Column(name = "email")
    @Email(message = "Некорректный email")
    private String email;

    @ManyToOne
    @JoinColumn(name = "role_id")
    private Role role;

    public List<Schedule> getSchedule() {
        return schedule;
    }

    public void setSchedule(List<Schedule> schedule) {
        this.schedule = schedule;
    }

    @OneToMany(mappedBy = "userSchedule")
    private List<Schedule> schedule;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", login='" + login + '\'' +
                ", password='" + password + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", email='" + email + '\'' +
                ", role=" + role +
                '}';
    }
}
