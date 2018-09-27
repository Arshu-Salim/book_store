# ----
# Install Maven
FROM maven:3.5-jdk-8-alpine
# Install project dependencies and keep sources
# make source folder
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
# install maven dependency packages (keep in image)
COPY . /usr/src/app
RUN mvn -T 1C install -DskipTests && rm -rf target
# copy other source files (keep in image)
COPY src /usr/src/app/src