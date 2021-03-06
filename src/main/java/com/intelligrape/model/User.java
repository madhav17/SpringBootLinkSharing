package com.intelligrape.model;

import com.intelligrape.util.CO.UserCO;
import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.Set;

@Entity
@Table(name = "user", uniqueConstraints = {
        @UniqueConstraint(columnNames = "username")
})
public class User implements Serializable {

    public User(String firstName, String lastName, String username, String password, Boolean enabled) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.username = username;
        this.password = password;
        this.enabled = enabled;
    }

    public User(UserCO userCO){
        firstName = userCO.firstName;
        lastName = userCO.lastName;
        username = userCO.username;
        password = userCO.password;
        enabled = userCO.getEnabled();
    }

    public User() {

    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int id;

    @NotEmpty
    @Column(name = "first_name", nullable = false)
    public String firstName;

    @NotEmpty
    @Column(name = "last_name", nullable = false)
    public String lastName;

    @NotEmpty
    @Column(name = "username", nullable = false, unique = true)
    public String username;

    @NotEmpty
    @Column(name = "password", nullable = false)
    public String password;

    @NotNull
    //@NotEmpty
    // can not use @NotEmpty This is completely wrong. An integer cannot be considered as a string, collection, map or array. Use the standard @NotNull instead.
    @Column(name = "enabled", nullable = false)
    public Boolean enabled;

    @OneToMany(mappedBy = "user") // Subscription model has user
    @Cascade(CascadeType.ALL)
    public Set<Subscription> subscriptionSet;

    @OneToMany(mappedBy = "user")
    @Cascade(CascadeType.ALL)
    public Set<Topic> topicSet;


//    @DateTimeFormat(pattern = "dd/MM/yyyy")
//    @Type(type = "org.jadira.usertype.dateandtime.joda.PersistentLocalDate")
//    @Column(name = "date_of_birth",nullable = false)
//    public Date dateOfBirth;
//    public LocalDate dateOfBirth;


    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public int getId() {
        return id;
    }

    public String getPassword() {
        return password;
    }

    public String getUsername() {
        return username;
    }

    public Boolean getEnabled() {
        return enabled;
    }

    public String getFullName(){
        return this.firstName + " " + this.lastName;
    }


}


/*
*   Schema For User

create table user(id INT NOT NULL auto_increment,
first_name VARCHAR(100) NOT NULL,
last_name VARCHAR(100) NOT NULL,
username VARCHAR(100) NOT NULL,
password VARCHAR(100) NOT NULL,
// date_of_birth DATE NOT NULL,
PRIMARY KEY (id));

* */
