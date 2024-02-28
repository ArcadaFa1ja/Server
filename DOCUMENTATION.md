# Server Documentation

## Overview

`server.js` is the main server-side script for handling API requests and managing database connections. It is built using Node.js and Express framework.

## Dependencies

- [dotenv](https://www.npmjs.com/package/dotenv): Loads environment variables from a .env file.
- [express](https://www.npmjs.com/package/express): Web framework for handling HTTP requests.
- [body-parser](https://www.npmjs.com/package/body-parser): Parses incoming request bodies in a middleware before handling.
- [cors](https://www.npmjs.com/package/cors): Enables Cross-Origin Resource Sharing.
- [pg](https://www.npmjs.com/package/pg): PostgreSQL client library for Node.js.

## Configuration

- Environment variables are loaded from a `.env` file using `dotenv`.

## API Endpoints

### 1. Communication Test

- **Endpoint:** `GET /api/test`
- **Description:** Endpoint to test server communication.
- **Response:** JSON object with a message.

### 2. Database Connection

- **Description:** Establishes a connection to the PostgreSQL database using the `pg` library. Tests the connection to the PostgreSQL database by executing a simple query on start to retrieve the current timestamp.
- **Query:** `SELECT NOW()`
- **Response:** If the query is executed successfully, it logs a message confirming the successful database connection and prints the current timestamp.
In case of an error, it logs an error message with the details of the error stack.

### 3. User settings
#### a. Get User Settings
- **Endpoint:** `GET /api/getUserSettings/:user_id`
- **Description:** Retrieves user settings based on user ID.
- **Response:** JSON object with user settings or a 404 error if not found.
#### b. Check Username
- **Endpoint:** `GET /api/checkUsername/:username`
- **Description:** Checks if a username exists in the 'user_settings' table.
- **Response:** JSON object indicating whether the username exists.
#### c. Login
- **Endpoint:** `POST api/login`
- **Description:** Authenticates / logs in user based on username.
- **Request payload:**
  ```json
  {
    "username":"example_user"
  }
  ```
- **Response:** JSON object indicating login success or failure.
#### d. Add user
- **Endpoint:** `POST api/addUser`
- **Description:** Adds a new user to the 'user_settings' table.
- **Request payload:**
  ```json
  {
    "username":"newUser"
  }
  ```
- **Response:** JSON object with the new username.
#### e. Update user settings
- **Endpoint:** `PUT api/updateUserSettings`
- **Description:** Updates user settings.
- **Request payload:**
 ```json
  {
    "user_id": 1,
    "widgets": {...},
    "diets": {...},
    "associations": {...},
    "weatherApiKey": "your_api_key",
    "scheduleLink": "https://your-schedule-link.fi/1234xyz"
  }
```
- **Response:** JSON object with a message indicating success and the number of rows affected.

### 6. Kide Fetch
- **Endpoint:** `GET api/getKide`
- **Description:** Fetches data from Kide API for different organizations.
- **Response:** JSON object with Kide data for all organizations.

### 7. Restaurants
- **Endpoint:** `GET api/getMenu` 
- **Description:** Fetches menu data for different restaurants.
- **Response:** JSON object with menu data for all restaurants.

  
