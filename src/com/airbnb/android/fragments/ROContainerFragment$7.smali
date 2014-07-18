.class Lcom/airbnb/android/fragments/ROContainerFragment$7;
.super Ljava/lang/Object;
.source "ROContainerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROContainerFragment;->setupRespondButtonForHost()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

.field final synthetic val$isReservationRequest:Z


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROContainerFragment;Z)V
    .registers 3

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$7;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    iput-boolean p2, p0, Lcom/airbnb/android/fragments/ROContainerFragment$7;->val$isReservationRequest:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1034
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$7;->val$isReservationRequest:Z

    if-eqz v0, :cond_37

    .line 1035
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$7;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getReservationId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment$7;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/ROContainerFragment;->getThreadId()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/airbnb/android/analytics/ROAnalytics;->trackRespondNowButtonClickForReservation(JJ)V

    .line 1039
    :goto_13
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$7;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$7;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment$7;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;
    invoke-static {v2}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$1900(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/models/Reservation;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment$7;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;
    invoke-static {v3}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$2000(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/models/MessageThread;

    move-result-object v3

    iget-boolean v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment$7;->val$isReservationRequest:Z

    invoke-static {v0, v2, v3, v4}, Lcom/airbnb/android/activities/ROResponseDialogActivity;->intentForDefault(Landroid/content/Context;Lcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/MessageThread;Z)Landroid/content/Intent;

    move-result-object v2

    iget-boolean v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$7;->val$isReservationRequest:Z

    if-eqz v0, :cond_47

    const/16 v0, 0x2c3

    :goto_33
    invoke-virtual {v1, v2, v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1041
    return-void

    .line 1037
    :cond_37
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$7;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getReservationId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment$7;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/ROContainerFragment;->getThreadId()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/airbnb/android/analytics/ROAnalytics;->trackRespondNowButtonClickForInquiry(JJ)V

    goto :goto_13

    .line 1039
    :cond_47
    const/16 v0, 0x2c2

    goto :goto_33
.end method
