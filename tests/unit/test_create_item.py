from fastapi.testclient import TestClient
from main import app

client = TestClient(app)

def test_create_item():
    payload = {"name": "Test Item"}
    response = client.post("/items", json=payload)
    assert response.status_code == 200
    assert response.json()["item"] == payload
