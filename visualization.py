import psycopg2
import matplotlib.pyplot as plt

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
    fig, (bar_ax, pie_ax, graph_ax) = plt.subplots(1, 3)

    cur.execute(query_1)
    year_built = []
    houses_amount = []
    for row in cur:
        year_built.append(row[0])
        houses_amount.append(row[1])
                               
    bar_ax.set_title('Кількість будинків, побудованих у кожний рік')
    bar_ax.set_xlabel('Рік')
    bar_ax.set_ylabel('Кількість будинків')
    bar = bar_ax.bar(year_built, houses_amount)
    bar_ax.set_xticks(range(len(year_built)))
    bar_ax.set_xticklabels(year_built)

                               
                               
    cur.execute(query_2)
    neighborhood_name = []
    houses_amount = []
    for row in cur:
        neighborhood_name.append(row[0])
        houses_amount.append(row[1])
    pie_ax.set_title('Кількість будинків в залежності від району')
    pie_ax.pie(houses_amount, labels=neighborhood_name, autopct='%1.1f%%')

                               
                               
    cur.execute(query_3)
    avg_price = []
    year_built = []
    for row in cur:
        avg_price.append(row[0])
        year_built.append(row[1])
    graph_ax.plot(year_built, avg_price)
    graph_ax.set_xlabel('Рік побудови')
    graph_ax.set_ylabel('Ціна')
    graph_ax.set_title('Ціна в залежності від року побудови')
    for i, j in zip(year_built, avg_price):
        graph_ax.annotate(count, xy=(i, j))                           
                           
plt.show()                     
