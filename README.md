# SimpliCrypt - Roblox Encryption Module
A roblox module script that encrypts/decrypts strings using a modified Caesar-Cipher that is almost impossible to crack.

## Features
* Strong encryption using a modified Caesar-Cipher algorithm.
* Simple and easy-to-use API for encrypting and decrypting strings.
* Enhance the security of sensitive data in your Roblox games and applications.

## Usage
Here's how to use SimpliCrypt in your Roblox code:
```lua
local SimpliCrypt = require(game.ServerStorage.SimpliCrypt) -- Change this to the path of your Module

-- Define a secret key for encryption (keep this key secure)
local secretKey = "AmzyrQOL"
local originalMessage = "Hello, SimpliCrypt!"

local encryptedMessage = SimpliCrypt.crypt(originalMessage, secretKey)

local decryptedMessage = SimpliCrypt.decrypt(encryptedMessage, secretKey)

print("Original Message: " .. originalMessage)
print("Encrypted Message: " .. encryptedMessage)
print("Decrypted Message: " .. decryptedMessage)
```

Make sure to replace "AmzyrQOL" with your own secret key. Keep the secret key secure and do not share it with others.

## Why?
SimpliCrypt is a valuable tool for enhancing Roblox project security. You can use SimpliCrypt to encrypt Remote Scripts and other critical components, making it difficult for hackers to intercept and modify.

### License
This module script can be used anywhere and anytime but modifying this script and taking credits is prohibited.
Failure to do so will lead to a DMCA (depending on what 'Amzyrahc' says)
* Also falls under MIT License
