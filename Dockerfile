FROM node:22

# Install OmniRoute globally
RUN npm install -g omniroute

# Explicitly tell Render and OmniRoute to use port 10000
ENV PORT=10000
EXPOSE 10000

# Start OmniRoute and pass the port variable directly to the command line flag
CMD ["omniroute", "--port", "10000"]
