
### API Documentation

#### Base URL: `/api`
---

### Student Endpoints

#### Create Student
- **URL**: `/students`
- **Method**: `POST`
- **Request Body**:
  ```json
    {
    "first_name": "Alice",
    "last_name": "Johnson",
    "email": "alice.johnson@example.com",
    "password": "234",
    "date_of_birth": "2001-05-15T00:00:00.000Z",
    "profile_image": null
    }

  ```
- **Response**:
  ```json
   {
  "student_id": 1,
  "first_name": "Alice",
  "last_name": "Johnson",
  "email": "alice.johnson@example.com",
  "password": "243",
  "date_of_birth": "2001-05-15T00:00:00.000Z",
  "profile_image": null,
  "created_at": "2024-06-13T11:00:00.000Z",
  "updated_at": "2024-06-13T11:00:00.000Z"
  }

  ```

#### Get Student by ID
- **URL**: `/students/:student_id`
- **Method**: `GET`
- **URL Parameters**:
  - `student_id` (integer): ID of the Student to retrieve.
- **Response**:
  ```json
    {
    "student_id": 1,
    "first_name": "Alice",
    "last_name": "Johnson",
    "email": "alice.johnson@example.com",
    "password": "243",
    "date_of_birth": "2001-05-15T00:00:00.000Z",
    "profile_image": null,
    "created_at": "2024-06-13T11:00:00.000Z",
    "updated_at": "2024-06-13T11:00:00.000Z"
    }

  ```

#### Update Student
- **URL**: `/students/:student_id`
- **Method**: `PUT`
- **URL Parameters**:
  - `student_id` (integer): ID of the Student to update.
- **Request Body**:
  ```json
  {
  "first_name": "Alice",
  "last_name": "Johnson",
  "email": "alice.johnson@example.com",
  "password": "243",
  "date_of_birth": "2001-05-15T00:00:00.000Z",
  "profile_image": null,
  "created_at": "2024-06-13T11:00:00.000Z",
  "updated_at": "2024-06-13T11:00:00.000Z"
  }

  ```
- **Response**:
  ```json
   {
  "student_id": 1,
  "first_name": "Alice",
  "last_name": "Johnson",
  "email": "alice.johnson@example.com",
  "password": "243",
  "date_of_birth": "2001-05-15T00:00:00.000Z",
  "profile_image": null,
  "created_at": "2024-06-13T11:00:00.000Z",
  "updated_at": "2024-06-13T11:00:00.000Z"
  }

  ```

#### Delete Student
- **URL**: `/students/:student_id`
- **Method**: `DELETE`
- **URL Parameters**:
  - `student_id` (integer): ID of the Student to delete.
- **Response**:
  ```json
  {
    "message": "Student deleted successfully."
  }
  ```
