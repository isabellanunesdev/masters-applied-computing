import pandas as pd

def transform_data(file_path, output_file):
    df = pd.read_csv(file_path)

    df.drop(['Person ID', 'Blood Pressure'], axis=1, inplace=True)

    gender_mapping = {'Male': 1, 'Female': 2}
    df['Gender'] = df['Gender'].map(gender_mapping)

    occupation_mapping = {
        'Software Engineer': 1, 'Doctor': 2, 'Sales Representative': 3,
        'Teacher': 4, 'Nurse': 5, 'Engineer': 6, 'Accountant': 7,
        'Scientist': 8, 'Lawyer': 9, 'Salesperson': 10, 'Manager': 11
    }
    df['Occupation'] = df['Occupation'].map(occupation_mapping)

    bmi_mapping = {'Overweight': 1, 'Normal': 2, 'Obese': 3, 'Normal Weight': 2}
    df['BMI Category'] = df['BMI Category'].map(bmi_mapping)

    sleep_disorder_mapping = {'None': 1, 'Sleep Apnea': 2, 'Insomnia': 3}
    df['Sleep Disorder'] = df['Sleep Disorder'].map(sleep_disorder_mapping).fillna(1)

    df.to_csv(output_file, index=False)
    print(f"Data saved to {output_file}")

transform_data('original-dataset.csv', 'fixed-dataset.csv')
