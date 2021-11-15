import psycopg2

username = 'postgres'
password = 'postgres'
--- очень не безопасно, знаю :( создам нового пользователя с нормальным паролем
database = 'lab2'
host = 'localhost'
port = '5432'


query_1 = '''
SELECT 
		year_built, 
		COUNT(house_id) houses_amount 
FROM houses 
GROUP BY 1 
ORDER BY 1
'''

query_2 = '''
SELECT  
		neighborhood_name,
		COUNT(house_id) houses_amount 
FROM houses h
JOIN neighborhoods n
ON h.neighborhood_id = n.neighborhood_id
GROUP BY 1 
ORDER BY 1
'''

query_3 = '''
SELECT  
		CAST(AVG(sale_price) AS int) avg_price,
		year_built 
FROM houses h
JOIN sales s
ON h.sale_id = s.sale_id
GROUP BY 2 
ORDER BY 2
'''

con = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)


with con:

    cur = con.cursor()

    print('1.  \n')
    cur.execute(query_1)
    for row in cur:
        print(row)

    print('\n2.  \n')
    cur.execute(query_2)
    for row in cur:
        print(row)

    print('\n3.  \n')
    cur.execute(query_3)
    for row in cur:
        print(row)
