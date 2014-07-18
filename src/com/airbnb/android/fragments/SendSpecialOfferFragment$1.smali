.class Lcom/airbnb/android/fragments/SendSpecialOfferFragment$1;
.super Ljava/lang/Object;
.source "SendSpecialOfferFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->onResume()V
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
.field final synthetic this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;)V
    .registers 2

    .prologue
    .line 124
    iput-object p1, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$1;->this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$1;->this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 147
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/MySpacesRequest;)V
    .registers 7
    .param p1, "response"    # Lcom/airbnb/android/requests/MySpacesRequest;

    .prologue
    .line 128
    iget-object v3, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$1;->this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mListedListings:Ljava/util/List;
    invoke-static {v3, v4}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->access$002(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;Ljava/util/List;)Ljava/util/List;

    .line 130
    iget-object v3, p1, Lcom/airbnb/android/requests/MySpacesRequest;->listings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/Listing;

    .line 131
    .local v2, "listing":Lcom/airbnb/android/models/Listing;
    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->isListed()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 132
    iget-object v3, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$1;->this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    # getter for: Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mListedListings:Ljava/util/List;
    invoke-static {v3}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->access$000(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 139
    .end local v2    # "listing":Lcom/airbnb/android/models/Listing;
    :cond_2c
    iget-object v3, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$1;->this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    # getter for: Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mListedListings:Ljava/util/List;
    invoke-static {v3}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->access$000(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_44

    const v0, 0x7f020218

    .line 141
    .local v0, "background":I
    :goto_3c
    iget-object v3, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$1;->this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    iget-object v3, v3, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mListingInfoContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 142
    return-void

    .line 139
    .end local v0    # "background":I
    :cond_44
    const v0, 0x7f020040

    goto :goto_3c
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 124
    check-cast p1, Lcom/airbnb/android/requests/MySpacesRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$1;->onResponse(Lcom/airbnb/android/requests/MySpacesRequest;)V

    return-void
.end method
