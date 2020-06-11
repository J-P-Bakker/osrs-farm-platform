import json
import psycopg2
import random
import string
import sys


def check_args(args):
    len_args = len(args) - 1
    message = """
        This script will create runescape accounts and save them to a db

        1. Amount of accounts to be created
        2. json file with proxy information

        Example:
    """
    if len_args != 1:
        print(message)
        quit()


def createPassword(passwordLength):
    """ Generate a simple password

    Keyword argument:
    passwordLength -- the length of the password
    """
    password = ''
    lettersAndDigits = string.ascii_lowercase + string.digits
    for i in range(passwordLength):
        x = random.choice(lettersAndDigits)
        password += str(x)
    return password


def createEmail(userLength, domainLength):
    """ Generate a simple "fake" email address

    Keyword arguments:
    userLength -- the length of the user
    domainLength -- the length of the domain
    """
    user = ''
    domain = ''
    lettersAndDigits = string.ascii_lowercase + string.digits
    for i in range(userLength):
        x = random.choice(lettersAndDigits)
        user += str(x)

    for i in range(domainLength):
        x = random.choice(lettersAndDigits)
        domain += str(x)

    return "{}@{}.com".format(user, domain)


def createAccount():
    """ Generate and register an OSRS account
    """
    account = {
        "email": "",
        "password": "",
        "proxy": ""
    }
    # Generate password
    account["password"] = createPassword(8)

    # Get proxy from json
    account["proxy"] = "TODO"

    # Generate email
    userLength = random.randrange(6, 14)
    domainLength = random.randrange(4, 8)
    account["email"] = createEmail(userLength, domainLength)

    # create account in RS
    # 1. setup proxy
    # 2. navigate to https://secure.runescape.com/m=account-creation/create_account?theme=oldschool
    # 3. fill in form
    # 4. "click" PLAY NOW
    # 5. solve captcha? :'(
    # 5.1 Seems like not every request has to solve one.
    # 5.2 Terminale requests that do, and retry with "new" account

    return account


def saveToDatabase(account):
    try:
        connection = psycopg2.connect(user="master",
                                      password="master",
                                      host="127.0.0.1",
                                      port="5432",
                                      database="accounts")
        cursor = connection.cursor()

        postgres_insert_query = """ INSERT INTO accounts (date_created, email, password, proxy) VALUES (now(),%s,%s,%s)"""
        record_to_insert = (account.get("email"), account.get(
            "password"), account.get("proxy"))

        cursor.execute(postgres_insert_query, record_to_insert)
        connection.commit()
        print("Username: {}, Password: {}, Proxy {}".format(
            account.get("email"), account.get("password"), account.get("proxy")))

    except (Exception, psycopg2.Error) as error:
        if(connection):
            print("Failed to insert record into accounts table", error)

    finally:
        # closing database connection.
        if(connection):
            cursor.close()
            connection.close()


def main(amount):
    accounts_completed = 0
    while accounts_completed < amount:
        account = createAccount()
        saveToDatabase(account)
        accounts_completed += 1

    print("\nAccounts created and saved to database\n")


if __name__ == "__main__":
    amount = int(sys.argv[1])
    main(amount)
