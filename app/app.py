from flask import Flask    
import os  
from dotenv import load_dotenv

load_dotenv()                

app = Flask(__name__)    

@app.route("/")        
def home():                
    app_secret = os.getenv("APP_SECRET", "Not Found")  
    return f"Hello! This is Anusha and I am building my {app_secret}"       

if __name__ == "__main__":            
    app.run(host="0.0.0.0", port=5050) 