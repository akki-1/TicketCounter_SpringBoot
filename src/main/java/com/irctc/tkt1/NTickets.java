package com.irctc.tkt1;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class NTickets {
	@Id
	int id;
//	String board;
//String arrive;

public NTickets(int id) {
	super();
	this.id = id;
//	this.board = board;
//	this.arrive = arrive;
}

public NTickets() {
	super();
	// TODO Auto-generated constructor stub
}

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

@Override
public String toString() {
	return "NTickets [id=" + id + "]";
}

//public String getBoard() {
//	return board;
//}
//
//public void setBoard(String board) {
//	this.board = board;
//}
//
//public String getArrive() {
//	return arrive;
//}
//
//public void setArrive(String arrive) {
//	this.arrive = arrive;
//}



}