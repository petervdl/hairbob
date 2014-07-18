.class public Lcom/airbnb/android/models/Photo;
.super Lcom/airbnb/android/models/_Photo;
.source "Photo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/models/_Photo;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/airbnb/android/models/Photo;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/Photo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMarkedForDeletion:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    new-instance v0, Lcom/airbnb/android/models/Photo$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/Photo$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/Photo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/airbnb/android/models/_Photo;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(J)V
    .registers 3
    .param p1, "id"    # J

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/airbnb/android/models/_Photo;-><init>()V

    .line 16
    iput-wide p1, p0, Lcom/airbnb/android/models/Photo;->mId:J

    .line 17
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/airbnb/android/models/Photo;)I
    .registers 4
    .param p1, "another"    # Lcom/airbnb/android/models/Photo;

    .prologue
    .line 27
    iget v0, p0, Lcom/airbnb/android/models/Photo;->mSortOrder:I

    iget v1, p1, Lcom/airbnb/android/models/Photo;->mSortOrder:I

    if-ne v0, v1, :cond_8

    .line 28
    const/4 v0, 0x0

    .line 32
    :goto_7
    return v0

    .line 29
    :cond_8
    iget v0, p0, Lcom/airbnb/android/models/Photo;->mSortOrder:I

    iget v1, p1, Lcom/airbnb/android/models/Photo;->mSortOrder:I

    if-le v0, v1, :cond_10

    .line 30
    const/4 v0, 0x1

    goto :goto_7

    .line 32
    :cond_10
    const/4 v0, -0x1

    goto :goto_7
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 10
    check-cast p1, Lcom/airbnb/android/models/Photo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/models/Photo;->compareTo(Lcom/airbnb/android/models/Photo;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 10
    invoke-super {p0}, Lcom/airbnb/android/models/_Photo;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 78
    if-ne p0, p1, :cond_5

    .line 91
    :cond_4
    :goto_4
    return v1

    .line 81
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 82
    goto :goto_4

    .line 84
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 85
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 87
    check-cast v0, Lcom/airbnb/android/models/Photo;

    .line 88
    .local v0, "other":Lcom/airbnb/android/models/Photo;
    iget-wide v3, p0, Lcom/airbnb/android/models/Photo;->mId:J

    iget-wide v5, v0, Lcom/airbnb/android/models/Photo;->mId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    .line 89
    goto :goto_4
.end method

.method public bridge synthetic getCaption()Ljava/lang/String;
    .registers 2

    .prologue
    .line 10
    invoke-super {p0}, Lcom/airbnb/android/models/_Photo;->getCaption()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getId()J
    .registers 3

    .prologue
    .line 10
    invoke-super {p0}, Lcom/airbnb/android/models/_Photo;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getPictureUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 10
    invoke-super {p0}, Lcom/airbnb/android/models/_Photo;->getPictureUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSortOrder()I
    .registers 2

    .prologue
    .line 10
    invoke-super {p0}, Lcom/airbnb/android/models/_Photo;->getSortOrder()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getThumbnailUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 10
    invoke-super {p0}, Lcom/airbnb/android/models/_Photo;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getXlPictureUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 10
    invoke-super {p0}, Lcom/airbnb/android/models/_Photo;->getXlPictureUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 8

    .prologue
    .line 70
    const/16 v0, 0x1f

    .line 71
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 72
    .local v1, "result":I
    iget-wide v2, p0, Lcom/airbnb/android/models/Photo;->mId:J

    iget-wide v4, p0, Lcom/airbnb/android/models/Photo;->mId:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v1, v2, 0x1f

    .line 73
    return v1
.end method

.method public markForDeletion()V
    .registers 2

    .prologue
    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/models/Photo;->mMarkedForDeletion:Z

    .line 23
    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Photo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setCaption(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Photo;->setCaption(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setId(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 10
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_Photo;->setId(J)V

    return-void
.end method

.method public bridge synthetic setPictureUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Photo;->setPictureUrl(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setSortOrder(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Photo;->setSortOrder(I)V

    return-void
.end method

.method public bridge synthetic setThumbnailUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Photo;->setThumbnailUrl(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setXlPictureUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Photo;->setXlPictureUrl(Ljava/lang/String;)V

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 6

    .prologue
    .line 37
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 39
    .local v1, "photo":Lorg/json/JSONObject;
    :try_start_5
    const-string/jumbo v2, "caption"

    iget-object v3, p0, Lcom/airbnb/android/models/Photo;->mCaption:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    const-string/jumbo v2, "id"

    iget-wide v3, p0, Lcom/airbnb/android/models/Photo;->mId:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 41
    const-string/jumbo v2, "sort_order"

    iget v3, p0, Lcom/airbnb/android/models/Photo;->mSortOrder:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 43
    iget-boolean v2, p0, Lcom/airbnb/android/models/Photo;->mMarkedForDeletion:Z

    if-eqz v2, :cond_2a

    .line 44
    const-string/jumbo v2, "_destroy"

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_2a} :catch_2b

    .line 50
    :cond_2a
    :goto_2a
    return-object v1

    .line 46
    :catch_2b
    move-exception v0

    .line 47
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "Photo model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "toJson failed with exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 10
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_Photo;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
