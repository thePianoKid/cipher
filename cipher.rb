KEY = 7
ALPHABET = Hash.new

if (ARGV.length != 2)
    puts "cipher: invalid arguments"
    puts "Try 'cipher --help' for more information."
    abort
else
    COMMAND_LOWER = ARGV[0].downcase
    if (COMMAND_LOWER != "encrypt" && COMMAND_LOWER != "decrypt")
        puts "cipher: invalid argument '#{COMMAND}'"
        puts "The valid options for the first parameter are 'encrypt' or 'decrypt'"
        abort
    end
    COMMAND = COMMAND_LOWER
end

i = 0
for char in ("a" .. "z")
    ALPHABET[char] = i
    i += 1
end

def encrypt(message, key)
    output = ""
    message.split(//).length.times do |i|
        if (ALPHABET.has_key?(message[i]))
            output << ALPHABET.key((ALPHABET[message[i]] + key) % ALPHABET.length)
        else
            output << message[i]
        end
    end
    output
end

def decrypt(encrypted_message)
    encrypt(encrypted_message, ALPHABET.length - KEY)
end

if (File.file?(ARGV[1]))
    file_name = ARGV[1]
    abs_path, _, file_suffix = file_name.rpartition(".")

    if (COMMAND_LOWER == "encrypt")
        abs_path << "_encrypted"
        encrypted_file_name = abs_path << "." << file_suffix

        File.foreach(file_name) { |line| File.open(encrypted_file_name, "a") { |f| f.puts encrypt(line, KEY) } }
    else
        abs_path << "_decrypted"
        encrypted_file_name = abs_path << "." << file_suffix

        File.foreach(file_name) { |line| File.open(encrypted_file_name, "a") { |f| f.puts decrypt(line) } }
    end
else
    if (COMMAND_LOWER == "encrypt")
        puts encrypt(ARGV[1], KEY)
    else
        puts decrypt(ARGV[1])
    end
end
