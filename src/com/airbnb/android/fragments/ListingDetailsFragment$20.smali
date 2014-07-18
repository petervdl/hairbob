.class Lcom/airbnb/android/fragments/ListingDetailsFragment$20;
.super Ljava/lang/Object;
.source "ListingDetailsFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ListingDetailsFragment;->showRecommendedListingsIfNeeded()V
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
.field final synthetic this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ListingDetailsFragment;)V
    .registers 2

    .prologue
    .line 849
    iput-object p1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$20;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 861
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/RecommendedListingsRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/requests/RecommendedListingsRequest;

    .prologue
    .line 853
    iget-object v0, p1, Lcom/airbnb/android/requests/RecommendedListingsRequest;->listings:Ljava/util/List;

    if-eqz v0, :cond_2e

    iget-object v0, p1, Lcom/airbnb/android/requests/RecommendedListingsRequest;->listings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2e

    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$20;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingDetailsFragment;->mRecommendedListings:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$1400(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$20;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingDetailsFragment;->mRecommendedListings:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$1400(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 854
    :cond_20
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$20;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    iget-object v0, p1, Lcom/airbnb/android/requests/RecommendedListingsRequest;->listings:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    # setter for: Lcom/airbnb/android/fragments/ListingDetailsFragment;->mRecommendedListings:Ljava/util/ArrayList;
    invoke-static {v1, v0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$1402(Lcom/airbnb/android/fragments/ListingDetailsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 855
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$20;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/ListingDetailsFragment;->updateRecommendedListings()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$1500(Lcom/airbnb/android/fragments/ListingDetailsFragment;)V

    .line 857
    :cond_2e
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 849
    check-cast p1, Lcom/airbnb/android/requests/RecommendedListingsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/ListingDetailsFragment$20;->onResponse(Lcom/airbnb/android/requests/RecommendedListingsRequest;)V

    return-void
.end method
