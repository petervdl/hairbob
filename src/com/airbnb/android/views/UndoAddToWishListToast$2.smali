.class Lcom/airbnb/android/views/UndoAddToWishListToast$2;
.super Ljava/lang/Object;
.source "UndoAddToWishListToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/UndoAddToWishListToast;->showUndoToast(Lcom/airbnb/android/models/Collection;Lcom/airbnb/android/models/Listing;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/UndoAddToWishListToast;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/UndoAddToWishListToast;)V
    .registers 2

    .prologue
    .line 111
    iput-object p1, p0, Lcom/airbnb/android/views/UndoAddToWishListToast$2;->this$0:Lcom/airbnb/android/views/UndoAddToWishListToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const-wide/16 v3, 0x190

    .line 115
    iget-object v0, p0, Lcom/airbnb/android/views/UndoAddToWishListToast$2;->this$0:Lcom/airbnb/android/views/UndoAddToWishListToast;

    # getter for: Lcom/airbnb/android/views/UndoAddToWishListToast;->mUndoView:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/airbnb/android/views/UndoAddToWishListToast;->access$000(Lcom/airbnb/android/views/UndoAddToWishListToast;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_38

    .line 116
    iget-object v0, p0, Lcom/airbnb/android/views/UndoAddToWishListToast$2;->this$0:Lcom/airbnb/android/views/UndoAddToWishListToast;

    # getter for: Lcom/airbnb/android/views/UndoAddToWishListToast;->mUndoView:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/airbnb/android/views/UndoAddToWishListToast;->access$000(Lcom/airbnb/android/views/UndoAddToWishListToast;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const-string/jumbo v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_3a

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 118
    iget-object v0, p0, Lcom/airbnb/android/views/UndoAddToWishListToast$2;->this$0:Lcom/airbnb/android/views/UndoAddToWishListToast;

    # getter for: Lcom/airbnb/android/views/UndoAddToWishListToast;->mUndoView:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/airbnb/android/views/UndoAddToWishListToast;->access$000(Lcom/airbnb/android/views/UndoAddToWishListToast;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/airbnb/android/views/UndoAddToWishListToast$2$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/views/UndoAddToWishListToast$2$1;-><init>(Lcom/airbnb/android/views/UndoAddToWishListToast$2;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 127
    :cond_38
    return-void

    .line 116
    nop

    :array_3a
    .array-data 4
        0x3f800000
        0x0
    .end array-data
.end method
