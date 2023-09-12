-- # THIS IS A MODULE SCRIPT
local SimpliCrypt = {}

function SimpliCrypt.crypt(message, key)
	local encrypted = ""
	local keyIndex = 1

	for i = 1, #message do
		local char = message:sub(i, i)
		local charCode = char:byte()
		local keyChar = key:sub(keyIndex, keyIndex):byte()

		keyIndex = keyIndex % #key + 1

		local encryptedChar = charCode + keyChar
		encrypted = encrypted .. string.char(encryptedChar)
	end

	return encrypted
end

function SimpliCrypt.decrypt(encryptedMessage, key)
	local decrypted = ""
	local keyIndex = 1

	for i = 1, #encryptedMessage do
		local char = encryptedMessage:sub(i, i)
		local charCode = char:byte()
		local keyChar = key:sub(keyIndex, keyIndex):byte()

		keyIndex = keyIndex % #key + 1

		local decryptedChar = charCode - keyChar
		decrypted = decrypted .. string.char(decryptedChar)
	end

	return decrypted
end

return SimpliCrypt
