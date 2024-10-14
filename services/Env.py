import os

from dotenv import load_dotenv

load_dotenv()

API_URL= os.getenv('API_URL')
LIST_CLIENTS= os.getenv('LIST_CLIENTS')
ADD_CLIENT= os.getenv('ADD_CLIENT')
DELETE_CLIENT= os.getenv('DELETE_CLIENT')
UPDATE_CLIENT= os.getenv('UPDATE_CLIENT')
