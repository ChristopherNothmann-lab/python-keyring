import keyring 


def main():
    keyring.set_password(service_name='test-keyring', username='user-tga', password='12345')
    print(keyring.get_password('test-keyring',username='user-tga'))
    # keyring.delete_passord('test-keyring',username='user-tga')

if __name__ == '__main__': 
    main()