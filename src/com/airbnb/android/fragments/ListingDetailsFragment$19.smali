.class Lcom/airbnb/android/fragments/ListingDetailsFragment$19;
.super Ljava/lang/Object;
.source "ListingDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ListingDetailsFragment;->updateHostProfile(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

.field final synthetic val$host:Lcom/airbnb/android/models/User;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ListingDetailsFragment;Lcom/airbnb/android/models/User;)V
    .registers 3

    .prologue
    .line 823
    iput-object p1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$19;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$19;->val$host:Lcom/airbnb/android/models/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 827
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$19;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$19;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$19;->val$host:Lcom/airbnb/android/models/User;

    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v2

    const-string/jumbo v4, "user_profile"

    invoke-static {v1, v2, v3, v4}, Lcom/airbnb/android/activities/ROActivity;->intentForUserId(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->startActivity(Landroid/content/Intent;)V

    .line 828
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$19;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$000(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$19;->val$host:Lcom/airbnb/android/models/User;

    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/airbnb/android/analytics/ListingDetailAnalytics;->trackClickAboutHost(JJ)V

    .line 829
    return-void
.end method
