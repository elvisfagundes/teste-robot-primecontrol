from faker import Faker

fake = Faker('pt_BR')


def get_fake_account():
    account = {
        "name": fake.name(),
        "email": fake.email(),
        "password":"Teste@123",
        "telefone": fake.msisdn(),
        "CEP": "81110-070",
        "numeroResidencia": fake.building_number(),
        "endereco": fake.street_name(),
        "complemento": fake.neighborhood(),
        "github": fake.url(),
        "urlFoto": "https://firebasestorage.googleapis.com/v0/b/pagina-teste-prime.appspot.com/o/image.png?alt=media&token=9eaeb40a-cea9-4600-9e44-886ac35b890b",
        "pais": "Brasil",
        "genero": "Masculino",
        "ferramentas": [
            "Robot Framework",
            "Cypress"
        ]
    }
    return account
