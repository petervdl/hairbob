.class Lcom/airbnb/android/fragments/MyWishListListingsFragment$2;
.super Ljava/lang/Object;
.source "MyWishListListingsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/MyWishListListingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/MyWishListListingsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/MyWishListListingsFragment;)V
    .registers 2

    .prologue
    .line 103
    iput-object p1, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment$2;->this$0:Lcom/airbnb/android/fragments/MyWishListListingsFragment;

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
    .line 106
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment$2;->this$0:Lcom/airbnb/android/fragments/MyWishListListingsFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v1, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment$2;->this$0:Lcom/airbnb/android/fragments/MyWishListListingsFragment;

    # getter for: Lcom/airbnb/android/fragments/MyWishListListingsFragment;->mListingAdapter:Lcom/airbnb/android/adapters/MyWishListListingsAdapter;
    invoke-static {v1}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->access$000(Lcom/airbnb/android/fragments/MyWishListListingsFragment;)Lcom/airbnb/android/adapters/MyWishListListingsAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Listing;

    invoke-static {v2, v1}, Lcom/airbnb/android/activities/ListingDetailsActivity;->intentForListing(Landroid/content/Context;Lcom/airbnb/android/models/Listing;)Landroid/content/Intent;

    move-result-object v0

    .line 107
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment$2;->this$0:Lcom/airbnb/android/fragments/MyWishListListingsFragment;

    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 108
    return-void
.end method
