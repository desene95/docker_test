from flask import Flask
import random
app = Flask(__name__)

@app.route("/")
def home():
    print("COIN TOSS")
    ran_num = random.randint(0,1)

    if ran_num == 0:
        return "Tails"
    else:
        return "Heads"

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=5000)