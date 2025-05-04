package com.employee.dao;

import com.employee.model.employee;
import com.employee.database.ConnectionProvider;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EmployeeDAO {

    // Add a new employee to the database
    public boolean addEmployee(Employee emp) {
        try (Connection con = ConnectionProvider.getConnection();
             PreparedStatement ps = con.prepareStatement(
                     "INSERT INTO employees (name, email, position, phone) VALUES (?, ?, ?, ?)")) {
            ps.setString(1, emp.getName());
            ps.setString(2, emp.getEmail());
            ps.setString(3, emp.getPosition());
            ps.setString(4, emp.getPhone());
            return ps.executeUpdate() > 0; // Returns true if a row was inserted
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false; // Returns false if an exception occurs
    }

    // Retrieve all employees from the database
    public List<Employee> getAllEmployees() {
        List<Employee> employees = new ArrayList<>();
        try (Connection con = ConnectionProvider.getConnection();
             PreparedStatement ps = con.prepareStatement("SELECT * FROM employees");
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Employee emp = new Employee();
                emp.setId(rs.getInt("id")); // Assuming "id" is the column name in the table
                emp.setName(rs.getString("name"));
                emp.setEmail(rs.getString("email"));
                emp.setPosition(rs.getString("position"));
                emp.setPhone(rs.getString("phone"));
                employees.add(emp);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return employees;
    }

    // Additional CRUD methods (e.g., updateEmployee, deleteEmployee) can go here
}
