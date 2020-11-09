#!/usr/bin/python3

import requests, sys, re


class bcolors:
    PURPLE = '\033[95m'
    BLUE = '\033[94m'
    YELLOW = '\033[93m'
    GREEN = '\033[92m'
    RED = '\033[91m'
    DARKCYAN = '\033[36m'
    UNDERLINE = '\033[4m'
    BOLD = '\033[1m'
    ENDC = '\033[0m'


def helpPanel():
    print(bcolors.DARKCYAN + "\n[" + bcolors.YELLOW + "!" + bcolors.DARKCYAN + "]" + bcolors.YELLOW + " Use: python3 " + sys.argv[0] + " www.example.com\n" + bcolors.ENDC)
    sys.exit(1)


if __name__ == '__main__':
    try:
        url = sys.argv[1]
        site = "https://isitup.org/"+url+".txt"

        response = requests.get(site)

        find = re.findall("\d{1,2}", response.text)

        if find[1] == "1":
            print("\n" + bcolors.GREEN + url +" is up.\n" + bcolors.ENDC)
        else:
            print("\n" + bcolors.RED + url +" is down.\n" + bcolors.ENDC)
    except:
        helpPanel()
