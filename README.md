# spotify-cs506

## Goals
We aim to successfully predict the percentage of an artist's playtime across all their songs as well as to predict individual playtime for each of their tracks. We also hope to design our model such that changes in Spotify data, such as new artists and tracks, will result in a successful prediction by optimizing our model to adapt to differing data sets.

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

## Modelling
- **Clustering**: Implement a clustering model. We will test the relationship of playtime distributions.
    - **K-Means**: We will group songs and artists based on playtime similarity.

## Visualization
 Using Bar Graphs to keep track of percentages for each artist on how much of there song will be played under certain conditions.

## Test Plan
Withhold 20% of data for test, train on data collected in March, and test on data collected in April.
