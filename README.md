# spotify-cs506

## Goals
We aim to successfully predict whether any given song playing on Spotify will be skipped. We also hope to design our model such that we can predict a specific artist's playtime for any of their tracks by optimizing our model with generalized data and then tailoring it to an artist's discography. We want to compare time listened to multiple other variables listed below which we believe might have an impact on the outcome of whether a song is skipped, and how long it is listened to if it is skipped.

## Summary
PROJECT_NAME so far is a prediction model that predicts whether a song will be skipped from a dataset of streaming history from spotify. We provide several visualizations on the conditional probabilities of shuffling/not shuffling and skipping/finishing as well probability of skipping and finishing. Preliminary results were found by utilizing a decision tree.

## Dataset
- **Source**: We will be using the [Spotify Streaming History](https://www.kaggle.com/datasets/sgoutami/spotify-streaming-history) dataset from Kaggle. 
- **Features**:
    - **ms_played**: The duration of the track played in milliseconds.
    - **artist_name**: The name of the artist who performed the track.
    - **track_name**: The name of the track.
    - **reason_start**: The reason why the track started playing (e.g., user selection, autoplay, recommendation).
    - **reason_end**: The reason why the track stopped playing (e.g., natural end, user skip, interruption).
    - **shuffle**: Indicates whether shuffle mode was active during playback (TRUE or FALSE).
 We will be modeling based on 80% of data, keeping 20% for testing our results.

## Data Cleaning
- Cleaned the data for the trackDone column of the dataset to streamline the processing of that specific data in our preliminary decision tree.
- **Standardization**: Normalize CSV file by extracting the above features using `pandas` or a similar package.

## Modeling
- **Decision Tree**:
    - For our preliminary results, we decided to use a decision tree to predict whether a song gets skipped or not. For the final version of our project, we will compare the dataset on several models (including decision trees) to make a prediction.
    - DATA MODELING SPECIFICS

## Visualization
We utilized matplotlib to model various probabilities as well as correlation.
- **Conditional Probability**:
![conditional probability](https://github.com/user-attachments/assets/83040f8a-b33a-4abb-a813-39da7ba13e14)
    - EXPLANATION

INCLUDE IMAGES OF VISUALIZATIONS WITH EXPLANATIONS.

## Test Plan
Withhold 20% of data for test, train on data collected in March, and test on data collected in April.
