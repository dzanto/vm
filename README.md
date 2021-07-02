# vm
## Подготовка ВМ
- Создаем виртуальные хосты
- Добавляем в /etc/hosts записи: `192.168.7.139 ubuntu1.local`
- Добавляем публичный ssh ключ на каждый хост: `ssh-copy-id ubuntu@ubuntu1.local`

## Ansible
- Настройку Ansible смотри в каталоге Ansible