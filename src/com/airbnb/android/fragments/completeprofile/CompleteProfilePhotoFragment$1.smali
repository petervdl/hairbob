.class Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$1;
.super Ljava/lang/Object;
.source "CompleteProfilePhotoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;)V
    .registers 2

    .prologue
    .line 149
    iput-object p1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$1;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$1;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->isVerifiedIdFlow()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 154
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$1;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackPhotoApprovalChangePhoto(Lcom/airbnb/android/utils/Strap;)V

    .line 157
    :cond_11
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$1;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->getCompleteProfileActivity()Lcom/airbnb/android/activities/CompleteProfileActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->requestVerification()V

    .line 158
    return-void
.end method
