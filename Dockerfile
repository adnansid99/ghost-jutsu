# Use the Ghost 5 Alpine image as the base
FROM ghost:5-alpine

# Set the working directory inside the container
WORKDIR /var/lib/ghost

# Set environment variables
ENV database__connection__filename='/var/lib/ghost/content/data/ghost.db' \
  database__client='sqlite3' \
  url='http://localhost:8080' \
  NODE_ENV='development'

# Expose the port Ghost runs on
EXPOSE 8080

# Command to start Ghost
CMD ["node", "current/index.js"]
