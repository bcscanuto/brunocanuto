from faker import Faker
fake = Faker()

import bcrypt

def get_hashed_pass(password):
    hashed = bcrypt.hashpw(password.encode('utf-8'), bcrypt.gensalt(8))
    return hashed

def factory_user(target):

    data = {
        'faker': {
            'name': fake.first_name(),
            'lastname': fake.last_name(),
            'email': fake.free_email(),
            'password': 'abc123'
        },
        'wrong_email': {
            'name': 'José',
            'lastname': 'das Couves',
            'email': 'zedas_couves*gmail.com',
            'password': 'abc123'
        },
        'login': {
            'name': 'Bruno',
            'lastname': 'Canuto',
            'email': 'bruno@gmail.com',
            'password': 'abc123',
            'geek_profile': {
                'whats': '11999999999',
                'desc': '',
                'printer_repair': 'Não',
                'work': 'Presencial',
                'cost': '150'
            }
        },
        'be_geek': {
            'name': 'José',
            'lastname': 'dos Hardware',
            'email': 'zedos_hardware@gmail.com',
            'password': 'abc123',
            'geek_profile': {
                'whats': '11999999999',
                'desc': 'Seu computador está lento? Reiniciando do nada? Talvez seja um vírus, ou algum hardware com defeito. Posso fazer a manutenção no seu PC, formando, reinstalando o SO, trocando algum componente físico e porque não remover o baidu ou qualquer outro malware.',
                'printer_repair': 'Sim',
                'work': 'Remoto',
                'cost': '100'
            }
        },
        "short_desc": {
            'name': 'José',
            'lastname': 'dos Teclados',
            'email': 'zedos_teclado@gmail.com',
            'password': 'abc123',
            'geek_profile': {
                'whats': '21999999999',
                'desc': 'Formato o seu PC',
                'printer_repair': 'Não',
                'work': 'Ambos',
                'cost': '200'
            }
        },
        "long_desc": {
            'name': 'José',
            'lastname': 'dos Mouses',
            'email': 'zedos_mouses@gmail.com',
            'password': 'abc123',
            'geek_profile': {
                'whats': '11999999999',
                'desc': 'Instalo Distros Ubuntu, Debian, ElementaryOS, PopOS, Linux Mint, Kurumin, Mandrake, Connectiva, Fedora, RedHat, CentOS, Slackware, Gentoo, Archlinux, Kubuntu, Xubuntu, Suze, Mandriva, Edubuntu, KateOS, Sabayon Linux, Manjaro Linux, BigLinux, ZorinOS, Unity',
                'printer_repair': 'Não',
                'work': 'Ambos',
                'cost': '200'
            }
        }
    }

    return data[target]