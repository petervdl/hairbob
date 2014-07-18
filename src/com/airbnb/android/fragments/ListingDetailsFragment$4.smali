.class Lcom/airbnb/android/fragments/ListingDetailsFragment$4;
.super Ljava/lang/Object;
.source "ListingDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ListingDetailsFragment;->updateViewPager(Landroid/view/View;)V
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
    .line 375
    iput-object p1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$4;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 379
    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$4;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v2}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$000(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getHost()Lcom/airbnb/android/models/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v0

    .line 380
    .local v0, "hostId":J
    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$4;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    iget-object v3, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$4;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string/jumbo v4, "user_profile"

    invoke-static {v3, v0, v1, v4}, Lcom/airbnb/android/activities/ROActivity;->intentForUserId(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->startActivity(Landroid/content/Intent;)V

    .line 381
    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$4;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v2}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$000(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lcom/airbnb/android/analytics/ListingDetailAnalytics;->trackClickAboutHost(JJ)V

    .line 382
    return-void
.end method
