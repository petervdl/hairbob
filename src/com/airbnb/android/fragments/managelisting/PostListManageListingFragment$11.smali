.class Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$11;
.super Ljava/lang/Object;
.source "PostListManageListingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

.field final synthetic val$listing:Lcom/airbnb/android/models/Listing;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;Lcom/airbnb/android/models/Listing;)V
    .registers 3

    .prologue
    .line 270
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$11;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$11;->val$listing:Lcom/airbnb/android/models/Listing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$11;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$11;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$11;->val$listing:Lcom/airbnb/android/models/Listing;

    invoke-static {v1, v2}, Lcom/airbnb/android/activities/ListingDetailsActivity;->intentForListing(Landroid/content/Context;Lcom/airbnb/android/models/Listing;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->startActivity(Landroid/content/Intent;)V

    .line 274
    return-void
.end method
