
# pip instal flask
# pip freeze

from flask import Flask,render_template, request

app = Flask(__name__)

@app.route('/alomundo')
def ola():
    return "Hello Word"

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/novoaluno')
def cadastrar_aluno():
    return render_template('novoaluno.html')

@app.route('/logar', methods=['POST'])
def logar_ra():
    ra = request.form['ra']
    
    if ra == "12345619":
        return render_template('diariobordo.html',ra=ra)
    else:
        mensagem = "ra inválido"
        return render_template('index.html', mensagem=mensagem)
    

@app.route('/diariobordo')
def diario_aluno():
    return render_template('diariobordo.html')

app.run(debug=True)
