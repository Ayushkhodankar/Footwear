# Footwear
## Project Overview
The Footwear Ticket Raising System is a web-based application designed to manage and resolve issues efficiently within a footwear company. Users can raise issues by submitting tickets, and administrators can manage these tickets through a comprehensive admin dashboard. This system also includes session tracking for user activities to ensure secure and consistent user experiences.

## Key Features
- **User Ticket Submission:** 
  - Users can easily submit tickets detailing the issues they encounter.
  - Each ticket includes relevant information such as the issue type, priority level, and a description.

- **Admin Dashboard:**
  - Administrators have access to a full-featured dashboard where they can view, manage, and resolve tickets.
  - Admins can assign tickets to team members, update ticket statuses, and monitor the progress of each issue.

- **Session Tracking:**
  - Integrated session tracking to monitor user activity within the website.
  - Ensures that user sessions are secure and that activities are logged for audit purposes.

## Technology Stack
- **Frontend:**
  - **JavaServer Pages (JSP):** Used for creating dynamic web pages that serve as the user interface. The landing pages are developed using JSP to ensure a seamless and interactive experience for users.

- **Backend:**
  - **Servlets:** Handle the processing of user requests, manage the business logic, and interact with the database.
  - **Hibernate:** Used for ORM (Object-Relational Mapping) to manage database interactions efficiently. Hibernate ensures that data is stored and retrieved from the database with minimal boilerplate code, allowing for a clean and maintainable codebase.

## Project Structure
- **/src:** Contains all the source code, including the servlets, JSP files, and Hibernate configurations.
- **/webapp:** Contains the web pages, including JSP files and static resources such as CSS and JavaScript files.
- **/WEB-INF:** Includes configuration files, libraries, and web.xml for servlet mappings.
- **/resources:** Contains configuration files for Hibernate and other resources required by the application.
  
## Installation and Setup
1. **Clone the Repository:**
   ```bash
   git clone https://github.com/Ayushkhodankar/footwear.git
   cd footwear
2. Set up the Database:
    Create a MySQL (or other preferred database) and configure the database settings in the Hibernate configuration file.
3. Build and Deploy:
Compile the project using Maven or your preferred build tool.
Deploy the WAR file to your preferred servlet container (e.g., Apache Tomcat).
Access the Application:

4. Navigate to http://localhost:8080/footwear your web browser to access the landing page.
## Contributing
We welcome contributions to enhance the functionality of the Footwear Ticket Raising System. Please fork the repository and create a pull request for any features or bug fixes.

