# IS436-Deliverable-4

This deliverable specifies the decision-making process behind deciding which application type and architecture will be implemented to develop the Waitlist System.

### Application Type
Based off our alternative matrix, the Web Application is the best idea as it has the highest weighted score of 455. It also complies with the business need for an efficient table turnover and customer notifications while remaining within the financial and time constraints of the restaurant and the project. The restaurant is also able to maximize its $110,416.53 NPV. They will be able to transition from the paper method of seating customers to a faster and more efficient digital process, improving customer flow.

### System Architecture
Based on the architecture matrix and the project constraints, the most appropriate architecture for this system is a Cloud Computing architecture combined with a Thin-Client Server model. This approach effectively supports the system’s non-functional requirements, including operational efficiency, performance, and security. Because the application is designed as a web-based system, both staff and customers only need a web browser to access it, while all data storage and processing are handled in the cloud. This significantly reduces the need for high-performance local hardware and simplifies system maintenance and updates. Additionally, centralizing the application and data in the cloud improves scalability, ensures consistent real-time access to the waitlist, and enhances overall system reliability.

In the case of the restaurant, this architecture allows the restaurant to use its existing tablets without requiring heavy local installation or processing. It supports real-time updates to the waitlist, which is essential when multiple staff members are simultaneously adding, editing, and seating parties. Since the database and application logic are centralized, all users see the same updated waitlist immediately. This helps enforce the first-come, first-served policy and reduces confusion or inconsistencies for both staff and customers. Additionally, customer information such as names and phone numbers is stored securely on remote servers with built-in security measures. The centralized environment also makes it easier to enforce staff authentication and maintain consistent access control across the system.

### Technology used in this project
##### Hardware Specifications
- Staff tablets already used in the cafe
- Customer mobile phones for web access and SMS notifications
- Stable Wi-Fi router/network connection inside the restaurant

##### Software Specification
Client Side
- Web browser on tablets, such as Google Chrome or Safari
- Mobile browser for customers using the waitlist web app

Server Side
- Cloud hosting platform
- Web server
- Application server
- Relational database management system such as MySQL

##### Programming Language Specification
- Frontend: HTML, CSS, JavaScript
- Backend: JavaScript
- Database: SQL for schema creation, queries, inserts, and updates

### Additional Details
- The client layer adds customers to the waitlist, edit reservations, view wait times, and send notifications.
- The network layer connects the devices (customer’s phone or host’s tablet) to the internet to capture data.
- The security layer adds protection to the system with a firewall and authentication checks. This prevents unauthorized access (for both the staff and customer).
- The load balancer helps distribute incoming requests and prevents overload.
- The API gateway will receive the request from the frontend and route them to the correct service. For example, “join waitlist” activates waitlist service. The application layer displays waitlist and customer updates.
- Actions taken in the application may update the data stored in the database in order to store new reservations, edit them, or delete them.
- The application also contains an SMS feature that will use an SMS API to send notifications to customers when the restaurant is ready to seat them.



