
### API Documentation

#### Base URL: `/api`
---

### Skill Endpoints

#### Create Skill
- **URL**: `/skills`
- **Method**: `POST`
- **Request Body**:
  ```json
   
  {
    "name": "JavaScript",
    "description": "Proficient in JavaScript programming."
  }
  ```
- **Response**:
  ```json
  
  {
    "skill_id": 1,
    "name": "JavaScript",
    "description": "Proficient in JavaScript programming."
  }
  ```

#### Get Skill by ID
- **URL**: `/skills/:skill_id`
- **Method**: `GET`
- **URL Parameters**:
  - `skill_id` (integer): ID of the Skill to retrieve.
- **Response**:
  ```json
  
  {
    "skill_id": 1,
    "name": "JavaScript",
    "description": "Proficient in JavaScript programming."
  }
  ```

#### Update Skill
- **URL**: `/skills/:skill_id`
- **Method**: `PUT`
- **URL Parameters**:
  - `skill_id` (integer): ID of the Skill to update.
- **Request Body**:
  ```json
 
  {
    "name": "JavaScript",
    "description": "Proficient in JavaScript programming."
  }
  ```
- **Response**:
  ```json
  
  {
    "skill_id": 1,
    "name": "JavaScript",
    "description": "Proficient in JavaScript programming."
  }
  ```

#### Delete Skill
- **URL**: `/skills/:skill_id`
- **Method**: `DELETE`
- **URL Parameters**:
  - `skill_id` (integer): ID of the Skill to delete.
- **Response**:
  ```json
  {
    "message": "Skill deleted successfully."
  }
  ```
