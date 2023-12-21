# Server
the backend for the app

The server is a node.js server using express.js. The server also uses cors and .env variables for sensitive information such as database username and password. 
The database is a PostgreSQL database on ElephantSQL which then contains user info such as usernames and settings linked to the user.

Many of our functions from the frontend fetches info about events and restaurants via the backend.

To note regarding .env and DB; If .env variables are changed the future maintenance team must be notified.
The .env variables are not defined in the dockerfile or in git repository. In case of change they need to be manually updated in the folder used for docker build (as well as in local code if need be during development) so that it can then be rebuilt correctly. This is to maintain the database connection.
