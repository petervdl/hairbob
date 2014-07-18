.class Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment$2;
.super Ljava/lang/Object;
.source "OfflineIdChildFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment;)V
    .registers 2

    .prologue
    .line 44
    iput-object p1, p0, Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment$2;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 48
    iget-object v2, p0, Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment$2;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/VerifiedIdActivity;

    .line 49
    .local v0, "activity":Lcom/airbnb/android/activities/VerifiedIdActivity;
    iget-object v2, p0, Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment$2;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackOfflineStartScanId(Lcom/airbnb/android/utils/Strap;)V

    .line 50
    invoke-virtual {v0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->getNumberCompletedStep()I

    move-result v2

    invoke-virtual {v0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->getReservation()Lcom/airbnb/android/models/Reservation;

    move-result-object v3

    invoke-virtual {v0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->getCheckpointVerifications()Lcom/airbnb/android/models/CheckpointVerifications;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/airbnb/android/activities/OfficialIdActivity;->intentForVerifiedId(Landroid/content/Context;ILcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/CheckpointVerifications;)Landroid/content/Intent;

    move-result-object v1

    .line 53
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment$2;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    const v3, 0x9859

    invoke-virtual {v2, v1, v3}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 54
    return-void
.end method
