import mysql.connector


def list_databases(host, user, password):
    try:
        # Connect to MySQL server
        connection = mysql.connector.connect(
            host=host,
            user=user,
            password=password
        )

        # Create a cursor object to execute SQL queries
        cursor = connection.cursor()

        # Execute the query to retrieve the list of databases
        cursor.execute("SHOW DATABASES")

        # Fetch all the rows from the result set
        databases = cursor.fetchall()

        # Print the list of databases
        print("List of databases:")
        for db in databases:
            print(db[0])

    except mysql.connector.Error as e:
        print(f"Error: {e}")

    finally:
        # Close the cursor and connection
        if cursor:
            cursor.close()
        if connection:
            connection.close()


# Replace 'your_host', 'your_user', and 'your_password' with your MySQL server details
list_databases(host='your_host', user='your_user', password='your_password')
