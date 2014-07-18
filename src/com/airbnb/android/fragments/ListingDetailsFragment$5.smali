.class Lcom/airbnb/android/fragments/ListingDetailsFragment$5;
.super Ljava/lang/Object;
.source "ListingDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ListingDetailsFragment;->setupWishlist(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ListingDetailsFragment;)V
    .registers 2

    .prologue
    .line 393
    iput-object p1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$5;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$5;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$000(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 397
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$5;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mWishListButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 398
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$5;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mWishListButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 399
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$5;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mWishListButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$5;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingDetailsFragment;->mUnselectedDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$900(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 400
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$5;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$000(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v0

    const-string/jumbo v1, "listing_page"

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/WishListUtils;->unWishlistListingFromAllWishLists(Lcom/airbnb/android/models/Listing;Ljava/lang/String;)V

    .line 405
    :cond_33
    :goto_33
    return-void

    .line 402
    :cond_34
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$5;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/ListingDetailsFragment;->openWishListSelector()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$1000(Lcom/airbnb/android/fragments/ListingDetailsFragment;)V

    goto :goto_33
.end method
