.class Lcom/airbnb/android/adapters/PickWishListAdapter$3$1$1;
.super Ljava/lang/Object;
.source "PickWishListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/PickWishListAdapter$3$1;->onResponse(Lcom/airbnb/android/requests/CreateWishListRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/airbnb/android/adapters/PickWishListAdapter$3$1;

.field final synthetic val$response:Lcom/airbnb/android/requests/CreateWishListRequest;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/PickWishListAdapter$3$1;Lcom/airbnb/android/requests/CreateWishListRequest;)V
    .registers 3

    .prologue
    .line 270
    iput-object p1, p0, Lcom/airbnb/android/adapters/PickWishListAdapter$3$1$1;->this$2:Lcom/airbnb/android/adapters/PickWishListAdapter$3$1;

    iput-object p2, p0, Lcom/airbnb/android/adapters/PickWishListAdapter$3$1$1;->val$response:Lcom/airbnb/android/requests/CreateWishListRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/airbnb/android/adapters/PickWishListAdapter$3$1$1;->this$2:Lcom/airbnb/android/adapters/PickWishListAdapter$3$1;

    iget-object v0, v0, Lcom/airbnb/android/adapters/PickWishListAdapter$3$1;->this$1:Lcom/airbnb/android/adapters/PickWishListAdapter$3;

    iget-object v0, v0, Lcom/airbnb/android/adapters/PickWishListAdapter$3;->val$addNewSpinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/airbnb/android/adapters/PickWishListAdapter$3$1$1;->this$2:Lcom/airbnb/android/adapters/PickWishListAdapter$3$1;

    iget-object v0, v0, Lcom/airbnb/android/adapters/PickWishListAdapter$3$1;->this$1:Lcom/airbnb/android/adapters/PickWishListAdapter$3;

    iget-object v0, v0, Lcom/airbnb/android/adapters/PickWishListAdapter$3;->val$nameEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Lcom/airbnb/android/adapters/PickWishListAdapter$3$1$1;->this$2:Lcom/airbnb/android/adapters/PickWishListAdapter$3$1;

    iget-object v0, v0, Lcom/airbnb/android/adapters/PickWishListAdapter$3$1;->this$1:Lcom/airbnb/android/adapters/PickWishListAdapter$3;

    iget-object v0, v0, Lcom/airbnb/android/adapters/PickWishListAdapter$3;->this$0:Lcom/airbnb/android/adapters/PickWishListAdapter;

    # getter for: Lcom/airbnb/android/adapters/PickWishListAdapter;->mWishlistsAddedTo:Ljava/util/List;
    invoke-static {v0}, Lcom/airbnb/android/adapters/PickWishListAdapter;->access$200(Lcom/airbnb/android/adapters/PickWishListAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/adapters/PickWishListAdapter$3$1$1;->val$response:Lcom/airbnb/android/requests/CreateWishListRequest;

    iget-object v1, v1, Lcom/airbnb/android/requests/CreateWishListRequest;->collection:Lcom/airbnb/android/models/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    return-void
.end method
