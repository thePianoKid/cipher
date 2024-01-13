# Cipher 🔐
This is a simple Ruby script that can be added to `PATH`, and can encrypt/decrypt files using a single command in the terminal. The script implements Caesar's Cipher, a simple algorithm that should keep the contents of your diary safe from the unwashed hordes who wish to invade your privacy. 

![chateverywhere-Julius Caesar working on a computer, Photorealism --quality 1 --chaos 51705162790245](https://github.com/thePianoKid/cipher/assets/89939656/51eaf399-4dc4-4cb7-8fc9-0d6c40420f49)


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
