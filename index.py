import pymysql

local_conn = pymysql.connect(host="localhost", user="root", password="", database="coc2")
local_cursor = local_conn.cursor()

online_db_config = {
    "host": "plesk3500.is.cc",
    "user": "tatwerte_cosqc_new",
    "password": "123Ammar123@",
    "database": "tatwerte_cosqc_new"
}

try:
    online_db = pymysql.connect(**online_db_config)
    online_cursor = online_db.cursor()

    online_cursor.execute("SELECT * FROM certificateofconformity")
    clientusers_results = online_cursor.fetchall()

    online_cursor.execute("SELECT * FROM entrypoints")
    entrypoints_results = online_cursor.fetchall()

    if clientusers_results:
        print("Data retrieved from clientusers table in the online database:")
        for row in clientusers_results:
            print(row)

        # Insert data into the local clientusers table
        for row in clientusers_results:
            duplicate_check_query = "SELECT Id FROM clientusers WHERE Id = %s"
            local_cursor.execute(duplicate_check_query, (row[0],))
            existing_record = local_cursor.fetchone()

            if not existing_record:
                local_cursor.execute("INSERT INTO certificateofconformity (Id, InsertBy) VALUES (%s, %s)", row)

        print("Data inserted into local clientusers table:")
        for row in clientusers_results:
            print(row)

    if entrypoints_results:
        print("Data retrieved from entrypoints table in the online database:")
        for row in entrypoints_results:
            print(row)

        # Insert data into the local entrypoints table
        for row in entrypoints_results:
            duplicate_check_query = "SELECT Id FROM entrypoints WHERE Id = %s"
            local_cursor.execute(duplicate_check_query, (row[0],))
            existing_record = local_cursor.fetchone()

            if not existing_record:
                local_cursor.execute("INSERT INTO entrypoints (Id, InsertBy) VALUES (%s, %s)", row)

        print("Data inserted into local entrypoints table:")
        for row in entrypoints_results:
            print(row)

    local_conn.commit()

except pymysql.Error as err:
    print(f"Error: {err}")

finally:
    if 'online_db' in locals():
        online_cursor.close()
        online_db.close()

    local_cursor.close()
    local_conn.close()
