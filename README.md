# Hotel-Room-Reservation-Database

## Project Analysis 

- I researched detailed and explicit data of my selected organization, Novotel hotel. 
- Then, I wrote a brief introduction of the hotel and presented a hotel’s current problem. 
- I discussed the advantages of database implementation. 
- I also listed entities and day-to-day functions that database can perform. 
- I had to first normalize the researched data to 3rd normal form. 
- Since the database has two high-level transactions, I had to design entity-relationship diagram for each and the whole ERD.  
- Then, I made data dictionaries.  
- I used SQL commands to create tables and selected important hotel information from the database. 
- I expounded on the essence of entity-relationship modeling and how my database fills up the gap of our hotel. 
- I also demonstrated my assumptions and the transaction flow in database.

## Project Assumption 

For the organization, I chose the Novotel to emphasize how the hotel’s reservation works. I used Microsoft Office Visio 2003 for entity-relationship modeling. I also used SQL server to accomplish my database project. My database was implemented in Microsoft SQL Server Management Studio 2018 with SQL commands. 

## Introduction

Novotel, the heart of Yangon, is a foreign five-star hotel which provides a myriad of recreational facilities for local as well as international organizations. The Novotel holds most of the aces in the fiercely competitive hospitality field.  Yet the hotel is being confronted by human errors such as the double-booked room and mishandled reservation. Manual data collection and storing tasks are being time-consuming in the room reservation system. This erroneous system is not just our hotel’s bottom line but our reputation as well. In order to fix those fallible administrations, I am willing to construct a powerful database to manage room reservations with ease as well as to handle the company's assets and liabilities effectively. I also intend to enhance the personalized marketing by emailing their customers about special discount packages and newsletters with their mailing address saved in the database. Novotel values the database as a new “CURRENCY”

### Entry List

•	Staff
•	RoomService
•	Rating
•	RoomType
•	Room 
•	Customer
•	Reservation 
•	RoomServiceDetails
•	Payment 
•	RoomReservationDetails 

### Transactions

- Adding new staff
- Recording room services and prices 
- Inserting room rating
- Recording room types
- Adding room information 
- Adding new customers
- Recording room reservation  
- Adding room reservation details 
- Adding payment information 
- Updating the payment by adding the room service prices to the original reservation price
- Listing all the hotel rooms 
- Summary of customers’ reservation 
- Showing the number of available hotel rooms  
- Selecting the Room service for reserved rooms

## Normalization

There are two high level transactions– room reservation and room service. For the former transaction, the data of hotel rooms, customers, their reservations and payments are collected and normalized to 3rd normal form. Room rating and Room type are derived from normalization of room. For the room service transaction, staff’s information and their respective services are normalized to generate three entities.

### Normalization for Reservation 

![image](https://user-images.githubusercontent.com/112906488/211631996-4e6ec077-64c9-45ac-ad31-c446574479ff.png)

### Normalization ERD for Reservation 

![image](https://user-images.githubusercontent.com/112906488/211632484-ac41e8c3-51a3-4ae8-9ac3-2ac4a606f676.png)

### Normalization for Room Service

![image](https://user-images.githubusercontent.com/112906488/211632799-b6e6e246-7440-4db5-b8c6-98650e218801.png)

### Normalization ERD for Room Service

![image](https://user-images.githubusercontent.com/112906488/211632934-dd05bc3a-cf09-45e0-ae03-19f12a610b21.png)

## Entity Relationship Diagram

My database has two transactions – room reservation and room service so that I had to struggle with how to join these two components. While the Room Service transaction was in its infancy, my logical concept was fallacious because I directly linked the “Staff” table to the “Room” table. I could rectify this condition by adding a “RoomService” table for the purpose of meaningful transaction. The design has also some defects: there will be reservations in accordance with the quantity of reserved rooms whenever a customer reserves more than one room. The repercussion is to recalculate the customer’s total payment.

![image](https://user-images.githubusercontent.com/112906488/211633294-82fabc6e-eec7-4df3-b3cd-b4e666a3f8ae.png)
## Evaluation
### ***My database meets the data and information requirements of organization.***
> The accumulated data play a crucial role in implementing our business strategy and targets. My room reservation database incorporates all necessary transactional data as well as personal data. The comprehensive data collection enables the Novotel to analyze budgets, and to create surveys and development programs. Since the database even records the smoking room type so that we can assign smokers to specific room type. What is more, the database always updates the room availability information after check out. Consequently, we can communicate with customers more quickly in room reservation.

### ***Entity Relationship modelling is important in the design of a database solution.***
> Based on ER modeling, I managed to continue on making data dictionaries. Since ER diagrams are the entity framework infrastructure, I could effortlessly alter the entities into practical database tables with the logical structure of ER modeling. I found some difficulty in conceptual relationships at the outset of my room reservation project. I resolved this conundrum with entity relationship modeling.

## Assumption 

Firstly, I scrutinized the required data of the Novotel Hotel and analyzed which sector needs database implementation. I figured out that the room reservation system showed defects among the systems. Then I started to normalize the processed data to 3rd Normal form. When I got the organized entity and attributes altogether, I constructed the whole entity relationship diagram. In the design process, I had to take some time to consider which entities should be deployed whether the one-to-one or one-to-many or many-to-many relationships. I used diagramming and vector graphics application (Microsoft Visio) for the entity-relationship modeling process. I made Data dictionaries to provide detailed information about the contents of a dataset. When I reached the database implementation step, I installed the Microsoft SQL server 2019 including the SQL Server Management Studio. In the Microsoft DBMS, I had to utilize some SQL commands – creating and modifying tables; inserting, updating and deleting unwanted data; identifying table columns whether they are primary or foreign keys constraint.

I created “Staff” and “RoomService” tables which are foundational to the room-service transaction. In the latter table, each staff member is added together with their respective service. The attribute “RoomServicePrice” aids in figuring the hotel’s net earnings. “RoomServiceDetails” dummy table is also constructed to connect with “Room” to provide room-service. Then, I had to insert the staff’s personal information and positions to the staff table first. Afterwards, I recorded the service-type each staff member can perform and service-price in the room-service table. The intention of creating this transaction is to record how much income we accumulated from room service which is the additional income except for reservation. Moreover, these data are essential to calculate the net income of our hotel.

For the room-reservation transaction, I constructed “Room”, “Rating” and “RoomType”. There are fourteen types for room whilst only star type for rating. “RoomType” and “Rating” tables are linked to the “Room” table containing a particular attribute which checks for room availability. “Room” table is a major component in our database system as it is incorporated in both transactions. “RoomReservationDetails” dummy table was created in order that the “RoomReservation” table can connect with the “Room”. In this table, available rooms are bonded with customers’ reservations.

For the sake of email-marketing of our hotel, I built a “Customer” table to save their data especially email-address. Additionally, each customer is given ID to facilitate our room reservation system. “Reservation” and “Payment” tables are imperative in this transaction. Once a customer books an available room, it is counted as one reservation in the “Reservation” table. In this table, duration of stay is the subtraction of the check-in-date from the check-out-date. “Payment” and “RoomServieDetails” tables function together to work out the hotel’s revenue.

The reason I listed out all the hotel rooms in descending order of rating was to expound on what special types of rooms we offer. I also selected the customers’ reservation data with exact check-in-date to examine how many rooms they reserved. I listed the number of available hotel rooms for the sake of the prompt process in the reservation system. I also selected the specific room-service for reserved rooms. I had to update the payment prices by adding the room service prices to the original reservation price.

The database lacks the feature of data-driven technology-analyzing and reacting to data. It should be developed into the automation phase by linking the hotel property management system to its email service provider (Pebble Design, 2014). As regards the employment of the database, the hotel offers an annual special discount package to their customers whose email-addresses are saved in the database. In such offers, Novotel sends out emails with custom templates to their guests offering them special discount coupons.

## How the database supports the transactions 

The room reservation database meets our hotel’ main transactions-room reservation management as well as room service system. It predominantly eases the burden of time-consuming tasks such as jotting down the customers’ reservations and demands in the address book. For the room reservation transaction, the database first records rooms’ specifications in the respective tables. It also gives such a smooth transaction that the administrator can update the room availability in the “Room” table. The real motive behind this is to give customers instance responses. On the other hand, it also collects customers’ details and provides identification to each customer in order to simplify the further process. It records their reservation after their reserved rooms have been checked on availability.

The database supports the room service transaction. This transaction also plays a supportive role in totalizing the customer’s total cost and the hotel’s revenue. On top of that, the payment column in the “Payment” table has to be invariably updated by adding the room service price to the particular payment. The “Payment” table in the database accentuates the customer’s total cost and the hotel’s net income. For instance, if the customer who reserves three rooms, there will be three reservations in the “Reservation” table. Therefore, payments of these reservations are added altogether to generate the total cost of each customer.	 

## Data Dictionary

- Entity: Customer
- Primary Key: CustomerID
- Foreign Key: None

|     Name    	|     Type    	|     Size    	|     Description    	|
|---	|---	|---	|---	|
|     CustomerID    	|     Varchar    	|     20    	|     Unique Identification for Customer    	|
|     CustomerName    	|     Varchar    	|     100    	|     Name of Customer    	|
|     CustomerDOB    	|     Date    	|          	|     Customer’s Date of Birth    	|
|     NRC    	|     Varchar    	|     100    	|     Customer’s National Registration Card    	|
|     Gender    	|     Varchar    	|     50    	|     Gender of Customer    	|
|     Address    	|     Varchar    	|     100    	|     Address of customer    	|
|     PhoneNumber    	|     Varchar    	|     50    	|     Phone number of Customer    	|




- Entity:   Reservation
- Primary Key:  ReservationCode
- Foreign Key:  CustomerID

|     Name    	|     Type    	|     Size    	|     Description    	|
|---	|---	|---	|---	|
|     ReservationCode    	|     Varchar    	|     20    	|     Unique Identification for Reservation    	|
|     CustomerID    	|     Varchar    	|     20    	|     Unique Identification for Customer    	|
|     ReservationDate    	|     Date    	|          	|     Date of Reservation    	|
|     CheckInDate    	|     Date    	|          	|     Date of Check-in    	|
|     CheckOutDate    	|     Date    	|          	|     Date of Check-out    	|
|     Duration    	|     Varchar    	|     100    	|     Period of stay    	|
|     NumberOfRooms    	|     Integer    	|          	|     Number of reserved rooms    	|




- Entity:    Payment
- Primary Key:   PaymentCode
- Foreign Key:   ReservationCode

|     Name    	|     Type    	|     Size    	|     Description    	|
|---	|---	|---	|---	|
|     PaymentCode    	|     Varchar    	|     20    	|     Unique Identification for Payment    	|
|     ReservationCode    	|     Varchar    	|     20    	|     Unique Identification for Reservation    	|
|     PaymentDate    	|     Date    	|          	|     Date of payment    	|
|     PaymentPrice    	|     Varchar    	|     100    	|     Amount of payment    	|
|     PaymentType    	|     Varchar    	|     100    	|     Type of payment    	|
|     CardNum    	|     Varchar    	|     100    	|     Credit Card Number    	|


- Entity:     Staff
- Primary Key:    StaffID
- Foreign Key:

|     Name    	|     Type    	|     Size    	|     Description    	|
|---	|---	|---	|---	|
|     StaffID (PK)    	|     Varchar    	|     20    	|     Unique Identification for Customer    	|
|     StaffName    	|     Varchar    	|     100    	|     Staff’s name    	|
|     Position    	|     Varchar    	|     100    	|     Position of Staff    	|
|     Gender    	|     Varchar    	|     50    	|     Gender of Staff    	|
|     Address    	|     Varchar    	|     100    	|     Address of Staff    	|
|     PhoneNumber    	|     Varchar    	|     50    	|     Phone number of Staff    	|



- Entity:      RoomService
- Primary Key:     ServiceCode
- Foreign Key:   StaffID

|     Name    	|     Type    	|     Size    	|     Description    	|
|---	|---	|---	|---	|
|     ServiceCode    	|     Varchar    	|     20    	|     Unique Identification for room service    	|
|     StaffID    	|     Varchar    	|     20    	|     Unique Identification for Staff    	|
|     RoomServiceType    	|     Varchar    	|     100    	|     Type of Room Service    	|
|     RoomServicePrice    	|     Varchar    	|     100    	|     Amount of Room Service    	|



- Entity:  RoomReservationDetails
- Primary Key: None
- Foreign Key: ReservationCode, RoomCode

|     Name    	|     Type    	|     Size    	|     Description    	|
|---	|---	|---	|---	|
|     ReservationCode    	|     Varchar    	|     20    	|     Unique Identification for Reservation    	|
|     RoomCode    	|     Varchar    	|     20    	|     Unique Identification for Room    	|



- Entity:        RoomServiceDetails
- Primary Key:     - 
- Foreign Key:     ServiceCode, RoomCode

|     Name    	|     Type    	|     Size    	|     Description    	|
|---	|---	|---	|---	|
|     ServiceCode    	|     Varchar    	|     20    	|     Unique Identification for room service    	|
|     RoomCode    	|     Varchar    	|     20    	|     Unique Identification for Room    	|



- Entity:       RoomType
- Primary Key:      RoomTypeCode
- Foreign Key:     None

|     Name    	|     Type    	|     Size    	|     Description    	|
|---	|---	|---	|---	|
|     RoomTypeCode    	|     Varchar    	|     20    	|     Unique Identification for room type    	|
|     RoomType    	|     Varchar    	|     100    	|     Type of Room    	|
|     RoomPrice    	|     Varchar    	|     100    	|     Price of Room for renting    	|



- Entity:        Rating
- Primary Key:       RatingCode
- Foreign Key:     None

|     Name    	|     Type    	|     Size    	|     Description    	|
|---	|---	|---	|---	|
|     RatingCode    	|     Varchar    	|     20    	|     Unique Identification for Rating    	|
|     RatingType    	|     Varchar    	|     100    	|     Type of Rating    	|
|     Rating    	|     Integer    	|          	|     Rating    	|



- Entity:         Room
- Primary Key:      RoomCode
- Foreign Key:     RatingCode, RoomTypeCode

|     Name    	|     Type    	|     Size    	|     Description    	|
|---	|---	|---	|---	|
|     RoomCode    	|     Varchar    	|     20    	|     Unique Identification for RoomCode    	|
|     RatingCode    	|     Varchar    	|     20    	|     Unique Identification for RoomCode    	|
|     RoomTypeCode    	|     Varchar    	|     20    	|     Unique Identification for RoomTypeCode    	|
|     RoomAvailability    	|     Varchar    	|     20    	|     Whether room is available or not    	|
|     Floor    	|     Varchar    	|     100    	|     Room location    	|

