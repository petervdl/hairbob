.class Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$2;
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

.field final synthetic val$changeProfilePhoto:Landroid/widget/Button;

.field final synthetic val$completePhotoSelection:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;Landroid/widget/Button;Landroid/widget/Button;)V
    .registers 4

    .prologue
    .line 162
    iput-object p1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$2;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$2;->val$completePhotoSelection:Landroid/widget/Button;

    iput-object p3, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$2;->val$changeProfilePhoto:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x8

    .line 166
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$2;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->isVerifiedIdFlow()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 167
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$2;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackPhotoApprovalApprovePhoto(Lcom/airbnb/android/utils/Strap;)V

    .line 170
    :cond_13
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$2;->val$completePhotoSelection:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$2;->val$changeProfilePhoto:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$2;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;

    # invokes: Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->completePhotoSelection()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->access$000(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;)V

    .line 174
    return-void
.end method
