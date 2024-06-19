
### API Documentation

#### Base URL: `/api`
---

### achievement Endpoints

#### Create achievement
- **URL**: `/achievements`
- **Method**: `POST`
- **Request Body**:
  ```json
  {
  "student_id": 1,
  "title": "Hackathon Winner",
  "description": "Won the 2023 Hackathon",
  "date_achieved": "2023-04-01T00:00:00.000Z"
  }

  ```
- **Response**:
  ```json
   {
  "achievement_id": 1,
  "student_id": 1,
  "title": "Hackathon Winner",
  "description": "Won the 2023 Hackathon",
  "date_achieved": "2023-04-01T00:00:00.000Z"
  }

  ```

#### Get achievement by ID
- **URL**: `/achievements/:achievement_id`
- **Method**: `GET`
- **URL Parameters**:
  - `achievement_id` (integer): ID of the achievement to retrieve.
- **Response**:
  ```json
    {
    "achievement_id": 1,
    "student_id": 1,
    "title": "Hackathon Winner",
    "description": "Won the 2023 Hackathon",
    "date_achieved": "2023-04-01T00:00:00.000Z"
    }


  ```

#### Update achievement
- **URL**: `/achievements/:achievement_id`
- **Method**: `PUT`
- **URL Parameters**:
  - `achievement_id` (integer): ID of the achievement to update.
- **Request Body**:
  ```json
  {
  "student_id": 1,
  "title": "Hackathon Winner",
  "description": "Won the 2023 Hackathon",
  "date_achieved": "2023-04-01T00:00:00.000Z"
  }


  ```
- **Response**:
  ```json
  {
  "achievement_id": 1,
  "student_id": 1,
  "title": "Hackathon Winner",
  "description": "Won the 2023 Hackathon",
  "date_achieved": "2023-04-01T00:00:00.000Z"
  }


  ```

#### Delete achievement
- **URL**: `/achievements/:achievement_id`
- **Method**: `DELETE`
- **URL Parameters**:
  - `achievement_id` (integer): ID of the achievement to delete.
- **Response**:
  ```json
  {
    "message": "achievement deleted successfully."
  }
  ```
