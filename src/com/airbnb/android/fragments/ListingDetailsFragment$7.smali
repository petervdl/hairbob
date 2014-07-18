.class Lcom/airbnb/android/fragments/ListingDetailsFragment$7;
.super Ljava/lang/Object;
.source "ListingDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ListingDetailsFragment;->updateReviews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ListingDetailsFragment;)V
    .registers 2

    .prologue
    .line 483
    iput-object p1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$7;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 487
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$7;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingDetailsFragment;->mIsUnlisted:Z
    invoke-static {v0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$500(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 488
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$7;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e03df

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 493
    :goto_19
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$7;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$000(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$7;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v2}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$000(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getReviewsCount()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/analytics/ListingDetailAnalytics;->trackClickReviews(JI)V

    .line 494
    return-void

    .line 490
    :cond_31
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$7;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$7;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$7;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v2}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$000(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/airbnb/android/activities/ReviewsActivity;->intentForListing(Landroid/content/Context;Lcom/airbnb/android/models/Listing;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_19
.end method
