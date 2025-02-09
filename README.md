# spotify-cs506

## Goals
We aim to successfully predict the percentage of an artist's playtime across all their songs as well as to predict individual playtime for each of their tracks. We also hope to design our model such that changes in Spotify data, such as new artists and tracks, will result in a successful prediction by optimizing our model to adapt to differing data sets.

Data Needs: we will be using the Spotify Streaming History dataset from Kaggle (https://www.kaggle.com/datasets/sgoutami/spotify-streaming-history) and we will be collecting: ms_played, artist_name, track_name, reason_start, reason_end, shuffle. We will be modeling based on 80% of data, keeping 20% for testing our results.

## Modelling
- **Clustering**: Implement a clustering model. We will test the relationship of playtime distributions.
    -**K-Means**: We will group songs and artists based on playtime similarity.

Visualization: Bar Graphs.

Test Plan: Withhold 20% of data for test, train on data collected in March, and test on data collected in April.
