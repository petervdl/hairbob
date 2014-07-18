.class Lcom/airbnb/android/fragments/SendSpecialOfferFragment$5;
.super Ljava/lang/Object;
.source "SendSpecialOfferFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->setupListingInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;)V
    .registers 2

    .prologue
    .line 259
    iput-object p1, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$5;->this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$5;->this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    # getter for: Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mListedListings:Ljava/util/List;
    invoke-static {v0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->access$000(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$5;->this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    # getter for: Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mListedListings:Ljava/util/List;
    invoke-static {v0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->access$000(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1b

    .line 264
    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$5;->this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    # invokes: Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->showListingsDialog()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->access$800(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;)V

    .line 268
    :goto_1a
    return-void

    .line 266
    :cond_1b
    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$5;->this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$5;->this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    # getter for: Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v2}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->access$300(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/airbnb/android/activities/ListingDetailsActivity;->intentForListing(Landroid/content/Context;Lcom/airbnb/android/models/Listing;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1a
.end method
