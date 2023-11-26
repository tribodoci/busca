import pymysql
from palavras import get_word_id
from slugify import slugify

conn = pymysql.connect(host='127.0.0.1', unix_socket='/tmp/mysql.sock',
                       user='root', db='mysql', charset='utf8')
cur = conn.cursor()
cur.execute('USE busca')

def get_word_id(word:str) -> int:

    sql = "SELECT id FROM palavra WHERE palavra = %s"
    cur.execute(sql, (word,))
    if cur.rowcount == 0:
        return -1
    else:
        word_id: int = cur.fetchone()[0]
        return word_id

try:
    if __name__ == "__main__":    
        print("Digite um termo ou deixe em branco para sair...")
        while True:
            termo: str = input("Termo: ")
            
            if termo.strip() == "":
                break

            ultima_palavra = slugify(termo, separator=' ').split()[-1]
            print(ultima_palavra)
            word_id = get_word_id(ultima_palavra)

            print("Palavra esta nos documentos:")

            sql = """
                SELECT
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
                AND (d_p_d.posicao - d_p_p.posicao) < 7
                GROUP BY
                d_p_p.documento_id,
                d_p_p.palavra_id,
                d_p_d.palavra_id,
                d_p_d.posicao - d_p_p.posicao
                ORDER BY
                distancia) d_palavra
                INNER JOIN palavra ON
                palavra.id = d_palavra.d_palavra_id
                GROUP BY
                palavra.palavra
            """

            cur.execute(sql, (word_id))

            for row in cur.fetchall():
                print(termo, row[0])

finally:
    cur.close()
    conn.close()
