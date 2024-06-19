
### API Documentation

#### Base URL: `/api`
---

### certificate Endpoints

#### Create certificate
- **URL**: `/certificates`
- **Method**: `POST`
- **Request Body**:
  ```json
   {
  "student_id": 1,
  "name": "Web Development",
  "issuer": "ABC Institute",
  "date_issued": "2023-05-01T00:00:00.000Z",
  "description": "Certified in Web Development",
  "file_url": "http://example.com/certificates/web-dev.pdf"
  }

  ```
- **Response**:
  ```json
    {
    "certificate_id": 1,
    "student_id": 1,
    "name": "Web Development",
    "issuer": "ABC Institute",
    "date_issued": "2023-05-01T00:00:00.000Z",
    "description": "Certified in Web Development",
    "file_url": "http://example.com/certificates/web-dev.pdf"
    }
  ```

#### Get certificate by ID
- **URL**: `/certificates/:certificate_id`
- **Method**: `GET`
- **URL Parameters**:
  - `certificate_id` (integer): ID of the certificate to retrieve.
- **Response**:
  ```json
  {
  "certificate_id": 1,
  "student_id": 1,
  "name": "Web Development",
  "issuer": "ABC Institute",
  "date_issued": "2023-05-01T00:00:00.000Z",
  "description": "Certified in Web Development",
  "file_url": "http://example.com/certificates/web-dev.pdf"
  }

  ```

#### Update certificate
- **URL**: `/certificates/:certificate_id`
- **Method**: `PUT`
- **URL Parameters**:
  - `certificate_id` (integer): ID of the certificate to update.
- **Request Body**:
  ```json
  {
  "student_id": 1,
  "name": "Web Development",
  "issuer": "ABC Institute",
  "date_issued": "2023-05-01T00:00:00.000Z",
  "description": "Certified in Web Development",
  "file_url": "http://example.com/certificates/web-dev.pdf"
  }

  ```
- **Response**:
  ```json
  {
  "certificate_id": 1,
  "student_id": 1,
  "name": "Web Development",
  "issuer": "ABC Institute",
  "date_issued": "2023-05-01T00:00:00.000Z",
  "description": "Certified in Web Development",
  "file_url": "http://example.com/certificates/web-dev.pdf"
  }

  ```

#### Delete certificate
- **URL**: `/certificates/:certificate_id`
- **Method**: `DELETE`
- **URL Parameters**:
  - `certificate_id` (integer): ID of the certificate to delete.
- **Response**:
  ```json
  {
    "message": "certificate deleted successfully."
  }
  ```
