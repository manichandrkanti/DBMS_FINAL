import mysql.connector
from mysql.connector import errorcode
from mysql.connector.errors import DataError, Error

table = ['Commodity', 'State', 'District', 'Market', 'Prices']
# Trying to connect to database
try:
    con = mysql.connector.connect(host='localhost', user='root', password='maria@123', database='AgriManage')
    rec_file = open("records.txt", "w")
    print("Database and file successfully connected")
    cur = con.cursor()

    # fetching the records
    for ta in table:
        cur.execute("select * from " + ta)
        print("Records of "+ta + "\n")
        rec_file.write("Records of "+ta + "\n")
        for rec in cur.fetchall():
            msge = ""
            for r in rec:
                msge += str(r) + ", "
            msge += "\n"

            # writing the records to the txt rec_file
            rec_file.write(msge)
            print(msge)
        rec_file.write("\n")
        print("\n")

except Error as err:
    print("error has taken place")
    print(err)
    exit()
finally:

    # finally closing the connection
    con.close()
    rec_file.close()