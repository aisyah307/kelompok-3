
### API Documentation

#### Base URL: `/api`
---

### portofolio Endpoints

#### Create portofolio
- **URL**: `/portofolios`
- **Method**: `POST`
- **Request Body**:
  ```json
   {
    "student_id": 1,
    "title": "My Projects",
    "description": "Collection of my projects"
  }
  ```
- **Response**:
  ```json
   {
    "portfolio_id": 1,
    "student_id": 1,
    "title": "My Projects",
    "description": "Collection of my projects",
    "created_at": "2023-06-01T10:00:00.000Z",
    "updated_at": "2023-06-01T10:00:00.000Z"
  }
  ```

#### Get portofolio by ID
- **URL**: `/portofolios/:portofolio_id`
- **Method**: `GET`
- **URL Parameters**:
  - `portofolio_id` (integer): ID of the portofolio to retrieve.
- **Response**:
  ```json
  {
    "portfolio_id": 1,
    "student_id": 1,
    "title": "My Projects",
    "description": "Collection of my projects",
    "created_at": "2023-06-01T10:00:00.000Z",
    "updated_at": "2023-06-01T10:00:00.000Z"
  }
  ```

#### Update portofolio
- **URL**: `/portofolios/:portofolio_id`
- **Method**: `PUT`
- **URL Parameters**:
  - `portofolio_id` (integer): ID of the portofolio to update.
- **Request Body**:
  ```json
  {
    "student_id": 1,
    "title": "My Projects",
    "description": "Collection of my projects"
  }
  ```
- **Response**:
  ```json
   {
    "portfolio_id": 1,
    "student_id": 1,
    "title": "My Projects",
    "description": "Collection of my projects",
    "created_at": "2023-06-01T10:00:00.000Z",
    "updated_at": "2023-06-01T10:00:00.000Z"
  }
  ```

#### Delete portofolio
- **URL**: `/portofolios/:portofolio_id`
- **Method**: `DELETE`
- **URL Parameters**:
  - `portofolio_id` (integer): ID of the portofolio to delete.
- **Response**:
  ```json
  {
    "message": "portofolio deleted successfully."
  }
  ```
