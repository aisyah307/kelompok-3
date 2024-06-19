
### API Documentation

#### Base URL: `/api`
---

### skillstudent Endpoints

#### Create skillstudent
- **URL**: `/skillstudents`
- **Method**: `POST`
- **Request Body**:
  ```json
    {
    "student_id": 1,
    "skill_id": 1,
    "proficiency": "BEGINNER"
    }

  ```
- **Response**:
  ```json
    {
    "id": 1,
    "student_id": 1,
    "skill_id": 1,
    "proficiency": "BEGINNER",
    "created_at": "2023-06-01T10:00:00.000Z",
    "updated_at": "2023-06-01T10:00:00.000Z"
    }

  ```

#### Get skillstudent by ID
- **URL**: `/skillstudents/:skillstudent_id`
- **Method**: `GET`
- **URL Parameters**:
  - `skillstudent_id` (integer): ID of the skillstudent to retrieve.
- **Response**:
  ```json
  {
  "id": 1,
  "student_id": 1,
  "skill_id": 1,
  "proficiency": "BEGINNER",
  "created_at": "2023-06-01T10:00:00.000Z",
  "updated_at": "2023-06-01T10:00:00.000Z"
   }

  ```

#### Update skillstudent
- **URL**: `/skillstudents/:skillstudent_id`
- **Method**: `PUT`
- **URL Parameters**:
  - `skillstudent_id` (integer): ID of the skillstudent to update.
- **Request Body**:
  ```json
 
  {
  "student_id": 1,
  "skill_id": 1,
  "proficiency": "BEGINNER"
  }

  ```
- **Response**:
  ```json
    {
    "id": 1,
    "student_id": 1,
    "skill_id": 1,
    "proficiency": "BEGINNER",
    "created_at": "2023-06-01T10:00:00.000Z",
    "updated_at": "2023-06-01T10:00:00.000Z"
    }

  ```

#### Delete skillstudent
- **URL**: `/skillstudents/:skillstudent_id`
- **Method**: `DELETE`
- **URL Parameters**:
  - `skillstudent_id` (integer): ID of the skillstudent to delete.
- **Response**:
  ```json
  {
    "message": "skillstudent deleted successfully."
  }
  ```
