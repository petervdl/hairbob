.class public abstract Lcom/airbnb/android/fragments/BrowsableListingsChildFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "BrowsableListingsChildFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getOrigin()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsChildFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/BrowsableListingsInterface;

    invoke-interface {v0}, Lcom/airbnb/android/interfaces/BrowsableListingsInterface;->getOrigin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSearchGeography()Lcom/airbnb/android/models/SearchGeography;
    .registers 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsChildFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/BrowsableListingsInterface;

    invoke-interface {v0}, Lcom/airbnb/android/interfaces/BrowsableListingsInterface;->getSearchGeography()Lcom/airbnb/android/models/SearchGeography;

    move-result-object v0

    return-object v0
.end method

.method protected getSearchListings()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsChildFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/BrowsableListingsInterface;

    invoke-interface {v0}, Lcom/airbnb/android/interfaces/BrowsableListingsInterface;->getListings()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getTotalListingCount()I
    .registers 2

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsChildFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/BrowsableListingsInterface;

    invoke-interface {v0}, Lcom/airbnb/android/interfaces/BrowsableListingsInterface;->getTotalListingCount()I

    move-result v0

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onAttach(Landroid/app/Activity;)V

    .line 17
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsChildFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/airbnb/android/interfaces/BrowsableListingsInterface;

    if-nez v0, :cond_2b

    .line 18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parent fragment must be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/airbnb/android/interfaces/BrowsableListingsInterface;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_2b
    return-void
.end method

.method protected setSearchData(Ljava/util/List;I)V
    .registers 4
    .param p2, "totalListingCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "listings":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsChildFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/BrowsableListingsInterface;

    .line 32
    .local v0, "fragment":Lcom/airbnb/android/interfaces/BrowsableListingsInterface;
    invoke-interface {v0, p1, p2}, Lcom/airbnb/android/interfaces/BrowsableListingsInterface;->setListingsData(Ljava/util/List;I)V

    .line 33
    return-void
.end method

.method protected abstract updateSearchResults(Z)V
.end method
