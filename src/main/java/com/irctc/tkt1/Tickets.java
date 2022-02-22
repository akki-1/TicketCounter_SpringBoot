package com.irctc.tkt1;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Tickets {
	@Id
int tcount;
String name;
String age;
String mob;
String adhaar;
String arrive;
String board;

public Tickets(int tcount, String name, String age, String mob, String adhaar, String arrive, String board) {
	super();
	this.tcount = tcount;
	this.name = name;
	this.age = age;
	this.mob = mob;
	this.adhaar = adhaar;
	this.arrive = arrive;
	this.board = board;
}

public Tickets() {
	super();
	// TODO Auto-generated constructor stub
}

public int getTcount() {
	return tcount;
}

public void setTcount(int tcount) {
	this.tcount = tcount;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getAge() {
	return age;
}

public void setAge(String age) {
	this.age = age;
}

public String getMob() {
	return mob;
}

public void setMob(String mob) {
	this.mob = mob;
}

public String getAdhaar() {
	return adhaar;
}

public void setAdhaar(String adhaar) {
	this.adhaar = adhaar;
}

public String getArrive() {
	return arrive;
}

public void setArrive(String arrive) {
	this.arrive = arrive;
}

public String getBoard() {
	return board;
}

public void setBoard(String board) {
	this.board = board;
}

@Override
public String toString() {
	return "Tickets [tcount=" + tcount + ", name=" + name + ", age=" + age + ", mob=" + mob + ", adhaar=" + adhaar
			+ ", arrive=" + arrive + ", board=" + board + "]";
}

}
