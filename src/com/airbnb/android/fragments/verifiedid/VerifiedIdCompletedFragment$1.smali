.class Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment$1;
.super Ljava/lang/Object;
.source "VerifiedIdCompletedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;)V
    .registers 2

    .prologue
    .line 71
    iput-object p1, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment$1;->this$0:Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    iget-object v1, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment$1;->this$0:Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackCompleteStartDone(Lcom/airbnb/android/utils/Strap;)V

    .line 76
    iget-object v1, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment$1;->this$0:Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/VerifiedIdActivity;

    .line 77
    .local v0, "activity":Lcom/airbnb/android/activities/VerifiedIdActivity;
    invoke-virtual {v0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->completeVerifiedIdActivity()V

    .line 78
    return-void
.end method
