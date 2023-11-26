import csv
from typing import List
from slugify import slugify
import pymysql

conn = pymysql.connect(host='127.0.0.1', unix_socket='/tmp/mysql.sock',
                       user='root', db='mysql', charset='utf8')
cur = conn.cursor()
cur.execute('USE busca')

def get_word_id(word:str) -> int:

    sql = "SELECT id FROM palavra WHERE palavra = %s"
    cur.execute(sql, (word,))
    if cur.rowcount == 0:
        cur.execute('INSERT INTO palavra (palavra) VALUES (%s)', (word))        
        conn.commit()
        return cur.lastrowid
    else:
        word_id: int = cur.fetchone()[0]
        return word_id
        
    return int(cur.fetchone())

def add_word_to_document(doc_id: int, word_pos: int, word_id:int) -> None:
    cur.execute('INSERT INTO documento_palavra (documento_id, palavra_id, posicao) VALUES (%s,%s,%s)', (doc_id, word_id, word_pos))        
    conn.commit()

def process_word(doc_id: int, word_pos: int, word:str) -> None:
    if word == None or word.strip() == "":
        return

    # obtem o id da palavra
    word_id: int = get_word_id(word)
    # verifica se a palavra existe no documento
    add_word_to_document(doc_id, word_pos, word_id)

try:
    if __name__ == "__main__":
        print("Lendo Lista de Documentos")
        with open('documentos.csv', mode='r') as doc_file:

            docs: List = list(csv.reader(doc_file))        
            for idx,doc in enumerate(docs):
                word_pos: int = 0
                if idx == 0:
                    continue
                with open(doc[3]) as doc_txt:
                    for txt_line in doc_txt:
                        for word in slugify(txt_line, separator= ' ').split():
                            word_pos+=1
                            process_word(doc[0],word_pos, word)
finally:
    cur.close()
    conn.close()