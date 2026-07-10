# 🇧🇷 Brazilian E-Commerce Data Warehouse

## 📖 Project Overview

The **Brazilian E-Commerce Data Warehouse** is an end-to-end data warehousing project built using **Microsoft SQL Server**. The goal of this project is to transform raw e-commerce data into clean, reliable, and business-ready datasets for reporting and analytics.

This is my **second data warehousing project** and the **first project that I designed and built completely on my own**, from planning the architecture to implementing the data warehouse.

---

## 🎯 Purpose

The primary objective of this project is to:

* Deliver high-quality and consistent data for business reporting.
* Transform raw source data into analytics-ready datasets.
* Demonstrate data warehousing concepts and ETL pipeline design.
* Apply industry-standard data modeling and architecture practices.

---

## 🏛️ Architecture

This project follows the **Medallion Architecture**, where data is progressively refined through multiple layers.

```text
Archive
   │
   ▼
Bronze
   │
   ▼
Silver
   │
   ▼
Gold
   │
   ▼
Reporting & Analytics
```

### Layer Description

* **Archive** – Stores the original source data for backup and historical reference.
* **Bronze** – Contains raw data loaded directly from the source system with minimal transformation.
* **Silver** – Stores cleaned, validated, standardized, and transformed data.
* **Gold** – Contains business-ready datasets optimized for reporting and analytics.

---

## 🛠️ Technology Stack

- Microsoft SQL Server
- SQL
- GitHub (Repository hosting)
- Notion (Project planning)
- Draw.io (Architecture diagrams and flowcharts)

---

## 📊 Dataset

The dataset used in this project was obtained from **Kaggle**.

---

## 👨‍💻 About This Project

Hello! My name is **Kartik**.

I built this project while pursuing my **Bachelor of Computer Applications (BCA)** during my **third semester (second year)**. This project was developed independently from start to finish, including the architecture design, planning, implementation, and documentation.

The goal of this project is not only to practice SQL but also to demonstrate a complete understanding of data warehousing concepts and ETL design.

---

## 🚀 Project Status

**Status:** In Progress

Additional documentation, ETL processes, database objects, and implementation details will be added as the project progresses.
