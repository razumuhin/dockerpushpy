from flask import Flask
app = Flask(__name__)
@app.route("/")
def hello():
    return "Merhaba Ersin  KAYA naber?  Bu değişiklik 18 öart 2024 tarihinde yapıldı."
if __name__ == "__main__":
    app.run(host="0.0.0.0", port=int("5000"), debug=True)
