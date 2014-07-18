.class Lcom/airbnb/android/fragments/ListingCalendarFragment$2;
.super Ljava/lang/Object;
.source "ListingCalendarFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ListingCalendarFragment;->loadListings()V
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
        "Lcom/airbnb/android/requests/MySpacesRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ListingCalendarFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ListingCalendarFragment;)V
    .registers 2

    .prologue
    .line 116
    iput-object p1, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment$2;->this$0:Lcom/airbnb/android/fragments/ListingCalendarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment$2;->this$0:Lcom/airbnb/android/fragments/ListingCalendarFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ListingCalendarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 142
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment$2;->this$0:Lcom/airbnb/android/fragments/ListingCalendarFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ListingCalendarFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderFrame;->finish()V

    .line 143
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/MySpacesRequest;)V
    .registers 6
    .param p1, "response"    # Lcom/airbnb/android/requests/MySpacesRequest;

    .prologue
    .line 120
    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment$2;->this$0:Lcom/airbnb/android/fragments/ListingCalendarFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingCalendarFragment;->mListings:Ljava/util/List;
    invoke-static {v2}, Lcom/airbnb/android/fragments/ListingCalendarFragment;->access$000(Lcom/airbnb/android/fragments/ListingCalendarFragment;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment$2;->this$0:Lcom/airbnb/android/fragments/ListingCalendarFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingCalendarFragment;->mListings:Ljava/util/List;
    invoke-static {v2}, Lcom/airbnb/android/fragments/ListingCalendarFragment;->access$000(Lcom/airbnb/android/fragments/ListingCalendarFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 121
    :cond_14
    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment$2;->this$0:Lcom/airbnb/android/fragments/ListingCalendarFragment;

    iget-object v3, p1, Lcom/airbnb/android/requests/MySpacesRequest;->listings:Ljava/util/ArrayList;

    # setter for: Lcom/airbnb/android/fragments/ListingCalendarFragment;->mListings:Ljava/util/List;
    invoke-static {v2, v3}, Lcom/airbnb/android/fragments/ListingCalendarFragment;->access$002(Lcom/airbnb/android/fragments/ListingCalendarFragment;Ljava/util/List;)Ljava/util/List;

    .line 123
    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment$2;->this$0:Lcom/airbnb/android/fragments/ListingCalendarFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingCalendarFragment;->mListings:Ljava/util/List;
    invoke-static {v2}, Lcom/airbnb/android/fragments/ListingCalendarFragment;->access$000(Lcom/airbnb/android/fragments/ListingCalendarFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 124
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/airbnb/android/models/Listing;>;"
    :cond_25
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 125
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Listing;

    .line 126
    .local v1, "listing":Lcom/airbnb/android/models/Listing;
    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->hasBeenListed()Z

    move-result v2

    if-nez v2, :cond_25

    .line 127
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_25

    .line 130
    .end local v1    # "listing":Lcom/airbnb/android/models/Listing;
    :cond_3b
    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment$2;->this$0:Lcom/airbnb/android/fragments/ListingCalendarFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingCalendarFragment;->mListings:Ljava/util/List;
    invoke-static {v2}, Lcom/airbnb/android/fragments/ListingCalendarFragment;->access$000(Lcom/airbnb/android/fragments/ListingCalendarFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4c

    .line 132
    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment$2;->this$0:Lcom/airbnb/android/fragments/ListingCalendarFragment;

    # invokes: Lcom/airbnb/android/fragments/ListingCalendarFragment;->setupSpaces()V
    invoke-static {v2}, Lcom/airbnb/android/fragments/ListingCalendarFragment;->access$100(Lcom/airbnb/android/fragments/ListingCalendarFragment;)V

    .line 137
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/airbnb/android/models/Listing;>;"
    :cond_4c
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 116
    check-cast p1, Lcom/airbnb/android/requests/MySpacesRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/ListingCalendarFragment$2;->onResponse(Lcom/airbnb/android/requests/MySpacesRequest;)V

    return-void
.end method
