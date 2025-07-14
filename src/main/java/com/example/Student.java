package com.example;


import java.util.Date;

public class Student {

    private String email;
    private Date date;
    private String courses;
    private String description;
    private Long number;
    private Address address;
    public void setDate(Date date) {
        this.date = date;
    }

    public Address getAddress() {
        return address;
    }

    @Override
    public String toString() {
        return "Student{" +
                "email='" + email + '\'' +
                ", date=" + date +
                ", courses='" + courses + '\'' +
                ", description='" + description + '\'' +
                ", number=" + number +
                ", address=" + address +
                '}';
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public Date getDate(){
        return this.date;
    }
    public Long getNumber() {
        return number;
    }

    public void setNumber(Long number) {
        this.number = number;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }



    public String getCourses() {
        return courses;
    }

    public void setCourses(String courses) {
        this.courses = courses;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

}
