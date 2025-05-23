# Asterion (2006 Thesis Project)

This repository contains the archived source code and supporting artifacts for **Asterion**, a Java and SQL Server–based system developed in 2006 as part of an undergraduate thesis project. The system was designed for managing purchasing processes and supplier evaluation in a manufacturing context.

> 🎓 Developed as a thesis for a degree in Systems Computer Engineering.

---

## 🧠 Project Overview

**Asterion** provides functionality to:
- Register and manage suppliers
- Evaluate suppliers based on delivery, quality, and performance criteria
- Manage purchase orders and warehouse entries
- Generate evaluation and audit reports

The goal was to streamline procurement decisions and reduce subjectivity in supplier evaluation.

---

## 🛠️ Technologies Used

- Java (Desktop application)
- Microsoft SQL Server
- Stored Procedures
- UML for analysis and design
- IEEE 830 and 829 standards for requirements and testing

---

## 📁 Repository Structure

```plaintext
ASTERION/
├── ASTERION/                         # Java application source (legacy)
├── docs/                             # UML and database diagrams (PDFs)
│   ├── 01_use-cases.pdf
│   ├── 02_class-diagram.pdf
│   └── ... (etc.)
├── 2007_asterion-db-backup.sql      # Full SQL Server DB backup (structure)
├── 2007_asterion-db-seed.sql        # Sample data + stored procedures
└── README.md
