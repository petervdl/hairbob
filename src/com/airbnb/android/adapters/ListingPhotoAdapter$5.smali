.class Lcom/airbnb/android/adapters/ListingPhotoAdapter$5;
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

.field final synthetic val$addToWishListRunnable:Ljava/lang/Runnable;

.field final synthetic val$viewHolder:Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/ListingPhotoAdapter;Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;Ljava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 370
    iput-object p1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$5;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    iput-object p2, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$5;->val$viewHolder:Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;

    iput-object p3, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$5;->val$addToWishListRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 374
    iget-object v0, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$5;->val$viewHolder:Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;

    iget-object v0, v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->wishListLongPressViewContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$5;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    # getter for: Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->access$500(Lcom/airbnb/android/adapters/ListingPhotoAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$5;->val$addToWishListRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$5;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    # getter for: Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mScaleUpAnim:Landroid/view/animation/Animation;
    invoke-static {v2}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->access$400(Lcom/airbnb/android/adapters/ListingPhotoAdapter;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 376
    iget-object v0, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$5;->val$viewHolder:Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;

    iget-object v0, v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->wishListLongPressInner:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$5;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    # getter for: Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mScaleUpAnim:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->access$400(Lcom/airbnb/android/adapters/ListingPhotoAdapter;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 377
    return-void
.end method
