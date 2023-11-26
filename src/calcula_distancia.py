import pymysql

conn = pymysql.connect(host='127.0.0.1', unix_socket='/tmp/mysql.sock',
                       user='root', db='mysql', charset='utf8')
cur = conn.cursor()
cur.execute('USE busca')

try:
    if __name__ == "__main__":    
        pass
finally:
    cur.close()
    conn.close()