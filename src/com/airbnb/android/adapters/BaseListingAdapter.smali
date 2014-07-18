.class public abstract Lcom/airbnb/android/adapters/BaseListingAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseListingAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mListings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;"
        }
    .end annotation
.end field

.field private mRemainingData:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-class v0, Lcom/airbnb/android/adapters/BaseListingAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/adapters/BaseListingAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "allowPagination"    # Z

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/adapters/BaseListingAdapter;->mListings:Ljava/util/List;

    .line 22
    iput-boolean p1, p0, Lcom/airbnb/android/adapters/BaseListingAdapter;->mRemainingData:Z

    .line 23
    return-void
.end method


# virtual methods
.method protected addData(Ljava/util/List;)V
    .registers 4
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
    .line 58
    .local p1, "listings":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    iget-object v0, p0, Lcom/airbnb/android/adapters/BaseListingAdapter;->mListings:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 59
    sget-object v0, Lcom/airbnb/android/adapters/BaseListingAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Removed duplicated listing(s) from adapter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_10
    iget-object v0, p0, Lcom/airbnb/android/adapters/BaseListingAdapter;->mListings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 63
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/BaseListingAdapter;->notifyDataSetChanged()V

    .line 64
    return-void
.end method

.method public addListing(Lcom/airbnb/android/models/Listing;)V
    .registers 3
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/airbnb/android/adapters/BaseListingAdapter;->mListings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/BaseListingAdapter;->notifyDataSetChanged()V

    .line 108
    return-void
.end method

.method public abstract cancelAdditionalLoading()V
.end method

.method public clearListings()V
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/airbnb/android/adapters/BaseListingAdapter;->mListings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 130
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/BaseListingAdapter;->notifyDataSetChanged()V

    .line 131
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/airbnb/android/adapters/BaseListingAdapter;->mRemainingData:Z

    if-eqz v0, :cond_d

    .line 28
    iget-object v0, p0, Lcom/airbnb/android/adapters/BaseListingAdapter;->mListings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 30
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/airbnb/android/adapters/BaseListingAdapter;->mListings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_c
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/airbnb/android/adapters/BaseListingAdapter;->mListings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemAsListing(I)Lcom/airbnb/android/models/Listing;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/BaseListingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Listing;

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 44
    int-to-long v0, p1

    return-wide v0
.end method

.method protected hasRemainingData()Z
    .registers 2

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/airbnb/android/adapters/BaseListingAdapter;->mRemainingData:Z

    return v0
.end method

.method protected abstract loadMoreListings()V
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation
.end method

.method public removeListing(J)Z
    .registers 6
    .param p1, "listingId"    # J

    .prologue
    .line 117
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/airbnb/android/adapters/BaseListingAdapter;->mListings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 118
    iget-object v1, p0, Lcom/airbnb/android/adapters/BaseListingAdapter;->mListings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_27

    .line 119
    iget-object v1, p0, Lcom/airbnb/android/adapters/BaseListingAdapter;->mListings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 120
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/BaseListingAdapter;->notifyDataSetChanged()V

    .line 121
    const/4 v1, 0x1

    .line 125
    :goto_26
    return v1

    .line 117
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 125
    :cond_2a
    const/4 v1, 0x0

    goto :goto_26
.end method

.method public setData(Ljava/util/List;)V
    .registers 3
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
    .line 48
    .local p1, "listings":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    if-nez p1, :cond_b

    .line 49
    iget-object v0, p0, Lcom/airbnb/android/adapters/BaseListingAdapter;->mListings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 53
    :goto_7
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/BaseListingAdapter;->notifyDataSetChanged()V

    .line 54
    return-void

    .line 51
    :cond_b
    iput-object p1, p0, Lcom/airbnb/android/adapters/BaseListingAdapter;->mListings:Ljava/util/List;

    goto :goto_7
.end method

.method public setRemainingData(Z)V
    .registers 2
    .param p1, "remainingData"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/airbnb/android/adapters/BaseListingAdapter;->mRemainingData:Z

    .line 72
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/BaseListingAdapter;->notifyDataSetChanged()V

    .line 73
    return-void
.end method

.method public updateListing(Lcom/airbnb/android/models/Listing;)Z
    .registers 8
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 88
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/airbnb/android/adapters/BaseListingAdapter;->mListings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_32

    .line 89
    iget-object v2, p0, Lcom/airbnb/android/adapters/BaseListingAdapter;->mListings:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Listing;

    .line 90
    .local v1, "l":Lcom/airbnb/android/models/Listing;
    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2f

    .line 91
    iget-object v2, p0, Lcom/airbnb/android/adapters/BaseListingAdapter;->mListings:Ljava/util/List;

    invoke-interface {v2, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/BaseListingAdapter;->notifyDataSetChanged()V

    .line 93
    const/4 v2, 0x1

    .line 96
    .end local v1    # "l":Lcom/airbnb/android/models/Listing;
    :goto_2e
    return v2

    .line 88
    .restart local v1    # "l":Lcom/airbnb/android/models/Listing;
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 96
    .end local v1    # "l":Lcom/airbnb/android/models/Listing;
    :cond_32
    const/4 v2, 0x0

    goto :goto_2e
.end method
