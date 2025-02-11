# User-Login-Demo

A technical assignment to develop a secure frontend client for user login and conditional data display. This demo application allows users to enter their userID and password, performs client-side MD5 hashing (so that the raw password is never transferred), and fetches user data from the server using a conditional API call. If the logged-in user is an **admin**, the application displays all users; otherwise, only the data for the logged-in user is shown.

## Table of Contents

- [Features](#features)
- [Technologies](#technologies)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [Deployment](#deployment)
  - [Deploying on Netlify](#deploying-on-netlify)
  - [Proxy Redirect Setup](#proxy-redirect-setup)
- [Project Structure](#project-structure)
- [License](#license)

## Features

- **Secure Login:**  
  - Users enter their userID and password.
  - Client-side MD5 hashing is performed so that the raw password is never transmitted.
- **Conditional Data Fetch:**  
  - If the logged-in user's role is **admin**, all user records are displayed.
  - Otherwise, only the logged-in user's record is shown.
- **Responsive UI:**  
  - Built with Bootstrap for a clean, responsive design.
- **Cloud Deployment Ready:**  
  - Ready for deployment on Netlify (or Vercel) with proxy redirect support.

## Technologies

- **HTML/CSS/JavaScript:** Frontend structure and interactivity.
- **Bootstrap 5:** For responsive design and styling.
- **Supabase:** Backend database and API.
- **MD5 (blueimp-md5):** For client-side password hashing.
- **Netlify:** For cloud hosting and proxy redirect configuration.

## Getting Started

To run this project locally, follow these steps:

### Prerequisites

- A modern web browser
- A text editor or IDE (e.g., Visual Studio Code)
- [Git](https://git-scm.com/) (optional, for version control)
- A [Supabase](https://supabase.io) project with a `users` table containing at least:
  - `userid` (VARCHAR)
  - `password_hash` (VARCHAR, MD5 hash of the password)
  - `role` (TEXT)

### Installation

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/SanketRt/User-Login-Demo.git
   cd User-Login-Demo
