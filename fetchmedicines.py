import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="r00tpa55",
  database="pharmacy",
  port="13306"
)

mycursor = mydb.cursor()

mycursor.execute("SELECT * FROM MedicineStock")

myresult = mycursor.fetchall()

def convertTuple(tup):
    st = ','.join(map(str, tup))
    return st
print('The available medicines are')
print('@@@@@@@@@@@@@@@@@')
for x in myresult:
  print(x)
  
print('@@@@@@@@@@@@@@@@@')
print('saving the medicines list to the medicinestock_out.txt')

with open('medicinestock_out.txt', 'w') as f:
    for line in myresult:
        f.write(convertTuple(line))
        f.write('\n')

print('successfully saved the medicinestock_out.txt file');