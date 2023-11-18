# Student Management System

This is a simple student management system built with Spring Boot and H2 database. It provides basic CRUD operations for managing students.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

- Java 8 or higher
- Maven

### Installing

1. Clone the repository
```
git clone https://github.com/yourusername/student-management-system.git
```

2. Navigate to the project directory
```
cd student-management-system
```

3. Build the project
```
mvn clean install
```

4. Run the application
```
mvn spring-boot:run
```

The application will start and run on: `http://localhost:8080`

## Using the Application

The application exposes the following endpoints:

- `GET /students`: Fetch all students
- `GET /students/{id}`: Fetch a student by id
- `POST /students`: Create a new student
- `PUT /students/{id}`: Update a student
- `DELETE /students/{id}`: Delete a student

## Running the Tests

To run the tests, use the following command:

```
mvn test
```

## Built With

- [Spring Boot](https://spring.io/projects/spring-boot) - The web framework used
- [H2 Database](https://www.h2database.com/html/main.html) - The in-memory database used
- [Maven](https://maven.apache.org/) - Dependency Management

## Authors

- Your Name

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.