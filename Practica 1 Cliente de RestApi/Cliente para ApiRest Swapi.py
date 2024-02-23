
#biblioteca de Python utilizada para hacer solicitudes HTTP
import requests


class SWAPIClient:
    def __init__(self, base_url="https://swapi.dev/api/"):
        self.base_url = base_url

#método toma un parámetro resource que representa el recurso específico que se desea obtener de la API (por ejemplo, 
#"people/1" para obtener información sobre un personaje). Construye la URL completa utilizando la URL base y el recurso proporcionado. 
#Luego, hace una solicitud GET a esa URL utilizando requests.get(). Si la solicitud es exitosa (código de estado 200), devuelve los datos en formato JSON. 
#Si no es exitosa, imprime un mensaje de error y devuelve None.
    def get_resource(self, resource):
        url = f"{self.base_url}{resource}/"
        response = requests.get(url)
        if response.status_code == 200:
            return response.json()
        else:
            print(f"Error al obtener el recurso {resource}: {response.status_code}")
            return None

    def get_person(self, person_id):
        return self.get_resource(f"people/{person_id}")

    def get_film(self, film_id):
        return self.get_resource(f"films/{film_id}")




client = SWAPIClient()
person = client.get_person(1)
print("Información sobre el personaje:")
print(person)
