from faker import Faker

fake = Faker('pt_BR')


def get_fake_account():
    account = {
        "name": fake.name(),
        "email": fake.email(),
        "password":"Teste@123",
        "telefone": fake.msisdn(),
        "CEP": "81110-070",
        "numero_residencia": fake.building_number(),
        "endereco": fake.street_name(),
        "complemento": fake.neighborhood(),
        "github": fake.url()
    }
    return account
