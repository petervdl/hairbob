.class abstract Lcom/airbnb/android/models/_PartialListing;
.super Ljava/lang/Object;
.source "_PartialListing.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mDoubleBlindReviews:Ljava/lang/Boolean;

.field protected mListingId:J

.field protected mListingOwnerUserId:J

.field protected mName:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Boolean;Ljava/lang/String;JJ)V
    .registers 7
    .param p1, "doubleBlindReviews"    # Ljava/lang/Boolean;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "listingOwnerUserId"    # J
    .param p5, "listingId"    # J

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/airbnb/android/models/_PartialListing;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/airbnb/android/models/_PartialListing;->mDoubleBlindReviews:Ljava/lang/Boolean;

    .line 21
    iput-object p2, p0, Lcom/airbnb/android/models/_PartialListing;->mName:Ljava/lang/String;

    .line 22
    iput-wide p3, p0, Lcom/airbnb/android/models/_PartialListing;->mListingOwnerUserId:J

    .line 23
    iput-wide p5, p0, Lcom/airbnb/android/models/_PartialListing;->mListingId:J

    .line 24
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public getListingId()J
    .registers 3

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/airbnb/android/models/_PartialListing;->mListingId:J

    return-wide v0
.end method

.method public getListingOwnerUserId()J
    .registers 3

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/airbnb/android/models/_PartialListing;->mListingOwnerUserId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/airbnb/android/models/_PartialListing;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isDoubleBlindReviews()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/airbnb/android/models/_PartialListing;->mDoubleBlindReviews:Ljava/lang/Boolean;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 86
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/airbnb/android/models/_PartialListing;->mDoubleBlindReviews:Ljava/lang/Boolean;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_PartialListing;->mName:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/android/models/_PartialListing;->mListingOwnerUserId:J

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/android/models/_PartialListing;->mListingId:J

    .line 90
    return-void
.end method

.method public setDoubleBlindReviews(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/Boolean;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "has_double_blind_reviews"
    .end annotation

    .prologue
    .line 37
    iput-object p1, p0, Lcom/airbnb/android/models/_PartialListing;->mDoubleBlindReviews:Ljava/lang/Boolean;

    .line 38
    return-void
.end method

.method public setListingId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/airbnb/android/models/_PartialListing;->mListingId:J

    .line 71
    return-void
.end method

.method public setListingOwnerUserId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "user_id"
    .end annotation

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/airbnb/android/models/_PartialListing;->mListingOwnerUserId:J

    .line 60
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "name"
    .end annotation

    .prologue
    .line 48
    iput-object p1, p0, Lcom/airbnb/android/models/_PartialListing;->mName:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/airbnb/android/models/_PartialListing;->mDoubleBlindReviews:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/airbnb/android/models/_PartialListing;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-wide v0, p0, Lcom/airbnb/android/models/_PartialListing;->mListingOwnerUserId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 82
    iget-wide v0, p0, Lcom/airbnb/android/models/_PartialListing;->mListingId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 83
    return-void
.end method
