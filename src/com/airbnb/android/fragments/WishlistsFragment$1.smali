.class Lcom/airbnb/android/fragments/WishlistsFragment$1;
.super Ljava/lang/Object;
.source "WishlistsFragment.java"

# interfaces
.implements Lcom/airbnb/android/fragments/WishlistsFragment$WishListsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/WishlistsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/WishlistsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/WishlistsFragment;)V
    .registers 2

    .prologue
    .line 77
    iput-object p1, p0, Lcom/airbnb/android/fragments/WishlistsFragment$1;->this$0:Lcom/airbnb/android/fragments/WishlistsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWishListsLoaded(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Collection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "wishlists":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Collection;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    iget-object v3, p0, Lcom/airbnb/android/fragments/WishlistsFragment$1;->this$0:Lcom/airbnb/android/fragments/WishlistsFragment;

    iget-object v3, v3, Lcom/airbnb/android/fragments/WishlistsFragment;->mBaseLoaderListView:Lcom/airbnb/android/views/BaseLoaderListView;

    if-eqz v3, :cond_28

    .line 82
    iget-object v3, p0, Lcom/airbnb/android/fragments/WishlistsFragment$1;->this$0:Lcom/airbnb/android/fragments/WishlistsFragment;

    iget-object v3, v3, Lcom/airbnb/android/fragments/WishlistsFragment;->mBaseLoaderListView:Lcom/airbnb/android/views/BaseLoaderListView;

    invoke-virtual {v3}, Lcom/airbnb/android/views/BaseLoaderListView;->finishLoader()V

    .line 83
    if-eqz p1, :cond_29

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_29

    move v0, v1

    .line 84
    .local v0, "hasWishLists":Z
    :goto_18
    iget-object v3, p0, Lcom/airbnb/android/fragments/WishlistsFragment$1;->this$0:Lcom/airbnb/android/fragments/WishlistsFragment;

    iget-object v3, v3, Lcom/airbnb/android/fragments/WishlistsFragment;->mEmptyResultsView:Landroid/view/View;

    invoke-static {v3, v0}, Lcom/airbnb/android/utils/MiscUtils;->setGoneIf(Landroid/view/View;Z)V

    .line 85
    iget-object v3, p0, Lcom/airbnb/android/fragments/WishlistsFragment$1;->this$0:Lcom/airbnb/android/fragments/WishlistsFragment;

    iget-object v3, v3, Lcom/airbnb/android/fragments/WishlistsFragment;->mBaseLoaderListView:Lcom/airbnb/android/views/BaseLoaderListView;

    if-nez v0, :cond_2b

    :goto_25
    invoke-static {v3, v1}, Lcom/airbnb/android/utils/MiscUtils;->setGoneIf(Landroid/view/View;Z)V

    .line 87
    .end local v0    # "hasWishLists":Z
    :cond_28
    return-void

    :cond_29
    move v0, v2

    .line 83
    goto :goto_18

    .restart local v0    # "hasWishLists":Z
    :cond_2b
    move v1, v2

    .line 85
    goto :goto_25
.end method
