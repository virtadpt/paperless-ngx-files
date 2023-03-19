#!/usr/bin/env python3

import nltk
import os
import sys

print("Installing pre-trained NLTK models.")

nltk.download()

print("The model files have been installed into %s/nltk_data." %
    os.environ["HOME"])

sys.exit(0)

