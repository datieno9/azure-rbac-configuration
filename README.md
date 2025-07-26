# Azure RBAC Role Assignment with Bicep
This project demonstrates how to automate **Azure Role-Based Access Control (RBAC)** assignments using **Bicep**, Azure’s native infrastructure-as-code (IaC) language. It provisions precise access permissions for users or service principals across Azure scopes (subscription, resource group, or individual resources).

The goal is to apply **security best practices** such as **least privilege** and **declarative access control**—concepts critical to both real-world cloud security and the **AZ-500: Microsoft Azure Security Technologies** certification.

---

## Why it matters
Manually assigning roles in the Azure Portal is error-prone and not scalable. This project shows how to:
- Replace manual steps with **version-controlled**, repeatable infrastructure
- Enforce secure access using **parameterized Bicep templates**
- Implement one of the core identity and access management (IAM) skills covered in the **AZ-500 exam**

---
## Technologies used
- **Bicep** – Azure’s DSL for deploying infrastructure as code
- **Azure Role-Based Access Control (RBAC)** – Built-in access control system
- **Azure Active Directory (AAD)** – Identity platform for assigning roles
- **Azure CLI** – To deploy and test Bicep templates
- **JSON Parameters File** – To input role definition IDs, principal IDs, and scopes

---

## Key security concepts covered
- **Least privilege access**  
- **Scoping RBAC correctly (subscription, RG, resource)**  
- **Infrastructure as Code (IaC) for access control**  
- **Declarative IAM policy management**

##Who is this for
This is ideal for:
- **Cloud Security Engineers** learning automation
- **DevSecOps professionals** enforcing policy-as-code
- **AZ-500 certification candidates** needing hands-on practice

## 🧱 Architecture Diagram

![RBAC Diagram](./images/rbac-diagram.png)

##Project Structure
