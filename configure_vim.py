#!/bin/python3

import os
import subprocess

PLUGIN_MANAGER = ["https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"]

COLORS = ["https://raw.githubusercontent.com/fmoralesc/molokayo/master/colors/molokayo.vim"]


def downloadSourceURL(source, dest):
    """
        Use curl to download a file defined with a URL, and download
    """
    # Create the folder path. If it exists don't raise exeption
    if not os.path.exists(source):
        os.mkdir(source)
    # extract file name from source url
    name = source.split("/")[-1]
    # Download the file
    subprocess.run(args=["curl", "-fLo", dest+"/"+name, "--create-dirs", source])


def downloadConfigFiles(base_dir):

    # Define vim directory
    vimAutoload     = base_dir + "/vim/autoload"
    vimColors       = base_dir + "/vim/colors"
    vimPluggins     = base_dir + "/vim/pluggins"

    """ vim-plugin management file
    VIM_PLUGIN_FILE: (str)
    PLUGIN_DEST:     (str) where to locate 'plug.vim' file
    """

    for source in PLUGIN_MANAGER:
        downloadSourceURL(source, vimAutoload)

    for source in COLORS:
        downloadSourceURL(source, vimColors)

def linkConfigDirectories(baseDir, homeDir):

    linkedConf = ["vimrc", "vim"]

    for fname in linkedConf:
        subprocess.run(args=["ln", "-sf", homeDir + "/"  + fname,
                                          baseDir + "/." + fname ])

def main():

    # Get $HOME directory
    HOME_DIR   = os.getenv("HOME")

    # Get the folder where the repo has been installed
    BASE_DIR   = os.getcwd()

    downloadConfigFiles(BASE_DIR)
    linkConfigDirectories(BASE_DIR, HOME_DIR)

if __name__ == "__main__":
    main()

