package com.project.emsBackend.repository;

// Step 4 -> Created a repository interface

import com.project.emsBackend.entity.Employee;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EmployeeRepository extends JpaRepository<Employee, Long> {

}
