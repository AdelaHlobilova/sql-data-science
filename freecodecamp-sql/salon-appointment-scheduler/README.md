# Salon Appointment Scheduler (Bash, PostgreSQL)

## Project goal:
* Create an interactive Bash program that uses PostgreSQL to track the customers and appointments for a salon.
* Project made as part of the FreeCodeCamp Relational Databases Certification.

## Database description:
* Tables used: Customers, Services, Appointments.
* Relations: Customers > Appointments < Services.

## Relational database diagram:
![database](https://github.com/AdelaHlobilova/SalonAppointmentScheduler/blob/main/drawSQL-salon.png)

## Salon appointment booking Bash program description:

The salon.sh script is a Bash-based program for managing salon appointments. It presents a numbered list of available services and guides users through booking by prompting for a service ID, phone number, name (if not already registered), and appointment time.

The script checks if a phone number is in the database; if not, it adds the customer’s details before recording the appointment. Successful bookings generate a confirmation message displaying the selected service, time, and customer’s name. The script ensures proper data handling and terminates after completing a booking.

