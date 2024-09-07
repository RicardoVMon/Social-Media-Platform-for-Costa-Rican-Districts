# Social Media Platform for Costa Rican Districts

A dynamic social media platform where users can follow districts in Costa Rica, browse news updates, post local news, and engage with content specific to their region. Built using PHP, MySQL, and Apache, this project focuses on creating a localized experience for users to stay connected with other districts.

## Features

- **Follow Districts:** Users can follow other districts to stay updated with the latest news and announcements.
- **Post News:** Users can create and post news updates specific to their own district.
- **Browse Content:** A simple and intuitive browsing function allows users to explore posts and news from other districts.
- **User Authentication:** Secure login and registration system for users, ensuring data privacy and access control.
- **Responsive Design:** The platform is designed for smooth navigation on both desktop and mobile devices.

## Technologies Used

- **Frontend:** HTML, CSS, JavaScript
- **Backend:** PHP
- **Database:** MySQL
- **Server:** Apache
- **Version Control:** Git

## Installation

### Prerequisites

To run this project locally, you'll need to have the following installed:

- [XAMPP](https://www.apachefriends.org/index.html) (includes PHP, MySQL, and Apache)
- A web browser (e.g., Google Chrome, Firefox)

### Setup

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/districts-social-media-platform.git
   cd districts-social-media-platform
   ```

2. Set up the MySQL database:

   - Open XAMPP and start **Apache** and **MySQL**.
   - Go to **phpMyAdmin** by visiting `http://localhost/phpmyadmin` in your browser.
   - Create a new database called `communityalert`.
   - Import the provided SQL file `BDFinal-CommunityAlert.sql` into the `communityalert` database using phpMyAdmin.

3. Configure the project:

   - Update the database connection settings in the `dbconnection.php` file:

   ```php
   <?php

   function abrirConexion()
   {
       return mysqli_connect("127.0.0.1:3306", "root", "", "communityalert");
   }

   function cerrarConexion($conexion)
   {
       mysqli_close($conexion);
   }
   ```

   Ensure the MySQL credentials and database name match your local setup.

4. Start the XAMPP server:

   - Open the **XAMPP Control Panel** and click on "Start" for both Apache and MySQL.

5. Access the platform by navigating to `http://localhost/districts-social-media-platform` in your browser.

## Usage

1. **Register an Account:** Create a new account with your email and password.
2. **Follow Districts:** After logging in, browse available districts and follow them to get updates.
3. **Post News:** You can post news relevant to your district by navigating to the "My District" section.
4. **Browse Content:** Explore updates from other districts you follow on your news feed.

## Contributing

If you'd like to contribute to this project, feel free to submit a pull request or open an issue for any bugs or improvements.
