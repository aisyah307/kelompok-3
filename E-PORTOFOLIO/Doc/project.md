
### API Documentation

#### Base URL: `/api`
---

### project Endpoints

#### Create project
- **URL**: `/projects`
- **Method**: `POST`
- **Request Body**:
  ```json
   {
    "portfolio_id": 1,
    "title": "Project Alpha",
    "description": "A project about...",
    "link": "http://example.com/project-alpha"
  }
  ```
- **Response**:
  ```json
   {
    "project_id": 1,
    "portfolio_id": 1,
    "title": "Project Alpha",
    "description": "A project about...",
    "link": "http://example.com/project-alpha",
    "created_at": "2023-06-01T10:00:00.000Z",
    "updated_at": "2023-06-01T10:00:00.000Z"
  }
  ```

#### Get project by ID
- **URL**: `/projects/:project_id`
- **Method**: `GET`
- **URL Parameters**:
  - `project_id` (integer): ID of the project to retrieve.
- **Response**:
  ```json
  {
  "project_id": 1,
  "portfolio_id": 1,
  "title": "Project Alpha",
  "description": "A project about...",
  "link": "http://example.com/project-alpha",
  "created_at": "2023-06-01T10:00:00.000Z",
  "updated_at": "2023-06-01T10:00:00.000Z"
  }
  ```

#### Update project
- **URL**: `/projects/:project_id`
- **Method**: `PUT`
- **URL Parameters**:
  - `project_id` (integer): ID of the project to update.
- **Request Body**:
  ```json
  {
  "portfolio_id": 1,
  "title": "Project Alpha",
  "description": "A project about...",
  "link": "http://example.com/project-alpha"
  }
  ```
- **Response**:
  ```json
   {
  "project_id": 1,
  "portfolio_id": 1,
  "title": "Project Alpha",
  "description": "A project about...",
  "link": "http://example.com/project-alpha",
  "created_at": "2023-06-01T10:00:00.000Z",
  "updated_at": "2023-06-01T10:00:00.000Z"
  }
  ```

#### Delete project
- **URL**: `/projects/:project_id`
- **Method**: `DELETE`
- **URL Parameters**:
  - `project_id` (integer): ID of the project to delete.
- **Response**:
  ```json
  {
    "message": "project deleted successfully."
  }
  ```
