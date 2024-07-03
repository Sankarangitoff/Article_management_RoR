# README

Article Management Application

Objective:
Develop a secure API for managing articles with user authentication and role-based
authorization.

Features:
- User Authentication: Implement using Devise(or any gem).
- Role-Based Authorization: Implement using CanCanCan(or any gem) with roles like admin,
editor, and regular user.
- Use presenters to present the data.
- Securing Controllers: Protect API endpoints and enforce authorization. All endpoints if not
purposefully required(like sign-in/sign-up) must check for role and authorization.****
- CRUD Operations.

Roles and Permissions:
- Admin: Full management of articles and users.
- Editor: Create, read, and update articles.
- User: Read all articles and create new ones.
