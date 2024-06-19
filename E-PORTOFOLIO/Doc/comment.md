
### API Documentation

#### Base URL: `/api`
---

### media Endpoints

#### Create media
- **URL**: `/medias`
- **Method**: `POST`
- **Request Body**:
  ```json
    {
    "portfolio_id": 1,
    "student_id": 1,
    "content": "Great portfolio!"
    }
  ```
- **Response**:
  ```json
    {
    "comment_id": 1,
    "portfolio_id": 1,
    "student_id": 1,
    "content": "Great portfolio!",
    "created_at": "2023-06-01T10:00:00.000Z",
    "updated_at": "2023-06-01T10:00:00.000Z"
    }

  ```

#### Get media by ID
- **URL**: `/medias/:media_id`
- **Method**: `GET`
- **URL Parameters**:
  - `media_id` (integer): ID of the media to retrieve.
- **Response**:
  ```json
  {
  "comment_id": 1,
  "portfolio_id": 1,
  "student_id": 1,
  "content": "Great portfolio!",
  "created_at": "2023-06-01T10:00:00.000Z",
  "updated_at": "2023-06-01T10:00:00.000Z"
  }
  ```

#### Update media
- **URL**: `/medias/:media_id`
- **Method**: `PUT`
- **URL Parameters**:
  - `media_id` (integer): ID of the media to update.
- **Request Body**:
  ```json
    {
    "portfolio_id": 1,
    "student_id": 1,
    "content": "Great portfolio!"
    }
  ```
- **Response**:
  ```json
   {
  "comment_id": 1,
  "portfolio_id": 1,
  "student_id": 1,
  "content": "Great portfolio!",
  "created_at": "2023-06-01T10:00:00.000Z",
  "updated_at": "2023-06-01T10:00:00.000Z"
  }
  ```

#### Delete media
- **URL**: `/medias/:media_id`
- **Method**: `DELETE`
- **URL Parameters**:
  - `media_id` (integer): ID of the media to delete.
- **Response**:
  ```json
  {
    "message": "media deleted successfully."
  }
  ```
