import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.tree import DecisionTreeClassifier
from sklearn.metrics import accuracy_score, classification_report
from sklearn.tree import export_text
from dtreeviz.trees import DTreeVizAPI

file_path = 'fixed-dataset.csv'
df = pd.read_csv(file_path)

X = df.drop('Sleep Disorder', axis=1) 
y = df['Sleep Disorder'] 

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.3, random_state=42)

model = DecisionTreeClassifier(random_state=42)
model.fit(X_train, y_train)

y_pred = model.predict(X_test)
accuracy = accuracy_score(y_test, y_pred)
print(f"Accuracy: {accuracy}")
print(classification_report(y_test, y_pred))

feature_importances = model.feature_importances_
print("Feature importances:", feature_importances)

tree_rules = export_text(model, feature_names=list(X.columns))
print(tree_rules)
