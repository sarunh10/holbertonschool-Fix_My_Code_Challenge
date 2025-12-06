#!/usr/bin/env python3
import hashlib


class User:
    def __init__(self):
        self.__password = None

    def set_password(self, password):
        if password is None:
            self.__password = None
        else:
            # Store SHA256 hash (hexadecimal)
            self.__password = hashlib.sha256(password.encode()).hexdigest()

    def is_valid_password(self, password):
        if self.__password is None or password is None:
            return False

        # Hash input and compare with stored hash
        return hashlib.sha256(password.encode()).hexdigest() == self.__password
