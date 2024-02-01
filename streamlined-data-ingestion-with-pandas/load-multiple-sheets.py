# HBA, 2024-02-01
# Loading multiple sheets of an Excel (spreadsheet) file
# Convenient when importing sheets of the same format (columns) 
# -------------------------------------------------------------

# Load both the 2016 and 2017 sheets by name
all_survey_data = pd.read_excel("fcc_survey.xlsx",
                                sheet_name=['2016', '2017']) # using sheet names
print(type(all_survey_data))


# Load all sheets in the Excel file
all_survey_data = pd.read_excel("fcc_survey.xlsx",
                                sheet_name=[0, '2017']) # using index and sheet name
print(all_survey_data.keys())


# Load all sheets in the Excel file
all_survey_data = pd.read_excel("fcc_survey.xlsx",
                                sheet_name=None) 
print(all_survey_data.keys())