.class Lcom/airbnb/android/adapters/PickWishListAdapter$1;
.super Ljava/lang/Object;
.source "PickWishListAdapter.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/PickWishListAdapter;->setupAddNewWishListRow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/adapters/PickWishListAdapter;

.field final synthetic val$addNewSpinner:Landroid/widget/ProgressBar;

.field final synthetic val$checkMark:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/PickWishListAdapter;Landroid/widget/ProgressBar;Landroid/widget/ImageView;)V
    .registers 4

    .prologue
    .line 218
    iput-object p1, p0, Lcom/airbnb/android/adapters/PickWishListAdapter$1;->this$0:Lcom/airbnb/android/adapters/PickWishListAdapter;

    iput-object p2, p0, Lcom/airbnb/android/adapters/PickWishListAdapter$1;->val$addNewSpinner:Landroid/widget/ProgressBar;

    iput-object p3, p0, Lcom/airbnb/android/adapters/PickWishListAdapter$1;->val$checkMark:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 222
    iget-object v0, p0, Lcom/airbnb/android/adapters/PickWishListAdapter$1;->val$addNewSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p2, :cond_10

    .line 223
    iget-object v0, p0, Lcom/airbnb/android/adapters/PickWishListAdapter$1;->val$checkMark:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 225
    :cond_10
    return-void
.end method
