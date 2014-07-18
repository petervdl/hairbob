.class abstract Lcom/airbnb/android/models/groups/_Reply;
.super Ljava/lang/Object;
.source "_Reply.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mAuthor:Lcom/airbnb/android/models/groups/Author;

.field protected mCreatedAt:Ljava/util/Date;

.field protected mId:I

.field protected mIsFlaggedBy:Z

.field protected mText:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method protected constructor <init>(Lcom/airbnb/android/models/groups/Author;Ljava/util/Date;Ljava/lang/String;ZI)V
    .registers 6
    .param p1, "author"    # Lcom/airbnb/android/models/groups/Author;
    .param p2, "createdAt"    # Ljava/util/Date;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "isFlaggedBy"    # Z
    .param p5, "id"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/airbnb/android/models/groups/_Reply;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/airbnb/android/models/groups/_Reply;->mAuthor:Lcom/airbnb/android/models/groups/Author;

    .line 23
    iput-object p2, p0, Lcom/airbnb/android/models/groups/_Reply;->mCreatedAt:Ljava/util/Date;

    .line 24
    iput-object p3, p0, Lcom/airbnb/android/models/groups/_Reply;->mText:Ljava/lang/String;

    .line 25
    iput-boolean p4, p0, Lcom/airbnb/android/models/groups/_Reply;->mIsFlaggedBy:Z

    .line 26
    iput p5, p0, Lcom/airbnb/android/models/groups/_Reply;->mId:I

    .line 27
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthor()Lcom/airbnb/android/models/groups/Author;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Reply;->mAuthor:Lcom/airbnb/android/models/groups/Author;

    return-object v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Reply;->mCreatedAt:Ljava/util/Date;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 78
    iget v0, p0, Lcom/airbnb/android/models/groups/_Reply;->mId:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Reply;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public isFlaggedBy()Z
    .registers 2

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/airbnb/android/models/groups/_Reply;->mIsFlaggedBy:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 101
    const-class v3, Lcom/airbnb/android/models/groups/Author;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/models/groups/Author;

    iput-object v3, p0, Lcom/airbnb/android/models/groups/_Reply;->mAuthor:Lcom/airbnb/android/models/groups/Author;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 103
    .local v1, "date0":J
    const-wide/32 v3, -0x80000000

    cmp-long v3, v1, v3

    if-eqz v3, :cond_20

    .line 104
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v3, p0, Lcom/airbnb/android/models/groups/_Reply;->mCreatedAt:Ljava/util/Date;

    .line 106
    :cond_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/models/groups/_Reply;->mText:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 108
    .local v0, "bools":[Z
    const/4 v3, 0x0

    aget-boolean v3, v0, v3

    iput-boolean v3, p0, Lcom/airbnb/android/models/groups/_Reply;->mIsFlaggedBy:Z

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/airbnb/android/models/groups/_Reply;->mId:I

    .line 110
    return-void
.end method

.method public setAuthor(Lcom/airbnb/android/models/groups/Author;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/groups/Author;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "author"
    .end annotation

    .prologue
    .line 40
    iput-object p1, p0, Lcom/airbnb/android/models/groups/_Reply;->mAuthor:Lcom/airbnb/android/models/groups/Author;

    .line 41
    return-void
.end method

.method public setCreatedAt(Ljava/util/Date;)V
    .registers 2
    .param p1, "value"    # Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "created_at"
    .end annotation

    .prologue
    .line 51
    iput-object p1, p0, Lcom/airbnb/android/models/groups/_Reply;->mCreatedAt:Ljava/util/Date;

    .line 52
    return-void
.end method

.method public setId(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 84
    iput p1, p0, Lcom/airbnb/android/models/groups/_Reply;->mId:I

    .line 85
    return-void
.end method

.method public setIsFlaggedBy(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_flagged_by"
    .end annotation

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/airbnb/android/models/groups/_Reply;->mIsFlaggedBy:Z

    .line 74
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "text"
    .end annotation

    .prologue
    .line 62
    iput-object p1, p0, Lcom/airbnb/android/models/groups/_Reply;->mText:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 93
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Reply;->mAuthor:Lcom/airbnb/android/models/groups/Author;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 94
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Reply;->mCreatedAt:Ljava/util/Date;

    if-nez v0, :cond_25

    const-wide/32 v0, -0x80000000

    :goto_d
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 95
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Reply;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/airbnb/android/models/groups/_Reply;->mIsFlaggedBy:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 97
    iget v0, p0, Lcom/airbnb/android/models/groups/_Reply;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    return-void

    .line 94
    :cond_25
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Reply;->mCreatedAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_d
.end method
