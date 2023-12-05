import psycopg2

username = 'lazebnyi_oleksandr'
password = '123'
database = 'db_lab3'
host = 'localhost'
port = '5432'

query_1 = '''select patient_condition, count(*) from patient
group by patient_condition;
'''
query_2= '''select patient_blood_type, count(patient_blood_type)
from patient
group by patient_blood_type;
'''

query_3 = '''select EXTRACT(YEAR FROM date_of_admission) as year_of_admission, count(*) from patient_admission join patient using(patient_id)
group by EXTRACT(YEAR FROM date_of_admission)
order by year_of_admission
'''

conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)
print(type(conn))

with conn:
                       
    print ("Database opened successfully")
    cur = conn.cursor()
    print('1.  \n')

    cur.execute(query_1)

    for row in cur:
        print(row)

    print('\n2.\n')

    cur.execute(query_2)

    for row in cur:
        print(row)

    print('\n3.\n')

    cur.execute(query_3)

    for row in cur:
        print(row)



