#!/usr/bin/env python3

#module that allows access to command line input
import sys
import os
from github import Github
#module that hides typed keys; only use via command line
from getpass import getpass

#path to projects directory on machine
path = "/Users/nikourriola/Desktop/projects/"

#prompt for github username and password
username = input("username:  ")
password = getpass("password:  ")

def make():

    """
    Create a Github repository at specified path

    Parameters:
    None

    Returns:
    None
    """

    #project name given as first argument after calling shell script
    project_name = str(sys.argv[1])
    #create a directory for the repo
    os.makedirs(path + project_name)

    if not os.path.isdir(path+project_name):
        print("Directory {} not created".format(project_name))
        return

    #create instance of your account using username and password
    user_account = Github(username, password).get_user()
    #create a repo with project name
    repository = user_account.create_repo(project_name)
    print("Sucessfully created repository {}".format(project_name))

    return

if __name__ == "__main__":
    make()
