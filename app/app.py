from flask import Flask
app = Flask(__name__)

@app.route("/")
def index():
  return 'Learning python app containerization'

if __name__ == "__main__":
  app.run(debug=True, host='0.0.0.0')
