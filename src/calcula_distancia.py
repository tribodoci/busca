import pymysql

conn = pymysql.connect(host='127.0.0.1', unix_socket='/tmp/mysql.sock',
                       user='root', db='mysql', charset='utf8')
cur = conn.cursor()
cur.execute('USE busca')

try:
    if __name__ == "__main__":           

        sql = """
                SELECT
                palavra.id,
                palavra.palavra
                FROM
                (SELECT
                d_p_p.documento_id AS documento_id,
                d_p_p.palavra_id AS palavra_id,
                d_p_d.palavra_id AS d_palavra_id,
                d_p_d.posicao - d_p_p.posicao AS distancia
                FROM
                documento_palavra d_p_p
                INNER JOIN documento_palavra d_p_d ON
                d_p_p.palavra_id <> d_p_d.palavra_id
                AND d_p_p.documento_id = d_p_d.documento_id
                WHERE
                d_p_p.palavra_id = %s
                AND d_p_p.posicao < d_p_d.posicao
                GROUP BY
                d_p_p.documento_id,
                d_p_p.palavra_id,
                d_p_d.palavra_id,
                d_p_d.posicao - d_p_p.posicao
                ORDER BY
                distancia
                LIMIT 20) d_palavra
                INNER JOIN palavra ON
                palavra.id = d_palavra.d_palavra_id
        """
        cur.execute(sql, (word_id))

        for row in cur.fetchall():
            print(row)

finally:
    cur.close()
    conn.close()