# spotify-cs506

## Goals
We aim to successfully predict whether any given song playing on Spotify will be skipped. We also hope to design our model such that we can predict a specific artist's playtime for any of their tracks by optimizing our model with generalized data and then tailoring it to an artist's discography. We want to compare time listened to multiple other varaibles listed below which we believe might have an impact on the outcome of whether a song is skipped, and how long it is listened to if it is skipped.

## Data Collection
- **Source**: We will be using the [Spotify Streaming History](https://www.kaggle.com/datasets/sgoutami/spotify-streaming-history) dataset from Kaggle . 
- **Features**:
    - **ms_played**: The duration of the track played in milliseconds.
    - **artist_name**: The name of the artist who performed the track.
    - **track_name**: The name of the track.
    - **reason_start**: The reason why the track started playing (e.g., user selection, autoplay, recommendation).
    - **reason_end**: The reason why the track stopped playing (e.g., natural end, user skip, interruption).
    - **shuffle**: Indicates whether shuffle mode was active during playback (TRUE or FALSE).
 We will be modeling based on 80% of data, keeping 20% for testing our results.

## Data Cleaning
- **Standardization**: Normalize CSV file by extracting the above features using `pandas` or a similar package.

## Modelling
- **Clustering**: Implement a clustering model. We will test the relationship of playtime distributions.
    - **K-Means**: We will group songs and artists based on playtime similarity.
- **Training Approach**:
    - **Unsupervised Learning**: Our clustering model will test with no keys/labels to determine patterns and relationships between songs and how long they are played.

## Visualization
 Using Bar Graphs to keep track of percentages for each artist on how much of there song will be played under certain conditions.

## Test Plan
Withhold 20% of data for test, train on data collected in March, and test on data collected in April.
