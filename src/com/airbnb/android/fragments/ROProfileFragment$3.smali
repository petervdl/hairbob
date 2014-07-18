.class Lcom/airbnb/android/fragments/ROProfileFragment$3;
.super Ljava/lang/Object;
.source "ROProfileFragment.java"

# interfaces
.implements Lcom/airbnb/android/views/LinearListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROProfileFragment;->updateListingsHelper(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ROProfileFragment;

.field final synthetic val$adapter:Lcom/airbnb/android/adapters/ListingsRowAdapter;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROProfileFragment;Lcom/airbnb/android/adapters/ListingsRowAdapter;)V
    .registers 3

    .prologue
    .line 253
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROProfileFragment$3;->this$0:Lcom/airbnb/android/fragments/ROProfileFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/ROProfileFragment$3;->val$adapter:Lcom/airbnb/android/adapters/ListingsRowAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/airbnb/android/views/LinearListView;Landroid/view/View;IJ)V
    .registers 9
    .param p1, "parent"    # Lcom/airbnb/android/views/LinearListView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 257
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROProfileFragment$3;->this$0:Lcom/airbnb/android/fragments/ROProfileFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ROProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROProfileFragment$3;->val$adapter:Lcom/airbnb/android/adapters/ListingsRowAdapter;

    invoke-virtual {v2, p3}, Lcom/airbnb/android/adapters/ListingsRowAdapter;->getItemAsListing(I)Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/airbnb/android/activities/ListingDetailsActivity;->intentForListing(Landroid/content/Context;Lcom/airbnb/android/models/Listing;)Landroid/content/Intent;

    move-result-object v0

    .line 258
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROProfileFragment$3;->this$0:Lcom/airbnb/android/fragments/ROProfileFragment;

    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/ROProfileFragment;->startActivity(Landroid/content/Intent;)V

    .line 259
    return-void
.end method
