# Permutation Cipher Tool

 This repository contains MATLAB code developed for an assignment on permutation ciphers. The project involves creating tools for encrypting, decrypting, and attacking messages encrypted with a permutation cipher. The coursework is divided into several parts, each building on the previous ones.

 ## Files

 ### Key.m

This class handles keys for the permutation cipher. It includes the following features:

#### Properties:
* **perm**: A permutation of the numbers 1 to 26 representing the key.
#### Methods:
* **Key(p)**: Constructor that initializes the key with a given permutation **p**.
* **display()**: Displays the key as a permutation of the alphabet.
* **mtimes(l, m)**: Multiplies two keys to get their composition.
* **invert()**: Returns the inverse of the key.
* **encrypt(m)**: Encrypts a message **m** using the key.
* **decrypt(m)**: Decrypts a message **m** using the key.

### Attack.m
This class is used to attack a message encrypted with a permutation cipher using frequency analysis. It includes the following features:

#### Properties:
* **ciphertext**: Stores the encrypted message.
* **key**: Stores a **Key** object representing the current key.
* **past**: Stores a list of previous swaps for undo functionality.
#### Methods:
* **Attack(ciphertext)**: Constructor that initializes the object with the given ciphertext and the identity key.
* **display()**: Displays the current key and the first 300 characters of the decrypted message.
* **lettercount()**: Counts the occurrences of each letter in the ciphertext.
* **attack()**: Performs a frequency attack to guess the key.
* **sample()**: Displays a random 300-character sample of the decrypted ciphertext.
* **swap(c1, c2)**: Swaps two letters in the current key.
* **undo()**: Reverts the previous swap.

### ciphertext.m

This script contains the encrypted message to be attacked. Running it assigns the variable **secret**.

## Testing

The **tests.m** script includes several test cases to ensure the correctness of the implemented methods. Run the script to perform the tests.