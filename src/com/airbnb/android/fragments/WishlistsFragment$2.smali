.class Lcom/airbnb/android/fragments/WishlistsFragment$2;
.super Ljava/lang/Object;
.source "WishlistsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 91
    iput-object p1, p0, Lcom/airbnb/android/fragments/WishlistsFragment$2;->this$0:Lcom/airbnb/android/fragments/WishlistsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    .line 94
    iget-object v0, p0, Lcom/airbnb/android/fragments/WishlistsFragment$2;->this$0:Lcom/airbnb/android/fragments/WishlistsFragment;

    # getter for: Lcom/airbnb/android/fragments/WishlistsFragment;->mWishListsAdapter:Lcom/airbnb/android/adapters/WishListsAdapter;
    invoke-static {v0}, Lcom/airbnb/android/fragments/WishlistsFragment;->access$000(Lcom/airbnb/android/fragments/WishlistsFragment;)Lcom/airbnb/android/adapters/WishListsAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/airbnb/android/adapters/WishListsAdapter;->getItemViewType(I)I

    move-result v0

    sget-object v1, Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;->LISTING:Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_40

    .line 95
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->WishLists:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string/jumbo v1, "click_collection"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/airbnb/android/fragments/WishlistsFragment$2;->this$0:Lcom/airbnb/android/fragments/WishlistsFragment;

    iget-object v0, p0, Lcom/airbnb/android/fragments/WishlistsFragment$2;->this$0:Lcom/airbnb/android/fragments/WishlistsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/WishlistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v0, p0, Lcom/airbnb/android/fragments/WishlistsFragment$2;->this$0:Lcom/airbnb/android/fragments/WishlistsFragment;

    # getter for: Lcom/airbnb/android/fragments/WishlistsFragment;->mWishListsAdapter:Lcom/airbnb/android/adapters/WishListsAdapter;
    invoke-static {v0}, Lcom/airbnb/android/fragments/WishlistsFragment;->access$000(Lcom/airbnb/android/fragments/WishlistsFragment;)Lcom/airbnb/android/adapters/WishListsAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/airbnb/android/adapters/WishListsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Collection;

    invoke-static {v2, v0, v3}, Lcom/airbnb/android/activities/WishListListingsActivity;->intentForWishList(Landroid/content/Context;Lcom/airbnb/android/models/Collection;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/WishlistsFragment;->startActivity(Landroid/content/Intent;)V

    .line 98
    :cond_40
    return-void
.end method
