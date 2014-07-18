.class Lcom/airbnb/android/adapters/MyWishListListingsAdapter$6;
.super Ljava/lang/Object;
.source "MyWishListListingsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->unWishlist(Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/adapters/MyWishListListingsAdapter;

.field final synthetic val$listing:Lcom/airbnb/android/models/Listing;

.field final synthetic val$rowView:Landroid/view/View;

.field final synthetic val$viewHolder:Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/MyWishListListingsAdapter;Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 374
    iput-object p1, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$6;->this$0:Lcom/airbnb/android/adapters/MyWishListListingsAdapter;

    iput-object p2, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$6;->val$listing:Lcom/airbnb/android/models/Listing;

    iput-object p3, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$6;->val$viewHolder:Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;

    iput-object p4, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$6;->val$rowView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 377
    iget-object v0, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$6;->this$0:Lcom/airbnb/android/adapters/MyWishListListingsAdapter;

    iget-object v1, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$6;->val$listing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->remove(Ljava/lang/Object;)V

    .line 378
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$6;->val$listing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/AirbnbApi;->removeListingFromWishLists(Lcom/airbnb/android/models/Listing;)Z

    .line 379
    iget-object v0, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$6;->val$viewHolder:Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;

    iget-object v0, v0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;->wishListButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 380
    iget-object v0, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$6;->val$rowView:Landroid/view/View;

    const-string/jumbo v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_32

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 381
    return-void

    .line 380
    nop

    :array_32
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method
