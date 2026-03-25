# Excuse Generator

A simple Ruby on Rails web app that generates random excuses. Built as a learning project to explore Rails and Docker containerization.

## What it does

Displays a random excuse on the page. Each time you visit (or refresh), you get a new excuse.

## Tech stack

- **Ruby** 3.4.8
- **Rails** 8
- **SQLite** for the database
- **Docker** for containerization

## Running locally

Install dependencies and start the dev server:

```bash
bundle install
bin/rails server
```

Then visit `http://localhost:3000`.

## Running with Docker

The app includes a production-ready Dockerfile. To build and run it as a container:

```bash
# Build the image
docker build -t excuse_generator .

# Run the container
docker run -d -p 80:80 -e RAILS_MASTER_KEY=<value from config/master.key> --name excuse_generator excuse_generator
```

Then visit `http://localhost`.

### How the Docker setup works

The Dockerfile uses a **multi-stage build** to keep the final image small:

1. **Build stage** — installs build tools, gems, and precompiles assets
2. **Final stage** — copies only the compiled output into a slim Ruby image, leaving build tools behind

The app runs as a non-root user inside the container for security, and uses [Thruster](https://github.com/basecamp/thruster) as a lightweight HTTP server proxy in front of Rails.
