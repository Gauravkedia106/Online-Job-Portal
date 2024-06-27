"# Online-Job-Portal" 

Online Job Portal Project

#### Overview
The online job portal project is a web-based application designed to simplify the job search and application process for job seekers while providing a platform for administrators to manage job postings efficiently. The system consists of two main modules: the Admin Module and the User Module, each with distinct functionalities and roles.

#### Technologies Used
- *Frontend:* HTML, CSS, Bootstrap
- *Backend:* Java Servlets, JSP (JavaServer Pages), JSTL (JavaServer Pages Standard Tag Library)
- *Database:* MySQL
- *Database Connectivity:* JDBC (Java Database Connectivity)

#### Modules

1. *Admin Module*
    - *Role:* Only accessible by administrators.
    - *Functionalities:*
        - *Post Job:* Admin can create new job postings with details such as job title, description, requirements, location, salary, and other relevant information.
        - *Edit Job:* Admin can update existing job postings to reflect changes in job details or requirements.
        - *Delete Job:* Admin can remove job postings that are no longer relevant or have been filled.
        - *View Applications:* Admin can view the list of applicants for each job and their application details.

2. *User Module*
    - *Role:* Accessible by all users (job seekers).
    - *Functionalities:*
        - *Sign Up:* New users can create an account by providing their details such as name, email, password, and other necessary information.
        - *Login:* Existing users can log in using their credentials to access the portal.
        - *View Jobs:* Users can browse through the list of job postings. They can search and filter jobs based on criteria such as job title, location, or company.
        - *View Job Details:* Users can view detailed descriptions of job postings, including job responsibilities, requirements, and application process.
        - *Apply for Job:* Users can apply for jobs by submitting their resume and other required information through the portal.
        - *Manage Profile:* Users can update their profile information, upload resumes, and view their application history.

#### Detailed Functionality Description

1. *Admin Module*
    - *Dashboard:* The admin dashboard provides an overview of the job postings and applications.
    - *Job Posting Form:* A form where admins can enter job details. Fields include job title, company name, job description, qualifications, experience required, job location, and salary.
    - *Job List Management:* A table or list view of all job postings with options to edit or delete each posting. 
    - *Application Review:* A section where admins can see the list of applications for each job posting, view applicant details, and manage the hiring process.

2. *User Module*
    - *Home Page:* Displays a welcome message and options to log in or sign up.
    - *Registration Form:* A form for new users to sign up by entering their personal information, contact details, and creating a password.
    - *Login Form:* Allows existing users to log in using their email and password.
    - *Job Search:* A search bar and filters to help users find jobs based on keywords, location, or category.
    - *Job Listings:* A paginated list of available job postings with a brief overview of each job.
    - *Job Detail Page:* Detailed view of the job posting with all relevant information and an "Apply" button.
    - *Application Form:* A form where users can submit their application by attaching their resume and providing a cover letter.
    - *User Profile:* A section where users can view and edit their profile details, upload a new resume, and track their job applications.

#### Database Design
- *Tables:*
    - *Users:* Stores user information such as user_id, name, email, password, contact information, and resume path.
    - *Admins:* Stores admin information such as admin_id, name, email, and password.
    - *Jobs:* Stores job postings with fields like job_id, job title, description, requirements, location, salary, and admin_id (foreign key).
    - *Applications:* Stores job applications with fields like application_id, job_id (foreign key), user_id (foreign key), resume path, and application status.

#### Key Features
- *Responsive Design:* The portal is built with Bootstrap to ensure it is responsive and works well on different devices.
- *Secure Authentication:* User passwords are securely stored, and authentication mechanisms are in place to protect user data.
- *User-Friendly Interface:* The portal provides an intuitive and easy-to-navigate interface for both admins and users.
- *Database Integration:* MySQL database is used to store all user, admin, job, and application data, ensuring efficient data management and retrieval.

This detailed description should provide a comprehensive overview of your online job portal project, highlighting its structure, functionalities, and the technologies used.
