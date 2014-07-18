.class public interface abstract Lcom/airbnb/android/interfaces/BrowsableListingsInterface;
.super Ljava/lang/Object;
.source "BrowsableListingsInterface.java"


# virtual methods
.method public abstract getListings()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOrigin()Ljava/lang/String;
.end method

.method public abstract getSearchGeography()Lcom/airbnb/android/models/SearchGeography;
.end method

.method public abstract getSearchQuery()Ljava/lang/String;
.end method

.method public abstract getTotalListingCount()I
.end method

.method public abstract setListingsData(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;I)V"
        }
    .end annotation
.end method
