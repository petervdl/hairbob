.class Lcom/airbnb/android/activities/OfficialIdActivity$4;
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
    .line 557
    iput-object p1, p0, Lcom/airbnb/android/activities/OfficialIdActivity$4;->this$0:Lcom/airbnb/android/activities/OfficialIdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 561
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity$4;->this$0:Lcom/airbnb/android/activities/OfficialIdActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/OfficialIdActivity;->isCapturingFrontId()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 562
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity$4;->this$0:Lcom/airbnb/android/activities/OfficialIdActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/OfficialIdActivity;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackOfflinePhotoFrontConfirmChangePhoto(Lcom/airbnb/android/utils/Strap;)V

    .line 563
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity$4;->this$0:Lcom/airbnb/android/activities/OfficialIdActivity;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/OfficialIdActivity;->setIdFrontUriString(Ljava/lang/String;)V

    .line 569
    :goto_17
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity$4;->this$0:Lcom/airbnb/android/activities/OfficialIdActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/OfficialIdActivity;->onBackPressed()V

    .line 570
    return-void

    .line 565
    :cond_1d
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity$4;->this$0:Lcom/airbnb/android/activities/OfficialIdActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/OfficialIdActivity;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackOfflinePhotoBackConfirmChangePhoto(Lcom/airbnb/android/utils/Strap;)V

    .line 566
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity$4;->this$0:Lcom/airbnb/android/activities/OfficialIdActivity;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/OfficialIdActivity;->setIdBackUriString(Ljava/lang/String;)V

    goto :goto_17
.end method
