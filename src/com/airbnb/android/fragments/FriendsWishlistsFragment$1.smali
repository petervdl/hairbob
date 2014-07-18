.class Lcom/airbnb/android/fragments/FriendsWishlistsFragment$1;
.super Ljava/lang/Object;
.source "FriendsWishlistsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/FriendsWishlistsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/FriendsWishlistsFragment;)V
    .registers 2

    .prologue
    .line 99
    iput-object p1, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$1;->this$0:Lcom/airbnb/android/fragments/FriendsWishlistsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
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
    .line 103
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/view/View;->setSelected(Z)V

    .line 104
    iget-object v1, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$1;->this$0:Lcom/airbnb/android/fragments/FriendsWishlistsFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$1;->this$0:Lcom/airbnb/android/fragments/FriendsWishlistsFragment;

    # getter for: Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->mAdapter:Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;
    invoke-static {v2}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->access$000(Lcom/airbnb/android/fragments/FriendsWishlistsFragment;)Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;->getItemAsListing(I)Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/airbnb/android/activities/ListingDetailsActivity;->intentForListing(Landroid/content/Context;Lcom/airbnb/android/models/Listing;)Landroid/content/Intent;

    move-result-object v0

    .line 105
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$1;->this$0:Lcom/airbnb/android/fragments/FriendsWishlistsFragment;

    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->startActivity(Landroid/content/Intent;)V

    .line 106
    return-void
.end method
