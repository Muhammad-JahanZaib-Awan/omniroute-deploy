FROM node:20
RUN npm install -g omniroute
ENV PORT=10000
EXPOSE 10000
CMD ["omniroute", "--port", "10000"]
