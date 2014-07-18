.class Lcom/airbnb/android/fragments/RecommendedListingsFragment$1;
.super Ljava/lang/Object;
.source "RecommendedListingsFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/RecommendedListingsFragment;->launchNewListingLoadingTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/android/requests/RequestListener",
        "<",
        "Lcom/airbnb/android/requests/RecommendedListingsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/RecommendedListingsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/RecommendedListingsFragment;)V
    .registers 2

    .prologue
    .line 88
    iput-object p1, p0, Lcom/airbnb/android/fragments/RecommendedListingsFragment$1;->this$0:Lcom/airbnb/android/fragments/RecommendedListingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/airbnb/android/fragments/RecommendedListingsFragment$1;->this$0:Lcom/airbnb/android/fragments/RecommendedListingsFragment;

    sget-object v1, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;->NewFetch:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/RecommendedListingsFragment;->setState(Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;)V

    .line 110
    iget-object v0, p0, Lcom/airbnb/android/fragments/RecommendedListingsFragment$1;->this$0:Lcom/airbnb/android/fragments/RecommendedListingsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/RecommendedListingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e06bc

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 111
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/RecommendedListingsRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/requests/RecommendedListingsRequest;

    .prologue
    .line 92
    iget-object v0, p1, Lcom/airbnb/android/requests/RecommendedListingsRequest;->listings:Ljava/util/List;

    if-eqz v0, :cond_35

    iget-object v0, p1, Lcom/airbnb/android/requests/RecommendedListingsRequest;->listings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_35

    .line 93
    iget-object v0, p0, Lcom/airbnb/android/fragments/RecommendedListingsFragment$1;->this$0:Lcom/airbnb/android/fragments/RecommendedListingsFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/RecommendedListingsFragment;->mListings:Ljava/util/List;

    iget-object v1, p1, Lcom/airbnb/android/requests/RecommendedListingsRequest;->listings:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    iget-object v0, p0, Lcom/airbnb/android/fragments/RecommendedListingsFragment$1;->this$0:Lcom/airbnb/android/fragments/RecommendedListingsFragment;

    iget v1, p1, Lcom/airbnb/android/requests/RecommendedListingsRequest;->listingsCount:I

    iput v1, v0, Lcom/airbnb/android/fragments/RecommendedListingsFragment;->mTotalListingsCount:I

    .line 96
    iget-object v0, p0, Lcom/airbnb/android/fragments/RecommendedListingsFragment$1;->this$0:Lcom/airbnb/android/fragments/RecommendedListingsFragment;

    iget-object v1, p1, Lcom/airbnb/android/requests/RecommendedListingsRequest;->geography:Lcom/airbnb/android/models/SearchGeography;

    iput-object v1, v0, Lcom/airbnb/android/fragments/RecommendedListingsFragment;->mGeography:Lcom/airbnb/android/models/SearchGeography;

    .line 97
    iget-object v0, p0, Lcom/airbnb/android/fragments/RecommendedListingsFragment$1;->this$0:Lcom/airbnb/android/fragments/RecommendedListingsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/RecommendedListingsFragment;->updateChildFragments(Z)V

    .line 99
    iget-object v0, p0, Lcom/airbnb/android/fragments/RecommendedListingsFragment$1;->this$0:Lcom/airbnb/android/fragments/RecommendedListingsFragment;

    sget-object v1, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;->Results:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/RecommendedListingsFragment;->setState(Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;)V

    .line 100
    iget-object v0, p0, Lcom/airbnb/android/fragments/RecommendedListingsFragment$1;->this$0:Lcom/airbnb/android/fragments/RecommendedListingsFragment;

    const/4 v1, 0x0

    # setter for: Lcom/airbnb/android/fragments/RecommendedListingsFragment;->mSearchRequest:Lcom/airbnb/android/requests/AirbnbRequest;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/RecommendedListingsFragment;->access$002(Lcom/airbnb/android/fragments/RecommendedListingsFragment;Lcom/airbnb/android/requests/AirbnbRequest;)Lcom/airbnb/android/requests/AirbnbRequest;

    .line 105
    :goto_34
    return-void

    .line 103
    :cond_35
    iget-object v0, p0, Lcom/airbnb/android/fragments/RecommendedListingsFragment$1;->this$0:Lcom/airbnb/android/fragments/RecommendedListingsFragment;

    sget-object v1, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;->NewFetch:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/RecommendedListingsFragment;->setState(Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;)V

    goto :goto_34
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 88
    check-cast p1, Lcom/airbnb/android/requests/RecommendedListingsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/RecommendedListingsFragment$1;->onResponse(Lcom/airbnb/android/requests/RecommendedListingsRequest;)V

    return-void
.end method
