.class Lcom/airbnb/android/views/UndoAddToWishListToast$2$1;
.super Ljava/lang/Object;
.source "UndoAddToWishListToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/UndoAddToWishListToast$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/views/UndoAddToWishListToast$2;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/UndoAddToWishListToast$2;)V
    .registers 2

    .prologue
    .line 118
    iput-object p1, p0, Lcom/airbnb/android/views/UndoAddToWishListToast$2$1;->this$1:Lcom/airbnb/android/views/UndoAddToWishListToast$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/airbnb/android/views/UndoAddToWishListToast$2$1;->this$1:Lcom/airbnb/android/views/UndoAddToWishListToast$2;

    iget-object v0, v0, Lcom/airbnb/android/views/UndoAddToWishListToast$2;->this$0:Lcom/airbnb/android/views/UndoAddToWishListToast;

    # getter for: Lcom/airbnb/android/views/UndoAddToWishListToast;->mUndoView:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/airbnb/android/views/UndoAddToWishListToast;->access$000(Lcom/airbnb/android/views/UndoAddToWishListToast;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 123
    iget-object v0, p0, Lcom/airbnb/android/views/UndoAddToWishListToast$2$1;->this$1:Lcom/airbnb/android/views/UndoAddToWishListToast$2;

    iget-object v0, v0, Lcom/airbnb/android/views/UndoAddToWishListToast$2;->this$0:Lcom/airbnb/android/views/UndoAddToWishListToast;

    # getter for: Lcom/airbnb/android/views/UndoAddToWishListToast;->mUndoView:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/airbnb/android/views/UndoAddToWishListToast;->access$000(Lcom/airbnb/android/views/UndoAddToWishListToast;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 124
    return-void
.end method
