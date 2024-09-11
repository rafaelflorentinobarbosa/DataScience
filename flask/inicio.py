print("Hello world")

# ! pip install flask

from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return "Estilo do Rei Barbearia"

@app.route('/novofuncionario')
def novoFuncionario():
    return "Pagina Novo Funcionario"

@app.route('/novocliente')
def novoCliente():
    return "Pagina Novo Cliente"

@app.route('/novoservico')
def novoServico():
    return "Pagina Novo Servico"

@app.route('/novoagendamento')
def novoAgendamento():
    return "Pagina Novo Agendamento"

@app.route('/login')
def logar():
    return "Pagina Login"

@app.route('/logout')
def deslogar():
    return "Pagina Logout"


app.run(debug=True)