# Machine Learining Using Scikit-Learn

## Preprocessing & Feature Engineering

### Scaling
1. StandardScaler — useful default scaler
2. MinMaxScaler — useful for the data with known boundaries
3. RobustScaler
4. Normalizer
5. MaxAbsScaler — useful for sparse data


Scikit-Learn<br/>
estimator.fit(X_train, [y_train for supervised methods])
|estimator.predict(X_test)|estimator.transform(X_test)|
|:--|:--|
|classification<br/>regression<br/>clustering|preprocessing<br/>dimentionality reduction<br/>feature extraction<br/>feature selection|

### Transformaiton
```python
import pandas as pd

df['foo'] = pd.Categorical(df['foo'], categories = ['a', 'b', 'c'])

from sklearn.preprocessing import StandardScaler, OneHotEncoder
from sklearn.compose import make_column_transformer

categorical = df.dtypes == object

preprocess = make_column_transformer((
        (StandardScaler(), ~categorical),
        (OneHotEncoder(), categorical)
        ))

from sklearn.pipeline import make_pipeline
from sklearn.linear_model import LogisticRegression

pipe = make_pipeline(preprocess, LogisticRegression())
```

## Pipelines

### Workflow

**T<sub>1</sub> &#8594; ... &#8594; T<sub>n</sub> &#8594; P**, where<br/>
**T<sub>i</sub>** is a transformer, and<br/>
**P** is a predictor.
1. scaling
2. imputation


#### Without Naming Steps
```python
from sklearn.pipeline import make_pipeline

pipe = make_pipeline(StandardScaler(), KNeighborsRegressor())
pipe.steps  # show pipeline steps with their hyper-parameters
```
#### With Naming Steps
```python 
from sklearn.pipeline import Pipeline

pipe = Pipeline((
	('scaler', StandardScaler()),
	('regressor', KNeighborsRegressor())
	))
pipe.steps  # show pipeline steps with their hyper-parameters
```


1. split data
To avoid bias in splitting, use CrossValidation
2. scale data
To avoid information leakage, apply scaling to training set only and then transfer parameters to validation and test sets.
NB! Apply same scaling (including all the parameters) to training set and test set.

## Missing Values

Standard formats for missing values.
|library|format|
|:-:|:-:|
|numpy|np.nan (often)|
|pandas||
|sklearn||

### Missing data:<br/>
1. structurally missing(e.g. ) — may be useful as and of itself
2. randomly missing

### Data imputation
1. mean or median
2. knn
3. regression model
4. matrix factorisation (?)
### Feature Generation
1. interation terms
2. polynomial terms 
## Linear Regression Models
1. ordinary leas squares
2. ridge regularisation
3. lasso regularisation
4. elastic net (combination of ridge and lasso)

## Linear Classification Models
1. logistic regression (may be used with regularisation)
2. support-vector machine (SVM; better be used with regularisation)
3. one *vs.* one
4. one *vs.* rest
5. multinomial logistic regression


