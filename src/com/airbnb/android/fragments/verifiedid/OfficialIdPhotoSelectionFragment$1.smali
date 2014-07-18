.class Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment$1;
.super Ljava/lang/Object;
.source "OfficialIdPhotoSelectionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;)V
    .registers 2

    .prologue
    .line 80
    iput-object p1, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment$1;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 84
    iget-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment$1;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;

    # invokes: Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->getIsFrontId()Z
    invoke-static {v3}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->access$000(Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;)Z

    move-result v3

    if-eqz v3, :cond_48

    const v2, 0x985a

    .line 85
    .local v2, "requestCode":I
    :goto_b
    iget-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment$1;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;

    # invokes: Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->getIsFrontId()Z
    invoke-static {v3}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->access$000(Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;)Z

    move-result v3

    if-eqz v3, :cond_4c

    const-string/jumbo v1, "frontOfficialIdPic.png"

    .line 87
    .local v1, "fileName":Ljava/lang/String;
    :goto_16
    iget-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment$1;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;

    # invokes: Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->getIsFrontId()Z
    invoke-static {v3}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->access$000(Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 88
    iget-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment$1;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackOfflinePhotoFrontTakePhoto(Lcom/airbnb/android/utils/Strap;)V

    .line 93
    :goto_27
    iget-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment$1;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/airbnb/android/utils/CameraHelper;->getPhotoIntent(Ljava/lang/String;Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    .line 94
    .local v0, "cameraIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment$1;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_5a

    .line 95
    iget-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment$1;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;

    invoke-virtual {v3, v0, v2}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 99
    :goto_47
    return-void

    .line 84
    .end local v0    # "cameraIntent":Landroid/content/Intent;
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "requestCode":I
    :cond_48
    const v2, 0x985b

    goto :goto_b

    .line 85
    .restart local v2    # "requestCode":I
    :cond_4c
    const-string/jumbo v1, "backOfficialIdPic.png"

    goto :goto_16

    .line 90
    .restart local v1    # "fileName":Ljava/lang/String;
    :cond_50
    iget-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment$1;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackOfflinePhotoBackTakePhoto(Lcom/airbnb/android/utils/Strap;)V

    goto :goto_27

    .line 97
    .restart local v0    # "cameraIntent":Landroid/content/Intent;
    :cond_5a
    iget-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment$1;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0e01ad

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_47
.end method
