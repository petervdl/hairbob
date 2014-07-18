.class Lcom/airbnb/android/activities/OfficialIdActivity$5;
.super Ljava/lang/Object;
.source "OfficialIdActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/OfficialIdActivity;->setupConfirmationButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/OfficialIdActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/OfficialIdActivity;)V
    .registers 2

    .prologue
    .line 574
    iput-object p1, p0, Lcom/airbnb/android/activities/OfficialIdActivity$5;->this$0:Lcom/airbnb/android/activities/OfficialIdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 578
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity$5;->this$0:Lcom/airbnb/android/activities/OfficialIdActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/OfficialIdActivity;->isCapturingFrontId()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 579
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity$5;->this$0:Lcom/airbnb/android/activities/OfficialIdActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/OfficialIdActivity;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackOfflinePhotoFrontConfirmApprovePhoto(Lcom/airbnb/android/utils/Strap;)V

    .line 580
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity$5;->this$0:Lcom/airbnb/android/activities/OfficialIdActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/OfficialIdActivity;->goToPhotoSelectionBack()V

    .line 585
    :goto_16
    return-void

    .line 582
    :cond_17
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity$5;->this$0:Lcom/airbnb/android/activities/OfficialIdActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/OfficialIdActivity;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackOfflinePhotoBackConfirmApprovePhoto(Lcom/airbnb/android/utils/Strap;)V

    .line 583
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity$5;->this$0:Lcom/airbnb/android/activities/OfficialIdActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/OfficialIdActivity;->goToUpload()V

    goto :goto_16
.end method
