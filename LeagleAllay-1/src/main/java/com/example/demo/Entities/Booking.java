package com.example.demo.Entities;
import jakarta.persistence.*;
import java.time.LocalDateTime;

@Entity
public class Booking {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    private Client client;
    @ManyToOne
    private Lawyer lawyer;
    
    private LocalDateTime bookingTime;

    @Override
	public String toString() {
		return "Booking [id=" + id + ", client=" + client + ", lawyer=" + lawyer + ", bookingTime=" + bookingTime + "]";
	}

	public Booking(Client client, Lawyer lawyer, LocalDateTime bookingTime) {
		super();
		this.client = client;
		this.lawyer = lawyer;
		this.bookingTime = bookingTime;
	}

	public Booking() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Client getClient() {
		return client;
	}

	public void setClient(Client client) {
		this.client = client;
	}

	public Lawyer getLawyer() {
		return lawyer;
	}

	public void setLawyer(Lawyer lawyer) {
		this.lawyer = lawyer;
	}

	public LocalDateTime getBookingTime() {
		return bookingTime;
	}

	public void setBookingTime(LocalDateTime bookingTime) {
		this.bookingTime = bookingTime;
	}

    
    
}
