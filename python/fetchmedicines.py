import mysql.connector

'''
connect to the mysql database with database details
'''
mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="r00tpa55",
  database="pharmacy",
  port="13306"
)

mycursor = mydb.cursor()
'''
query to execute to fetch medicinestock
'''
mycursor.execute("SELECT * FROM MedicineStock")

myresult = mycursor.fetchall()

def convertTuple(tup):
    st = ','.join(map(str, tup))
    return st  
	
print('The available medicines are')
print('@@@@@@@@@@@@@@@@@')
'''
printing the medical stock in console
'''
for x in myresult:
  print(x)
print('@@@@@@@@@@@@@@@@@')
print('saving the medicines list to the medicinestock_out.txt')
'''
saving the medicinestock to the txt file
'''
with open('medicinestock_out.txt', 'w') as f:
    for line in myresult:
        f.write(convertTuple(line))
        f.write('\n')
print('successfully saved the medicinestock_out.txt file');