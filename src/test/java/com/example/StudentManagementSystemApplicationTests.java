package com.example;

import com.example.controller.StudentController;
import com.example.model.Student;
import com.example.repository.StudentRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.ResponseEntity;

import java.util.Arrays;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.when;

@SpringBootTest
class StudentManagementSystemApplicationTests {

    @Autowired
    private StudentController studentController;

    @MockBean
    private StudentRepository studentRepository;

    @Test
    void contextLoads() {
    }

    @Test
    public void testGetStudents() {
        when(studentRepository.findAll()).thenReturn(Arrays.asList(
                new Student(1, "John Doe", 20),
                new Student(2, "Jane Doe", 22)
        ));

        ResponseEntity<List<Student>> responseEntity = studentController.getStudents();
        List<Student> students = responseEntity.getBody();

        assertEquals(2, students.size());
        assertEquals("John Doe", students.get(0).getName());
        assertEquals("Jane Doe", students.get(1).getName());
    }

    // Add more test cases as needed
}