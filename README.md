# 🏠 InteriorDesignPro

A modern and elegant web application for showcasing interior design projects. Built using **Flask**, **HTML/CSS**, and **Bootstrap**, this app allows users to explore featured projects, learn about services, and get in touch via a contact form.

---
## 📖 Overview

**InteriorDesignPro** is designed for interior designers and design studios to present their work in a clean and engaging format. It features:

- A stylish homepage with hero and CTA sections.
- About and Project pages to explain expertise.
- Contact page with form submission.
- Responsive UI with elegant styling and modern layout.

---

## 🚀 Features

- 🖼️ Hero section with dynamic image
- 📁 Project gallery with modern cards
- 🧾 About page with structured company story
- 📬 Contact form (with Flask back-end)
- 🧑‍💻 Clean and modular HTML templates
- 🎨 Custom CSS for each section
- 📱 Fully responsive design

---

## 🧰 Tech Stack

- **Frontend**: HTML5, CSS3, Bootstrap 5
- **Backend**: Python 3, Flask
- **Deployment**: Flask local server 

---

## 📁 Project Structure

```bash
interior-web-app/
├── app
│   ├── __init__.py
│   ├── routes.py
│   ├── templates
│   │   ├── base.html
│   │   ├── home.html
│   │   ├── about.html
│   │   ├── projects.html
│   │   └── contact.html
│   └── static
│       ├── css
│       │   └── styles.css
│       │   └── navbar.css
│       │   └── footer.css
│       │   └── home.css
│       │   └── contact.css
│       │   └── projects.css
│       │   └── about.css
├── requirements.txt
├── run.py
└── README.md
````

---

## ⚙️ Setup Instructions
## ⚙️ Setup Instructions

1. **Fork the repository**
   - Go to the original repo: [sparknet-innovations/interior-web-app](https://github.com/sparknet-innovations/interior-web-app)
   - Click **Fork** in the top-right to create your own copy.
   ![image](https://github.com/user-attachments/assets/98bed11a-9c27-46c7-817c-6d7b21e41ea6)

2. **Create a new branch**

   ```bash
   git checkout -b feature/update-readme
   ```
   ![image](https://github.com/user-attachments/assets/f389b37d-f633-44c0-9e21-0bfc41f816d7)
   
4. **Clone Fork Repository**

   ```bash
   git clone git@github.com:Prasadrasal2002/interior-web-app.git
   cd interior-web-app
   ```
   ![image](https://github.com/user-attachments/assets/8e365c7e-6d5c-4929-980e-6cbf3984fc24)


6. **Configure SSH for GitHub**
   ```bash
   ssh-keygen -t rsa -b 4096 -C "rasalprasad2002@gmail.com"
   ```
   ![image](https://github.com/user-attachments/assets/4cdbcb17-a3ed-4660-a8ea-b04379d0a114)

   Copy the public key:
   ```bash
   cat ~/.ssh/id_rsa.pub
   ```
   Go to GitHub > Settings > SSH and GPG Keys > New SSH Key > Paste and save

7. **Create a virtual environment**

   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows use venv\Scripts\activate
   ```
   
8. **Install dependencies**

   ```bash
   pip install -r requirements.txt
   ```
   ![image](https://github.com/user-attachments/assets/dec9dc72-81c0-486d-abca-652ef5f0e17b)

9. **Run the Flask app**

   ```bash
   python run.py
   ```
   ![image](https://github.com/user-attachments/assets/cd87b30f-73cf-477c-bdb2-14ff7ed42ab0)

10. **Open your browser**
   Visit `http://127.0.0.1:5000` to see the app in action.
   ![image](https://github.com/user-attachments/assets/04d02ad5-86dc-4fe2-b9e0-abf94d31ea44)

11. Install required tools:
    
    a) Python 3.x:
       Download: https://www.python.org/downloads/

       Verify:

       ```bash
       python --version
       ```

    b) Flask:
       Installed using a virtual environment:

       ```bash
       python -m venv venv
       venv\Scripts\activate  # activate on Windows
       pip install -r requirements.txt
       ```

    c) Docker:
       Download: https://www.docker.com/products/docker-desktop/
       >> Windows 10/11 with WSL 2 enabled
       >> Enable Docker after installation and sign in with DockerHub.

       Verify:

       ```bash
       docker --version
       ```

    d) Git:
       Download: https://git-scm.com/
       
       Verify:

       ```bash
       git --version
       ```

    e) AWS CLI:
       Download: https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-windows.html
       
       Verify:

       ```bash
       aws --version
       ```

    e) Terraform:

       ```bash
       choco install terraform -y
       choco upgrade terraform -y
       ```
       Verify:

       ```bash
       terraform -v
       ```
---

## 🤝 Contributing

Contributions are welcome! Please follow these steps:

1. Fork this repository.
2. Create a new branch (`feature-branch`).
3. Make your changes and commit (`git commit -m 'Add new feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Open a pull request.
