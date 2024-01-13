# Cipher 🔐
This is a simple Ruby script that can be added to `PATH`, and can encrypt/decrypt files using a single command in the terminal. 

# Installation ✅
To use this script, you must first have Ruby installed. Great installation instructions can be found [here](https://www.theodinproject.com/lessons/ruby-installing-ruby). 

Next, move the `cipher.sh` and `cipher.rb` files into your `~/bin` directory. If it doesn't exist, make it by running 
```bash
cd ~
mkdir bin
```

Quit the terminal, and reopen it, then run the following in any directory:
```bash
cipher.sh encrypt some_file.some_ext
```
This command will create a new file called `some_file_encrypted.some_ext` in your current directory. The contents of this file is encrypted; the contents of your diary is now safe! Huzzah!
To decrypt a file, run
```
cipher.sh decrypt some_file.some_ext
```
This command will createa new file called `some_file_decrypted.some_ext` in your current directory. 

# Troubleshooting 🔫
If you're getting an `unknown command: cipher` error, you may need to add the following to your `.zshrc` or `bashrc` file:
```bash
# Set ~/bin to PATH
export PATH=$PATH:~/bin
```
