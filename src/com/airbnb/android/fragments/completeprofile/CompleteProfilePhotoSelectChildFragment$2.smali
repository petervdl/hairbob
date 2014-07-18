.class Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment$2;
.super Ljava/lang/Object;
.source "CompleteProfilePhotoSelectChildFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment;)V
    .registers 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment$2;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 67
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment$2;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment;->isVerifiedIdFlow()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 68
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment$2;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackPhotoStartChoosePhoto(Lcom/airbnb/android/utils/Strap;)V

    .line 71
    :cond_11
    invoke-static {}, Lcom/airbnb/android/utils/PhotoUtils;->getPhotoIntent()Landroid/content/Intent;

    move-result-object v0

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment$2;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment;

    iget-object v2, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment$2;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment;

    const v3, 0x7f0e06db

    invoke-virtual {v2, v3}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 73
    return-void
.end method
