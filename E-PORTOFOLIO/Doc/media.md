
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
    "project_id": 1,
    "media_type": "IMAGE",
    "media_url": "http://example.com/images/project.jpg",
    "description": "Screenshot of project"
  }
  ```
- **Response**:
  ```json
    {
    "media_id": 1,
    "project_id": 1,
    "media_type": "IMAGE",
    "media_url": "http://example.com/images/project.jpg",
    "description": "Screenshot of project"
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
    "media_id": 1,
    "project_id": 1,
    "media_type": "IMAGE",
    "media_url": "http://example.com/images/project.jpg",
    "description": "Screenshot of project"
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
    "project_id": 1,
    "media_type": "IMAGE",
    "media_url": "http://example.com/images/project.jpg",
    "description": "Screenshot of project"
  }
  ```
- **Response**:
  ```json
   {
    "media_id": 1,
    "project_id": 1,
    "media_type": "IMAGE",
    "media_url": "http://example.com/images/project.jpg",
    "description": "Screenshot of project"
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
