# India General Election 2024 — Result Analysis

**Visual data-driven analysis of India's 2024 Lok Sabha election outcomes**, leveraging **Power BI dashboards**, **SQL querying**, and **data modeling** to reveal constituency-wise, state-wise, and alliance-based insights.

---

## 📑 Table of Contents

1. [Project Overview](#project-overview)  
2. [Repository Structure](#repository-structure)  
3. [Getting Started](#getting-started)  
4. [Power BI Dashboards](#power-bi-dashboards)  
5. [SQL Analysis](#sql-analysis)  
6. [Data & Model](#data--model)  
7. [Problem Statement & Objectives](#problem-statement--objectives)  
8. [Key Insights](#key-insights)  
9. [Contributing](#contributing)  
10. [Contact](#contact)  

---

## 📌 Project Overview

This project explores **India’s 2024 General Election results** using **Power BI dashboards** and **SQL queries** to provide:

- Constituency-level drill-downs  
- State-wise and alliance performance  
- Seat tallies (e.g., NDA vs. INDIA vs. Others)  
- Margin-of-victory & vote-type analysis (EVM vs. Postal)  
- ER diagrams for relational modeling  

---

## 📂 Repository Structure

```

├── India General Election Result Analysis.pbix   ← Power BI dashboard file
├── Data Modeling PPT.pptx                        ← Data modeling slides
├── ERD for data.pgerd                            ← ER diagram
├── Problem Statement Power BI.pdf                ← Power BI problem statements
├── Problem\_statement SQL.sql                     ← SQL challenges
├── Schemas.sql                                   ← Database schema
├── Solutions\_Of\_Problem\_Statements.sql           ← SQL solutions
├── Party Alliance DAX.txt                        ← DAX formulas for alliances
├── constituencywise\_details.csv                  ← Candidate-level results
├── constituencywise\_results.csv                  ← Constituency summary
├── partywise\_results.csv                         ← Party-level performance
├── statewise\_results.csv                         ← State outcomes
├── states.csv                                    ← State metadata
├── Political Landscape by State.png              ← Dashboard image
├── Overview Analysis.png                         ← Dashboard image
├── Constituency Analysis.png                     ← Dashboard image
├── State Demographics Analysis.png               ← Dashboard image
├── Landing Page.png                              ← Dashboard image
├── Details Grid.png                              ← Dashboard image

````

---

## 🚀 Getting Started

### 🔧 Prerequisites
- **Power BI Desktop** — to open `.pbix`  
- **SQL Engine (MySQL/PostgreSQL)** — to run queries  
- **CSV Support** — Excel, Python (Pandas), etc.  

### ▶️ Setup
1. Clone repo:
   ```bash
   git clone https://github.com/mangal-singh001/India-General-Election-2024-Result-Analysis.git
   cd India-General-Election-2024-Result-Analysis
   ````

2. Open **`India General Election Result Analysis.pbix`** in Power BI.
3. Run **`Schemas.sql`** + import CSV files.
4. Explore queries in **`Solutions_Of_Problem_Statements.sql`**.

---

## 📊 Power BI Dashboards

### 🏠 Landing Page

![Landing Page](./Landing%20Page.png)

---

### 🌍 Political Landscape by State

![Political Landscape](./Political%20Landscape%20by%20State.png)

---

### 📈 Overview Analysis

![Overview](./Overview%20Analysis.png)

---

### 🗳 Constituency Analysis

![Constituency Analysis](./Constituency%20Analysis.png)

---

### 👥 State Demographics Analysis

![State Demographics](./State%20Demographics%20Analysis.png)

---

### 📋 Details Grid

![Details Grid](./Details%20Grid.png)

---

## 🗄 SQL Analysis

* **Schemas.sql** → Database setup & CSV import
* **Problem\_statement SQL.sql** → Tasks like:

  * Total seats won by alliances
  * State-wise results
  * Tightest winning margins
  * EVM vs. Postal vote breakdown
* **Solutions\_Of\_Problem\_Statements.sql** → Complete queries

---

## 🗺 Data & Model

* **ER Diagram** → `ERD for data.pgerd`
* **Data Modeling PPT** → Explains schema, star model & fact-dimension design

---

## 🎯 Problem Statement & Objectives

* How many seats did each **alliance** (NDA, INDIA, Others) win?
* Which **states** were the strongest/weakest for each alliance?
* Which constituencies had **closest races**?
* What role did **Postal vs. EVM votes** play?
* What **demographic patterns** influenced results?

---

## 🔍 Key Insights

* NDA & INDIA alliances dominated across different regions.
* Some constituencies had **margins under 1,000 votes** → highly competitive.
* State-level demographic context explains alliance strength.
* **Postal ballots** were decisive in select constituencies.

---

## 🤝 Contributing

1. Fork this repo
2. Create a feature branch (`git checkout -b feature-name`)
3. Commit changes & push
4. Submit a Pull Request

---

## 📬 Contact

👤 **Mangal Singh**
📌 [GitHub Profile](https://github.com/mangal-singh001)

---

### 🙏 Acknowledgements

* **Election Commission of India** for official results
* **Power BI & SQL** for analytics


---

✅ This version includes all **dashboard images inline** so they appear beautifully on GitHub.  


