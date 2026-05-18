# 🎬 End-to-End CI/CD Pipeline: Dockerized Movie Ticket Application

## 📌 Project Overview
This project demonstrates a modern, fully automated DevOps workflow. It features a continuous integration and continuous deployment (CI/CD) pipeline built with Jenkins that takes a Java web application from source code to a live Docker container with zero manual intervention.

## 🏗️ Architecture & Tools
* **Version Control:** Git & GitHub
* **CI/CD Orchestration:** Jenkins
* **Build Tool:** Maven (Java 21)
* **Code Quality Analysis:** SonarQube
* **Artifact Storage:** Sonatype Nexus Repository
* **Containerization:** Docker
* **Hosting:** AWS EC2 (Amazon Linux)

## ⚙️ The Pipeline Flow
1. **Code Checkout:** Jenkins pulls the latest source code from the `main` branch.
2. **Quality Gate:** Maven executes a SonarQube analysis to check for bugs, vulnerabilities, and code smells.
3. **Build:** Maven compiles the code and packages it into a `.war` artifact.
4. **Artifact Storage:** The compiled artifact is securely stored in a Nexus repository.
5. **Containerization (Docker):** * A MariaDB database image is built and started.
   * The Java application is wrapped inside a Tomcat 9 Docker image.
6. **Deployment:** The old containers are wiped, and the new containers are spun up and linked together on port 80.

## 📸 Project Snapshots

### 1. The Live Application
Here is the final Dockerized web application running live on the AWS EC2 instance.
![The Result](Screenshorts/The%20Result.png)

### 2. The CI/CD Pipeline Engine
Our fully automated Jenkins declarative pipeline showing all green stages from code checkout to deployment.
![The Engine](Screenshorts/The%20Engine.png)

### 3. Code Quality & Security
The SonarQube quality gate passing the code with zero bugs, zero vulnerabilities, and zero code smells.
![The Security](Screenshorts/The%20Security.png)

### 4. Artifact Vault
The compiled Java `.war` file safely versioned and stored in the Sonatype Nexus repository.
![The Storage](Screenshorts/The%20Storage.png)
