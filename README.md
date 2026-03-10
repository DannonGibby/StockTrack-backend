# StockTrack Inventory API

Backend API for **StockTrack**, an inventory management system designed to track products, stock levels, and customer orders.

The API is built with **Java and Spring Boot** and provides RESTful endpoints for managing product inventory and order records.

---

## Overview

StockTrack allows users to manage inventory through a structured backend API.

The system supports:

- product inventory tracking
- stock quantity management
- customer order records

The API is designed with a layered Spring Boot architecture and demonstrates backend development concepts such as entity modeling, REST API design, and data persistence using JPA.

---

## Features

- Create, update, delete, and view products
- Track inventory quantities
- Manage product records through REST endpoints
- Structured backend architecture using Spring Boot
- Data persistence using JPA
- Containerized with Docker for consistent environments

---

## Tech Stack

**Language**
- Java

**Framework**
- Spring Boot

**Data Layer**
- Spring Data JPA
- H2 Database

**Build Tool**
- Maven

**Containerization**
- Docker

---

## Architecture Overview

The application follows a typical Spring Boot layered structure:

```
Controller Layer
    ↓
Service Layer
    ↓
Repository Layer
    ↓
Database
```

- Controllers expose REST endpoints
- Services contain business logic
- Repositories handle database interactions

---

## Setup & Run Locally

Clone the repository:

```
git clone https://github.com/DannonGibby/stocktrack-backend.git
cd stocktrack-api
```

Run the application:

```
mvn spring-boot:run
```

The API will start on:

```
http://localhost:8080
```

---

## Example Endpoint

Retrieve all products:

```
GET /api/products
```

Create a product:

```
POST /api/products
```

---

## Related Projects

Frontend interface:  
https://github.com/DannonGibby/StockTrack-frontend

---

## Author

Dannon Gibby
