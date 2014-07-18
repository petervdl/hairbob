.class public Lcom/airbnb/android/models/Collection;
.super Lcom/airbnb/android/models/_Collection;
.source "Collection.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/Collection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    new-instance v0, Lcom/airbnb/android/models/Collection$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/Collection$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/Collection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/airbnb/android/models/_Collection;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/_Collection;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 59
    if-ne p0, p1, :cond_5

    .line 72
    :cond_4
    :goto_4
    return v1

    .line 62
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 63
    goto :goto_4

    .line 65
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 66
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 68
    check-cast v0, Lcom/airbnb/android/models/Collection;

    .line 69
    .local v0, "other":Lcom/airbnb/android/models/Collection;
    iget-wide v3, p0, Lcom/airbnb/android/models/Collection;->mId:J

    iget-wide v5, v0, Lcom/airbnb/android/models/Collection;->mId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    .line 70
    goto :goto_4
.end method

.method public bridge synthetic getId()J
    .registers 3

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/_Collection;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/_Collection;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getListings()Ljava/util/List;
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/_Collection;->getListings()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getListingsCount()I
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/_Collection;->getListingsCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/_Collection;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivacyAsString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/airbnb/android/models/Collection;->isPrivateCollection()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "private"

    :goto_9
    return-object v0

    :cond_a
    const-string/jumbo v0, "public"

    goto :goto_9
.end method

.method public hashCode()I
    .registers 8

    .prologue
    .line 51
    const/16 v0, 0x1f

    .line 52
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 53
    .local v1, "result":I
    iget-wide v2, p0, Lcom/airbnb/android/models/Collection;->mId:J

    iget-wide v4, p0, Lcom/airbnb/android/models/Collection;->mId:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v1, v2, 0x1f

    .line 54
    return v1
.end method

.method public bridge synthetic isPrivateCollection()Z
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/_Collection;->isPrivateCollection()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Collection;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setId(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_Collection;->setId(J)V

    return-void
.end method

.method public bridge synthetic setImageUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Collection;->setImageUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setListings(Ljava/util/List;)V
    .registers 6
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "listings"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/requests/Wrappers$ListingWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "listingsWrapper":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/requests/Wrappers$ListingWrapper;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/airbnb/android/models/Collection;->mListings:Ljava/util/List;

    .line 21
    if-eqz p1, :cond_27

    .line 22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/requests/Wrappers$ListingWrapper;

    .line 23
    .local v1, "wrapper":Lcom/airbnb/android/requests/Wrappers$ListingWrapper;
    if-eqz v1, :cond_d

    iget-object v2, v1, Lcom/airbnb/android/requests/Wrappers$ListingWrapper;->listing:Lcom/airbnb/android/models/Listing;

    if-eqz v2, :cond_d

    .line 24
    iget-object v2, p0, Lcom/airbnb/android/models/Collection;->mListings:Ljava/util/List;

    iget-object v3, v1, Lcom/airbnb/android/requests/Wrappers$ListingWrapper;->listing:Lcom/airbnb/android/models/Listing;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 28
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "wrapper":Lcom/airbnb/android/requests/Wrappers$ListingWrapper;
    :cond_27
    return-void
.end method

.method public bridge synthetic setListingsCount(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Collection;->setListingsCount(I)V

    return-void
.end method

.method public bridge synthetic setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Collection;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setPrivateCollection(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Collection;->setPrivateCollection(Z)V

    return-void
.end method

.method public updateListings(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "listings":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    iput-object p1, p0, Lcom/airbnb/android/models/Collection;->mListings:Ljava/util/List;

    .line 32
    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_Collection;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
