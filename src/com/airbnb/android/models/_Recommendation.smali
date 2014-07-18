.class abstract Lcom/airbnb/android/models/_Recommendation;
.super Ljava/lang/Object;
.source "_Recommendation.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mCreatedAt:Ljava/util/Date;

.field protected mId:I

.field protected mRecommendation:Ljava/lang/String;

.field protected mRecommender:Lcom/airbnb/android/models/User;

.field protected mRelationshipType:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method protected constructor <init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/models/User;I)V
    .registers 6
    .param p1, "createdAt"    # Ljava/util/Date;
    .param p2, "recommendation"    # Ljava/lang/String;
    .param p3, "relationshipType"    # Ljava/lang/String;
    .param p4, "recommender"    # Lcom/airbnb/android/models/User;
    .param p5, "id"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/airbnb/android/models/_Recommendation;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/airbnb/android/models/_Recommendation;->mCreatedAt:Ljava/util/Date;

    .line 23
    iput-object p2, p0, Lcom/airbnb/android/models/_Recommendation;->mRecommendation:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/airbnb/android/models/_Recommendation;->mRelationshipType:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/airbnb/android/models/_Recommendation;->mRecommender:Lcom/airbnb/android/models/User;

    .line 26
    iput p5, p0, Lcom/airbnb/android/models/_Recommendation;->mId:I

    .line 27
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/airbnb/android/models/_Recommendation;->mCreatedAt:Ljava/util/Date;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lcom/airbnb/android/models/_Recommendation;->mId:I

    return v0
.end method

.method public getRecommendation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/airbnb/android/models/_Recommendation;->mRecommendation:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommender()Lcom/airbnb/android/models/User;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/airbnb/android/models/_Recommendation;->mRecommender:Lcom/airbnb/android/models/User;

    return-object v0
.end method

.method public getRelationshipType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/airbnb/android/models/_Recommendation;->mRelationshipType:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 90
    .local v0, "date0":J
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_12

    .line 91
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/airbnb/android/models/_Recommendation;->mCreatedAt:Ljava/util/Date;

    .line 93
    :cond_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/models/_Recommendation;->mRecommendation:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/models/_Recommendation;->mRelationshipType:Ljava/lang/String;

    .line 95
    const-class v2, Lcom/airbnb/android/models/User;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/User;

    iput-object v2, p0, Lcom/airbnb/android/models/_Recommendation;->mRecommender:Lcom/airbnb/android/models/User;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/airbnb/android/models/_Recommendation;->mId:I

    .line 97
    return-void
.end method

.method public setId(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 72
    iput p1, p0, Lcom/airbnb/android/models/_Recommendation;->mId:I

    .line 73
    return-void
.end method

.method public setRecommendation(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "recommendation"
    .end annotation

    .prologue
    .line 45
    iput-object p1, p0, Lcom/airbnb/android/models/_Recommendation;->mRecommendation:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setRelationshipType(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "relationship_type_text"
    .end annotation

    .prologue
    .line 56
    iput-object p1, p0, Lcom/airbnb/android/models/_Recommendation;->mRelationshipType:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/airbnb/android/models/_Recommendation;->mCreatedAt:Ljava/util/Date;

    if-nez v0, :cond_20

    const-wide/32 v0, -0x80000000

    :goto_7
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 82
    iget-object v0, p0, Lcom/airbnb/android/models/_Recommendation;->mRecommendation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/airbnb/android/models/_Recommendation;->mRelationshipType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/airbnb/android/models/_Recommendation;->mRecommender:Lcom/airbnb/android/models/User;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 85
    iget v0, p0, Lcom/airbnb/android/models/_Recommendation;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    return-void

    .line 81
    :cond_20
    iget-object v0, p0, Lcom/airbnb/android/models/_Recommendation;->mCreatedAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_7
.end method
