package com.intelligrape.model;

import com.intelligrape.util.enums.Role;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;

@Entity
@Table(name = "user_role")
public class UserRole {

    public UserRole(User user, String role) {
        this.user = user;
        this.role = role;
    }

    public UserRole() {

    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    public int id;

    @OneToOne
    @JoinColumn(name = "user_id", nullable = false)
    public User user;

    @NotEmpty
    @Column(name = "role", nullable = false)
    public String role;

    @Transient
    public Role getRoleObject(String roleValue) {
        return Role.valueOf(roleValue);
    }

    public void setRole(Role role) {
        this.role = role.name();
    }


}


// For User Role

/*CREATE TABLE user_role (
id INT NOT NULL auto_increment,
role varchar(45) NOT NULL,
user_id INT NOT NULL,
PRIMARY KEY (id),
UNIQUE KEY uni_username_role (role,user_id),
KEY fk_user_idx (user_id),
CONSTRAINT fk_username FOREIGN KEY (user_id) REFERENCES user (id));*/