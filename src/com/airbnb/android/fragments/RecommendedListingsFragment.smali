.class public Lcom/airbnb/android/fragments/RecommendedListingsFragment;
.super Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;
.source "RecommendedListingsFragment.java"


# static fields
.field private static final ARG_LISTINGS:Ljava/lang/String; = "listings"

.field private static final ARG_LISTING_ID:Ljava/lang/String; = "listing_id"

.field public static TAG:Ljava/lang/String;


# instance fields
.field private mListingId:J

.field private mSearchRequest:Lcom/airbnb/android/requests/AirbnbRequest;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-class v0, Lcom/airbnb/android/fragments/RecommendedListingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/RecommendedListingsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;-><init>()V

    .line 32
    return-void
.end method

.method static synthetic access$002(Lcom/airbnb/android/fragments/RecommendedListingsFragment;Lcom/airbnb/android/requests/AirbnbRequest;)Lcom/airbnb/android/requests/AirbnbRequest;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/RecommendedListingsFragment;
    .param p1, "x1"    # Lcom/airbnb/android/requests/AirbnbRequest;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/airbnb/android/fragments/RecommendedListingsFragment;->mSearchRequest:Lcom/airbnb/android/requests/AirbnbRequest;

    return-object p1
.end method

.method public static bundleWithListingId(J)Landroid/os/Bundle;
    .registers 4
    .param p0, "listingId"    # J

    .prologue
    .line 40
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "listing_id"

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 42
    return-object v0
.end method

.method public static bundleWithListings(Ljava/util/ArrayList;)Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "listings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/Listing;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "listings"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 48
    return-object v0
.end method

.method private launchNewListingLoadingTask()V
    .registers 6

    .prologue
    .line 82
    iget-object v1, p0, Lcom/airbnb/android/fragments/RecommendedListingsFragment;->mSearchRequest:Lcom/airbnb/android/requests/AirbnbRequest;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/airbnb/android/fragments/RecommendedListingsFragment;->mSearchRequest:Lcom/airbnb/android/requests/AirbnbRequest;

    invoke-virtual {v1}, Lcom/airbnb/android/requests/AirbnbRequest;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 83
    iget-object v1, p0, Lcom/airbnb/android/fragments/RecommendedListingsFragment;->mSearchRequest:Lcom/airbnb/android/requests/AirbnbRequest;

    invoke-virtual {v1}, Lcom/airbnb/android/requests/AirbnbRequest;->cancel()V

    .line 85
    :cond_11
    sget-object v1, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;->Fetching:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/RecommendedListingsFragment;->setState(Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;)V

    .line 86
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/RecommendedListingsFragment;->clearListings()V

    .line 88
    new-instance v0, Lcom/airbnb/android/fragments/RecommendedListingsFragment$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/RecommendedListingsFragment$1;-><init>(Lcom/airbnb/android/fragments/RecommendedListingsFragment;)V

    .line 114
    .local v0, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/RecommendedListingsRequest;>;"
    new-instance v1, Lcom/airbnb/android/requests/RecommendedListingsRequest;

    iget-wide v2, p0, Lcom/airbnb/android/fragments/RecommendedListingsFragment;->mListingId:J

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/airbnb/android/requests/RecommendedListingsRequest;-><init>(JLcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    iput-object v1, p0, Lcom/airbnb/android/fragments/RecommendedListingsFragment;->mSearchRequest:Lcom/airbnb/android/requests/AirbnbRequest;

    .line 115
    iget-object v1, p0, Lcom/airbnb/android/fragments/RecommendedListingsFragment;->mSearchRequest:Lcom/airbnb/android/requests/AirbnbRequest;

    invoke-virtual {v1, p0}, Lcom/airbnb/android/requests/AirbnbRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 116
    return-void
.end method

.method public static newInstanceForBundle(Landroid/os/Bundle;)Lcom/airbnb/android/fragments/RecommendedListingsFragment;
    .registers 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 52
    new-instance v0, Lcom/airbnb/android/fragments/RecommendedListingsFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/RecommendedListingsFragment;-><init>()V

    .line 53
    .local v0, "fragment":Lcom/airbnb/android/fragments/RecommendedListingsFragment;
    invoke-virtual {v0, p0}, Lcom/airbnb/android/fragments/RecommendedListingsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 54
    return-object v0
.end method


# virtual methods
.method protected getBrowsableType()Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;
    .registers 2

    .prologue
    .line 130
    sget-object v0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;->Recommendations:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

    return-object v0
.end method

.method protected getLayoutId()I
    .registers 2

    .prologue
    .line 36
    const v0, 0x7f0300d9

    return v0
.end method

.method public getOrigin()Ljava/lang/String;
    .registers 2

    .prologue
    .line 120
    const-string/jumbo v0, "recommendations"

    return-object v0
.end method

.method public getSearchQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 125
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v4, -0x1

    .line 59
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/RecommendedListingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/activities/AirActivity;

    const v2, 0x7f0e05fd

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/activities/AirActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 62
    if-nez p3, :cond_46

    .line 63
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/RecommendedListingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "listings"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/RecommendedListingsFragment;->mListings:Ljava/util/List;

    .line 64
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/RecommendedListingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "listing_id"

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/airbnb/android/fragments/RecommendedListingsFragment;->mListingId:J

    .line 65
    iget-object v1, p0, Lcom/airbnb/android/fragments/RecommendedListingsFragment;->mListings:Ljava/util/List;

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/airbnb/android/fragments/RecommendedListingsFragment;->mListings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_47

    .line 66
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/RecommendedListingsFragment;->updateChildFragments(Z)V

    .line 67
    sget-object v1, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;->Results:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/RecommendedListingsFragment;->setState(Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;)V

    .line 72
    :cond_46
    :goto_46
    return-object v0

    .line 68
    :cond_47
    iget-wide v1, p0, Lcom/airbnb/android/fragments/RecommendedListingsFragment;->mListingId:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_46

    .line 69
    invoke-direct {p0}, Lcom/airbnb/android/fragments/RecommendedListingsFragment;->launchNewListingLoadingTask()V

    goto :goto_46
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 77
    invoke-super {p0}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->onResume()V

    .line 78
    iget-object v0, p0, Lcom/airbnb/android/fragments/RecommendedListingsFragment;->mCurrentState:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/RecommendedListingsFragment;->setState(Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;)V

    .line 79
    return-void
.end method
