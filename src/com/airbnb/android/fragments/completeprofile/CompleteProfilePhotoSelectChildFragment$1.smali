.class Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment$1;
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

.field final synthetic val$activity:Lcom/airbnb/android/activities/CompleteProfileActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment;Lcom/airbnb/android/activities/CompleteProfileActivity;)V
    .registers 3

    .prologue
    .line 44
    iput-object p1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment$1;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment$1;->val$activity:Lcom/airbnb/android/activities/CompleteProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 48
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment$1;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment;->isVerifiedIdFlow()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 49
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment$1;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackPhotoStartTakePhoto(Lcom/airbnb/android/utils/Strap;)V

    .line 52
    :cond_12
    const-string/jumbo v1, "profilePicture.png"

    iget-object v2, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment$1;->val$activity:Lcom/airbnb/android/activities/CompleteProfileActivity;

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/utils/CameraHelper;->getPhotoIntent(Ljava/lang/String;Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    .line 53
    .local v0, "cameraIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment$1;->val$activity:Lcom/airbnb/android/activities/CompleteProfileActivity;

    invoke-virtual {v1}, Lcom/airbnb/android/activities/CompleteProfileActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 54
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment$1;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment;

    invoke-virtual {v1, v0, v3}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 58
    :goto_2c
    return-void

    .line 56
    :cond_2d
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment$1;->val$activity:Lcom/airbnb/android/activities/CompleteProfileActivity;

    const v2, 0x7f0e01ad

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2c
.end method
