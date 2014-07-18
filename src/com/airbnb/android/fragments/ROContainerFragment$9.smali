.class Lcom/airbnb/android/fragments/ROContainerFragment$9;
.super Ljava/lang/Object;
.source "ROContainerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROContainerFragment;->showRespondButtonForAccept(Lcom/airbnb/android/models/MessageThread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

.field final synthetic val$listing:Lcom/airbnb/android/models/Listing;

.field final synthetic val$specialOffer:Lcom/airbnb/android/models/SpecialOffer;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROContainerFragment;Lcom/airbnb/android/models/SpecialOffer;Lcom/airbnb/android/models/Listing;)V
    .registers 4

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$9;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/ROContainerFragment$9;->val$specialOffer:Lcom/airbnb/android/models/SpecialOffer;

    iput-object p3, p0, Lcom/airbnb/android/fragments/ROContainerFragment$9;->val$listing:Lcom/airbnb/android/models/Listing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$9;->val$specialOffer:Lcom/airbnb/android/models/SpecialOffer;

    invoke-virtual {v0}, Lcom/airbnb/android/models/SpecialOffer;->isPreApproval()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1117
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$9;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getReservationId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment$9;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/ROContainerFragment;->getThreadId()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/airbnb/android/analytics/ROAnalytics;->trackRespondNowAcceptPreApproval(JJ)V

    .line 1121
    :goto_17
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$9;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$9;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ROContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment$9;->val$listing:Lcom/airbnb/android/models/Listing;

    iget-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment$9;->val$specialOffer:Lcom/airbnb/android/models/SpecialOffer;

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/activities/BookingDetailsActivity;->intentForListingWithOffer(Landroid/content/Context;Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/models/SpecialOffer;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x2bd

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ROContainerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1122
    return-void

    .line 1119
    :cond_2d
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$9;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getReservationId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment$9;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/ROContainerFragment;->getThreadId()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/airbnb/android/analytics/ROAnalytics;->trackRespondNowAcceptSpecialOffer(JJ)V

    goto :goto_17
.end method
