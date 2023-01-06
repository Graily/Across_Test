import json
from requests.auth import HTTPBasicAuth
import requests

logBody = {
    "UserName": "Supervisor",
    "UserPassword": "Supervisor"
    }
projectId = {
    "projectId": "fb141050-fd68-4a1c-9db4-1b6ec8442847"
    }
cook = dict()

s = requests.Session()
s = requests.post('http://across-test.maticson-lab.ru/ServiceModel/AuthService.svc/Login', json=logBody)
var = s.cookies
print(var)
s = requests.post('http://across-test.maticson-lab.ru/0/rest/McsContractorRatesService/CalculateProjectFinIndicators',
                  json=projectId, cookies=var)
# data = dict(s.json())
print(s.text)

s = requests.get('http://across-test.maticson-lab.ru/0/odata/Account/82a4b095-4e3c-4871-a819-011799904adc', cookies=var)
print(s.json())



#for keys, values in data.items():
 #   print(keys)
