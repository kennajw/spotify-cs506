# Skipify
Presentation: https://youtu.be/WOrUYCalHAo

## Goals
We aim to successfully predict whether any given song playing on Spotify will be skipped. Our models predict whether a track from a specified artist and album will be skipped and how many seconds it will play. We accomplished this by targeting columns of the dataset the ms played and a binary converted column for the reason end (now simply skipped or not skipped). We believe that these insights could be an important tool for Spotify for what songs would be best to share with users.

## Summary
Skipify consists of 2 prediction models that predict whether a song/track will be skipped and how many seconds (from a range) that song will play based on a dataset that represents a user's Spotify streaming history. For these models, we used a Support Vector Machine (SVM) model, specifically Linear SVC to predict these. Below, we provide info on the dataset itself, cleaning, modeling, evaluation, visualizations, and more!

## Dataset
- **Source**: We will be using the [Spotify Streaming History](https://www.kaggle.com/datasets/sgoutami/spotify-streaming-history) dataset from Kaggle. 
- **Features**:
    - **ms_played**: The duration of the track played in milliseconds.
    - **artist_name**: The name of the artist who performed the track.
    - **track_name**: The name of the track.
    - **reason_start**: The reason why the track started playing (e.g., user selection, autoplay, recommendation).
    - **reason_end**: The reason why the track stopped playing (e.g., natural end, user skip, interruption).
    - **shuffle**: Indicates whether shuffle mode was active during playback (TRUE or FALSE).
    - **platform**: The device or platform used to stream the track (e.g., mobile, desktop, web player).
      
 Our model trained on 75% of data, keeping 25% for testing our results.

## Data Cleaning
- **Data Cleaning**: Cleaned the data for the track_done column of the dataset to streamline the processing of that specific data, converting it to a csv, which we used in our preliminary decision tree.
- **Standardization**: Normalize CSV file by extracting the above features using `pandas` or a similar package.

## Modeling
- **SVM**:
    - We chose to do a `Support Vector Machine (SVM)` model to predict whether a track will be skipped or not and how long a track will be played. Before fitting our model to the data, we split the training and testing set by 75% and 25% respectively. Then, we completed a number of preprocessing steps by creating various pipelines and transforming the columns of those pipelines using `Column Transformer`. Before that, we preprocessed the categorical data using `One Hot Encoder` and numerical data using both a `Simple Imputer` and `Standard Scaler`. Finally we feed this into the `Linear SVC model`, setting the various parameters.
    - We also created two different models which each predict a different target. The base of the model is the same (the model described in the point above). The first model predicts our first goal of the project which is whether a track will be skipped. The second model just changes the target column from reason_end to seconds_played_range, allowing us to predict the range of seconds a track will be played.
    - Initially, we only created one model that predicted the reason_end, not just predicting whether it is skipped or not (so predicting every possible reason_end). This gave our initial model approximately an 84% accuracy. Since our goal was more specific, we then changed it just to predict whether it would be skipped or not, which improved the accuracy of our model to 96%.
 
## Optimization:
- We optimized our SVM model by creating a function that assigns weights based on Y_train. We then fed these calculated weights into our class_weights parameter of the Linear SVC model.

## Evaluation:
- For evaluation, we mainly relied on sklearn.metrics accuracy_score and confusion_matrix functions as well as our visualizations (see section below).
- **Skipped**:
    - On the testing set, we were able to achieve a 95.6% accuracy.
    - Confusion Matrix:
        - ![confusion_matrix_skipped](https://github.com/user-attachments/assets/abd6d298-a80f-4638-9800-679eec26dd3a)
- **Seconds Played**:
    - On the testing set, we were able to achieve a 85% accuracy.
    - Confusion Matrix:
        - ![confusion_matrix_seconds_played](https://github.com/user-attachments/assets/fd91bc3d-419c-4452-a266-eea6fb21974a)

## Visualization
We utilized matplotlib to model various probabilities as well as correlation.
- **Conditional Probability**:Below are 3 different graphs each of which better help understand our data, and the probabilistic associations between our data used, and reason_end. It gives confirmation that these datasets were important and had some sort of association with our question. In the following visualizations, 0 (blue) is played and 1 (grey) is skipped.
- ![Screenshot 2025-04-30 143858](https://github.com/user-attachments/assets/64e62c9b-3d6f-4b64-a204-6a31a7443655)
  - An example of the calculated conditional probabilities in order to get a better idea of the relationship between shuffling and skipping a song are displayed below.
        - **P(Skipping | Shuffle)** = 0.54
        - **P(Not Skipping | Not Shuffle)** = 0.68
        - **P(Skipping | Not Shuffle)** = 0.32
        - **P(Not Skipping | Shuffle)** = 0.46
- ![Screenshot 2025-04-30 143916](https://github.com/user-attachments/assets/2e25b839-9282-4fa4-a8c0-73f2f2b375e4)
  - This graph displays the given reason_start column versus the probability that it was skipped or not, the wide variety and high range of differencces between the reason_starts and there probabilities. This was a key column in understanding our data and this graph gave us great insight to there connections.
- ![Screenshot 2025-04-30 143844](https://github.com/user-attachments/assets/b191a9a6-8b4d-4fcc-ad1f-75a315b87d3a)
    - This last graph is one that connects time spent listening to the odds that it was skipped, this has a very clear association intuitively, and as well it can be seen that it has a very high association with whether it is skipped as well.
 
- **3D Visualization**:
    - We created an interactive visualization that depicts the relationship between reason_start, shuffle, and secs_played on the initial dataset as seen below:
    - **Key**:
        - **yellow**: skipped
        - **blue**: not skipped        
     - ![download](https://github.com/user-attachments/assets/900be622-1484-4f81-9175-654481725ceb)
    - We also created an interactive visualization that the depicts the relationship between reason_start, shuffle, and secs_played on the testing dataset as seen below:
      - **Key**:
        - **yellow**: skipped
        - **blue**: not skipped 
     - ![download (1)](https://github.com/user-attachments/assets/93b9194c-6941-4a39-b851-3faab782278a)

    - The second graph demonstrates that our model was able to find similar results.




## Reproducability
- The code is primed to run on the example data from Kaggle titled "spotify_history.csv". If testing needs to be done on different data, replace any instance of pd.read_csv with the name of the different file.
- **How to Run (in terminal)**:
    - `make`: creates skipify html
    - `make install`: installs all dependencies from requirements.txt
    - `make run`: runs makefile
    - `open skipify.html`: opens html file in browser
    - `make clean`: (optional) removes skipify.html from folder directory
