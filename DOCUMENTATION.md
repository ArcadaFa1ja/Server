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

- **Description:** Establishes a connection to the PostgreSQL database using the `pg` library.

### 3. User settings
  #### a. Get User Settings
- **Endpoint:** `GET /api/getUserSettings/:user_id`
- **Description:** Retrieves user settings based on user ID.
- **Response:** JSON object with user settings or a 404 error if not found.