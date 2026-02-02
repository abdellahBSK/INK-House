# 📚 Library Management Web Application (Jakarta EE)

A modern academic web application built with **Jakarta EE** for managing a personal book library.
The project demonstrates clean architecture, MVC design pattern, and best practices in Java web development.

---

## ✨ Features

- Full CRUD operations (Create, Read, Update, Delete)
- Modern and responsive user interface
- Book cover images with automatic fallback
- Confirmation before deleting a book
- Clean MVC architecture
- Annotation-based configuration (no `web.xml`)
- Academic-grade, maintainable codebase

---

## 🧱 Project Architecture (MVC)

This application follows the **Model–View–Controller (MVC)** pattern.

### 🔹 Model
- `Livre.java`
  Represents a book entity (id, title, author, imagePath).

### 🔹 Repository
- `LivreRepository.java`
  Manages data in memory using an `ArrayList`.
  Simulates a database for academic purposes.

### 🔹 Controller
- `LivreServlet.java`
  Central servlet handling all HTTP requests related to books.

```java
@WebServlet("/livres")
public class LivreServlet extends HttpServlet {
}
```

### 🔹 Views
JSP pages responsible for presentation:
- `home.jsp`
- `livres.jsp`
- `livre-form.jsp`
- `about.jsp`
- `error.jsp`

All views are located under `WEB-INF/views` to prevent direct access.

---

## ⚙️ Configuration (No web.xml)

This project does **not** use `web.xml`.

Instead, it relies on **Jakarta EE annotations**, which:
- Reduce boilerplate configuration
- Improve code readability
- Follow modern Jakarta EE best practices

Example:

```java
@WebServlet("/livres")
```

---

## 🖼️ Book Cover Images

- Each book can have an associated cover image
- Images are optional
- If no image is provided, a default image is automatically used
- Uploaded images are stored under `/images`
- Image path is handled via the `imagePath` attribute

---

## 🛠️ Technologies Used

- Java 17+
- Jakarta EE (Servlets, JSP)
- JSTL
- HTML5 / CSS3
- Apache Tomcat 10+
- Maven

---

## 🎓 Academic Purpose

This project was developed as part of an academic course to:

- Practice Java web development
- Understand MVC architecture
- Learn servlet-based routing
- Build clean and maintainable web applications

---

## 🚀 How to Run

1. Clone or download the project
2. Import it into an IDE (IntelliJ IDEA / Eclipse)
3. Configure Apache Tomcat 10+
4. Deploy the project
5. Access the application at:

```
http://localhost:8080/crud-livres
```

---

## 👨‍💻 Author

Academic project developed with a focus on clean architecture, usability, and professional standards.
