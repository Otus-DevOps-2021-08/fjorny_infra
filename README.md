# fjorny_infra
### Description 
Данный репозиторий используется в прохождении курса Otus. DevOps: Инструменты и практики.

### Bastion 
```
Подключение к 
bastion_IP  =  51.250.25.95 
someinternalhost_IP  =  10.129.0.32
```

#### Подключение через jump
``` ssh -i ~/.ssh/ -J fjorny@BASTION_IP fjorny@SOMEINTERNALHOST_IP ```

#### Подключение через конфиг

```
# ~/.ssh/config

Host bastion
  User fjorny
  IdentityFile ~/.ssh/
  Hostname bastion_IP

Host someinternalhost
  ProxyJump bastion
  User fjorny
  Hostname someinternalhost_IP

```
### redditappvm
```
testapp_IP = 51.250.7.137
testapp_port = 9292

```
### Packer
Posle predydushego zadaniya prishlos' peresest' na linux
```
* Smenil repo mongo
* namuchalsya s zone & subnet
* chego-to eshe nadelal
```

На данный момент выполнено ДЗ из **7** лекции.
