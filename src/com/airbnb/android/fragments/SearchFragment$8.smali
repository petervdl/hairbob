.class Lcom/airbnb/android/fragments/SearchFragment$8;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SearchFragment;->launchNewListingLoadingTask()V
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
        "Lcom/airbnb/android/requests/SearchRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/SearchFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SearchFragment;)V
    .registers 2

    .prologue
    .line 695
    iput-object p1, p0, Lcom/airbnb/android/fragments/SearchFragment$8;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 736
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment$8;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    sget-object v1, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;->NewFetch:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/SearchFragment;->setState(Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;)V

    .line 737
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment$8;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e06bc

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 738
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/SearchRequest;)V
    .registers 6
    .param p1, "response"    # Lcom/airbnb/android/requests/SearchRequest;

    .prologue
    .line 699
    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment$8;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/SearchFragment;->mListings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 701
    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment$8;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/SearchFragment;->mListings:Ljava/util/List;

    iget-object v3, p1, Lcom/airbnb/android/requests/SearchRequest;->listings:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 702
    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment$8;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    iget v3, p1, Lcom/airbnb/android/requests/SearchRequest;->listingsCount:I

    iput v3, v2, Lcom/airbnb/android/fragments/SearchFragment;->mTotalListingsCount:I

    .line 704
    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment$8;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    iget-object v3, p1, Lcom/airbnb/android/requests/SearchRequest;->geography:Lcom/airbnb/android/models/SearchGeography;

    iput-object v3, v2, Lcom/airbnb/android/fragments/SearchFragment;->mGeography:Lcom/airbnb/android/models/SearchGeography;

    .line 705
    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment$8;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/SearchFragment;->updateActionBar()V

    .line 706
    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment$8;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/airbnb/android/fragments/SearchFragment;->updateChildFragments(Z)V

    .line 708
    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment$8;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    sget-object v3, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;->Results:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    invoke-virtual {v2, v3}, Lcom/airbnb/android/fragments/SearchFragment;->setState(Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;)V

    .line 709
    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment$8;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    const/4 v3, 0x0

    # setter for: Lcom/airbnb/android/fragments/SearchFragment;->mSearchRequest:Lcom/airbnb/android/requests/SearchRequest;
    invoke-static {v2, v3}, Lcom/airbnb/android/fragments/SearchFragment;->access$1002(Lcom/airbnb/android/fragments/SearchFragment;Lcom/airbnb/android/requests/SearchRequest;)Lcom/airbnb/android/requests/SearchRequest;

    .line 719
    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment$8;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    # getter for: Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;
    invoke-static {v2}, Lcom/airbnb/android/fragments/SearchFragment;->access$100(Lcom/airbnb/android/fragments/SearchFragment;)Lcom/airbnb/android/models/SearchInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/SearchInfo;->getCurrencyType()Ljava/lang/String;

    move-result-object v1

    .line 720
    .local v1, "previousCurrency":Ljava/lang/String;
    iget-object v2, p1, Lcom/airbnb/android/requests/SearchRequest;->searchMetaData:Lcom/airbnb/android/requests/SearchRequest$SearchMetaData;

    iget-object v0, v2, Lcom/airbnb/android/requests/SearchRequest$SearchMetaData;->currencyType:Ljava/lang/String;

    .line 721
    .local v0, "currentCurrency":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    .line 724
    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment$8;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    # getter for: Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;
    invoke-static {v2}, Lcom/airbnb/android/fragments/SearchFragment;->access$100(Lcom/airbnb/android/fragments/SearchFragment;)Lcom/airbnb/android/models/SearchInfo;

    move-result-object v2

    iget-object v3, p1, Lcom/airbnb/android/requests/SearchRequest;->searchMetaData:Lcom/airbnb/android/requests/SearchRequest$SearchMetaData;

    iget v3, v3, Lcom/airbnb/android/requests/SearchRequest$SearchMetaData;->minFilterPrice:I

    invoke-virtual {v2, v3}, Lcom/airbnb/android/models/SearchInfo;->setMinPrice(I)V

    .line 725
    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment$8;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    # getter for: Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;
    invoke-static {v2}, Lcom/airbnb/android/fragments/SearchFragment;->access$100(Lcom/airbnb/android/fragments/SearchFragment;)Lcom/airbnb/android/models/SearchInfo;

    move-result-object v2

    iget-object v3, p1, Lcom/airbnb/android/requests/SearchRequest;->searchMetaData:Lcom/airbnb/android/requests/SearchRequest$SearchMetaData;

    iget v3, v3, Lcom/airbnb/android/requests/SearchRequest$SearchMetaData;->maxFilterPrice:I

    invoke-virtual {v2, v3}, Lcom/airbnb/android/models/SearchInfo;->setMaxPrice(I)V

    .line 728
    :cond_62
    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment$8;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    # getter for: Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;
    invoke-static {v2}, Lcom/airbnb/android/fragments/SearchFragment;->access$100(Lcom/airbnb/android/fragments/SearchFragment;)Lcom/airbnb/android/models/SearchInfo;

    move-result-object v2

    iget-object v3, p1, Lcom/airbnb/android/requests/SearchRequest;->searchMetaData:Lcom/airbnb/android/requests/SearchRequest$SearchMetaData;

    iget-object v3, v3, Lcom/airbnb/android/requests/SearchRequest$SearchMetaData;->currencyType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/airbnb/android/models/SearchInfo;->setCurrencyType(Ljava/lang/String;)V

    .line 729
    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment$8;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    # getter for: Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;
    invoke-static {v2}, Lcom/airbnb/android/fragments/SearchFragment;->access$100(Lcom/airbnb/android/fragments/SearchFragment;)Lcom/airbnb/android/models/SearchInfo;

    move-result-object v2

    iget-object v3, p1, Lcom/airbnb/android/requests/SearchRequest;->searchMetaData:Lcom/airbnb/android/requests/SearchRequest$SearchMetaData;

    iget v3, v3, Lcom/airbnb/android/requests/SearchRequest$SearchMetaData;->minFilterPrice:I

    invoke-virtual {v2, v3}, Lcom/airbnb/android/models/SearchInfo;->setMinFilterPrice(I)V

    .line 730
    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment$8;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    # getter for: Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;
    invoke-static {v2}, Lcom/airbnb/android/fragments/SearchFragment;->access$100(Lcom/airbnb/android/fragments/SearchFragment;)Lcom/airbnb/android/models/SearchInfo;

    move-result-object v2

    iget-object v3, p1, Lcom/airbnb/android/requests/SearchRequest;->searchMetaData:Lcom/airbnb/android/requests/SearchRequest$SearchMetaData;

    iget v3, v3, Lcom/airbnb/android/requests/SearchRequest$SearchMetaData;->maxFilterPrice:I

    invoke-virtual {v2, v3}, Lcom/airbnb/android/models/SearchInfo;->setMaxFilterPrice(I)V

    .line 731
    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment$8;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    # getter for: Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;
    invoke-static {v2}, Lcom/airbnb/android/fragments/SearchFragment;->access$100(Lcom/airbnb/android/fragments/SearchFragment;)Lcom/airbnb/android/models/SearchInfo;

    move-result-object v2

    iget-object v3, p1, Lcom/airbnb/android/requests/SearchRequest;->searchMetaData:Lcom/airbnb/android/requests/SearchRequest$SearchMetaData;

    invoke-virtual {v3}, Lcom/airbnb/android/requests/SearchRequest$SearchMetaData;->isPriceMonthly()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/models/SearchInfo;->setIsPriceRangeMonthly(Z)V

    .line 732
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 695
    check-cast p1, Lcom/airbnb/android/requests/SearchRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/SearchFragment$8;->onResponse(Lcom/airbnb/android/requests/SearchRequest;)V

    return-void
.end method
