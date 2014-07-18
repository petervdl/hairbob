.class Lcom/airbnb/android/fragments/ROContainerFragment$19;
.super Ljava/lang/Object;
.source "ROContainerFragment.java"

# interfaces
.implements Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment$SingleButtonDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROContainerFragment;->showHostFtueIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

.field final synthetic val$hostEducationDialog:Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROContainerFragment;Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;)V
    .registers 3

    .prologue
    .line 1539
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$19;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/ROContainerFragment$19;->val$hostEducationDialog:Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clickSingleButton()V
    .registers 6

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$19;->val$hostEducationDialog:Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;->dismiss()V

    .line 1544
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$19;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getReservationId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment$19;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/ROContainerFragment;->getThreadId()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/airbnb/android/analytics/ROAnalytics;->trackRespondNowButtonClickForInquiry(JJ)V

    .line 1545
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$19;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$19;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ROContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment$19;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;
    invoke-static {v2}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$1900(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/models/Reservation;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment$19;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;
    invoke-static {v3}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$2000(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/models/MessageThread;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/airbnb/android/activities/ROResponseDialogActivity;->intentForDefault(Landroid/content/Context;Lcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/MessageThread;Z)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x2c2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ROContainerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1546
    return-void
.end method
