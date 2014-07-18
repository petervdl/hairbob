.class Lcom/airbnb/android/adapters/ListingPhotoAdapter$4;
.super Ljava/lang/Object;
.source "ListingPhotoAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/ListingPhotoAdapter;->setupLongPressToAddToRecentWishList(Landroid/view/ViewGroup;Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;Lcom/airbnb/android/views/ClickableViewPager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

.field final synthetic val$parent:Landroid/view/ViewGroup;

.field final synthetic val$viewHolder:Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/ListingPhotoAdapter;Landroid/view/ViewGroup;Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;)V
    .registers 4

    .prologue
    .line 357
    iput-object p1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$4;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    iput-object p2, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$4;->val$parent:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$4;->val$viewHolder:Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 360
    iget-object v2, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$4;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 361
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v1

    .line 362
    .local v1, "user":Lcom/airbnb/android/models/User;
    if-eqz v1, :cond_18

    .line 363
    iget-object v2, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$4;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    iget-object v3, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$4;->val$viewHolder:Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;

    # invokes: Lcom/airbnb/android/adapters/ListingPhotoAdapter;->longPressToAddToWishList(Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;)V
    invoke-static {v2, v3}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->access$300(Lcom/airbnb/android/adapters/ListingPhotoAdapter;Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;)V

    .line 367
    :goto_17
    return-void

    .line 365
    :cond_18
    iget-object v2, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$4;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    # getter for: Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mAddToWishListListener:Lcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;
    invoke-static {v2}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->access$100(Lcom/airbnb/android/adapters/ListingPhotoAdapter;)Lcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$4;->val$viewHolder:Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;

    iget-object v3, v3, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->listing:Lcom/airbnb/android/models/Listing;

    invoke-interface {v2, v3}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;->startSignInFromWishListAdd(Lcom/airbnb/android/models/Listing;)V

    goto :goto_17
.end method
