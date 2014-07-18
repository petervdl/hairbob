.class Lcom/airbnb/android/adapters/ListingPhotoAdapter$1;
.super Ljava/lang/Object;
.source "ListingPhotoAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/ListingPhotoAdapter;->createRow(Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

.field final synthetic val$viewHolder:Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/ListingPhotoAdapter;Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;)V
    .registers 3

    .prologue
    .line 205
    iput-object p1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$1;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    iput-object p2, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$1;->val$viewHolder:Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 209
    iget-object v1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$1;->val$viewHolder:Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;

    iget-object v1, v1, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->wishListButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Listing;

    .line 211
    .local v0, "listing":Lcom/airbnb/android/models/Listing;
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/airbnb/android/AirbnbApi;->listingInWishList(Lcom/airbnb/android/models/Listing;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 212
    iget-object v1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$1;->val$viewHolder:Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;

    iget-object v1, v1, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->wishListButton:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 213
    iget-object v1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$1;->val$viewHolder:Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;

    iget-object v1, v1, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->wishListButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$1;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    # getter for: Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mUnselectedDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->access$000(Lcom/airbnb/android/adapters/ListingPhotoAdapter;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    iget-object v1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$1;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    iget-object v1, v1, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mTrackingPosition:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/WishListUtils;->unWishlistListingFromAllWishLists(Lcom/airbnb/android/models/Listing;Ljava/lang/String;)V

    .line 221
    :cond_30
    :goto_30
    return-void

    .line 217
    :cond_31
    iget-object v1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$1;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    # getter for: Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mAddToWishListListener:Lcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;
    invoke-static {v1}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->access$100(Lcom/airbnb/android/adapters/ListingPhotoAdapter;)Lcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;

    move-result-object v1

    if-eqz v1, :cond_30

    if-eqz v0, :cond_30

    .line 218
    iget-object v1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$1;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    # getter for: Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mAddToWishListListener:Lcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;
    invoke-static {v1}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->access$100(Lcom/airbnb/android/adapters/ListingPhotoAdapter;)Lcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;->openWishListSelector(Lcom/airbnb/android/models/Listing;)V

    goto :goto_30
.end method
