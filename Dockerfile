FROM node:22

# Install OmniRoute globally
RUN npm install -g omniroute

# Explicitly instruct OmniRoute to bind onto Render's port profile
ENV PORT=10000
EXPOSE 10000

# Start OmniRoute correctly without the invalid host flag
CMD ["omniroute", "--port", "10000"]
