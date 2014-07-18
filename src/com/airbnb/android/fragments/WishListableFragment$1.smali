.class Lcom/airbnb/android/fragments/WishListableFragment$1;
.super Ljava/lang/Object;
.source "WishListableFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/WishListableFragment;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/WishListableFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/WishListableFragment;)V
    .registers 2

    .prologue
    .line 121
    iput-object p1, p0, Lcom/airbnb/android/fragments/WishListableFragment$1;->this$0:Lcom/airbnb/android/fragments/WishListableFragment;

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
    .line 124
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/view/View;->setSelected(Z)V

    .line 125
    iget-object v2, p0, Lcom/airbnb/android/fragments/WishListableFragment$1;->this$0:Lcom/airbnb/android/fragments/WishListableFragment;

    # getter for: Lcom/airbnb/android/fragments/WishListableFragment;->mListingAdapter:Lcom/airbnb/android/adapters/WishListableAdapter;
    invoke-static {v2}, Lcom/airbnb/android/fragments/WishListableFragment;->access$000(Lcom/airbnb/android/fragments/WishListableFragment;)Lcom/airbnb/android/adapters/WishListableAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/airbnb/android/adapters/WishListableAdapter;->getItemViewType(I)I

    move-result v1

    .line 126
    .local v1, "type":I
    sget-object v2, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->LISTING:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_32

    .line 127
    iget-object v2, p0, Lcom/airbnb/android/fragments/WishListableFragment$1;->this$0:Lcom/airbnb/android/fragments/WishListableFragment;

    # getter for: Lcom/airbnb/android/fragments/WishListableFragment;->mListingAdapter:Lcom/airbnb/android/adapters/WishListableAdapter;
    invoke-static {v2}, Lcom/airbnb/android/fragments/WishListableFragment;->access$000(Lcom/airbnb/android/fragments/WishListableFragment;)Lcom/airbnb/android/adapters/WishListableAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/airbnb/android/adapters/WishListableAdapter;->getItemAsListing(I)Lcom/airbnb/android/models/Listing;

    move-result-object v0

    .line 128
    .local v0, "listing":Lcom/airbnb/android/models/Listing;
    invoke-static {v0}, Lcom/airbnb/android/analytics/DiscoverAnalytics;->trackListingClick(Lcom/airbnb/android/models/Listing;)V

    .line 129
    iget-object v2, p0, Lcom/airbnb/android/fragments/WishListableFragment$1;->this$0:Lcom/airbnb/android/fragments/WishListableFragment;

    iget-object v3, p0, Lcom/airbnb/android/fragments/WishListableFragment$1;->this$0:Lcom/airbnb/android/fragments/WishListableFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/WishListableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/airbnb/android/activities/ListingDetailsActivity;->intentForListing(Landroid/content/Context;Lcom/airbnb/android/models/Listing;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/fragments/WishListableFragment;->startActivity(Landroid/content/Intent;)V

    .line 131
    .end local v0    # "listing":Lcom/airbnb/android/models/Listing;
    :cond_32
    return-void
.end method
