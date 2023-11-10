const sqlite3 = require('sqlite3');
let db = new sqlite3.Database('contatos.db');

let sql = `SELECT nome,email FROM contatos WHERE email=?`

db.get(sql, ['gt@email.com'], (erro, linha) => {
    if(erro) throw erro;
    console.table(linha);
});

db.close();
