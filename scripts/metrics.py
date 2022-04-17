from distutils.command.clean import clean
from locale import currency
from textwrap import indent
import pandas as pd
from openpyxl import load_workbook
import numpy as np

def get_sheetnames_xlsx(filepath):
    wb = load_workbook(filepath, read_only=True, keep_links=False)
    return wb.sheetnames

if __name__ == '__main__':
    df_unican = pd.read_csv("../rtt_unican.csv")
    df_vultr = pd.read_csv("../measures/GoogleCloud.csv")

    