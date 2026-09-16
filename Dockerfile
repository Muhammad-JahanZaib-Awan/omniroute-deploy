FROM node:22

# Install OmniRoute globally
RUN npm install -g omniroute

# Explicitly instruct OmniRoute to bind onto Render's port profile
ENV PORT=10000
EXPOSE 10000

# Force OmniRoute via flags to stick to port 10000 and the correct host mapping
CMD ["omniroute", "--port", "10000", "--host", "0.0.0.0"]
