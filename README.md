# Fetal_Health_RProject

This R project involves the classification analysis of fetal health data using the k-Nearest Neighbors (k-NN) algorithm. The key steps are as follows:

Library Loading: The class and caret libraries are loaded to facilitate classification tasks and model evaluation in R.

Data Loading and Visualization: The dataset is loaded from a CSV file, and its contents are visualized using the View() function.

Data Splitting: The dataset is divided into training, validation, and test sets using the createDataPartition function from the caret package.

k-NN Classification on Validation Set: The k-NN algorithm is applied to the validation set using the training set. The classification results are stored in pred1, and a confusion matrix (errmat1) is generated to evaluate the model's performance on the validation set.

k-NN Classification on Test Set: Similar to the validation set, the k-NN algorithm is applied to the test set, and the results are stored in pred2. A confusion matrix (errmat2) is generated to assess the model's performance on the test set.
