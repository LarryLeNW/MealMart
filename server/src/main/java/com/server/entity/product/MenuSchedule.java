package com.server.entity.product;

import java.sql.Date;
import java.util.Set;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;

@Entity
@Table(name = "menu_schedule")
@FieldDefaults(level = AccessLevel.PRIVATE)
public class MenuSchedule {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;
	
	@Column(name = "start_time")
	Date startTime;

	@Column(name = "end_time")
	Date endTime;

	@OneToMany
	Set<MenuItem> menuItems;
}
