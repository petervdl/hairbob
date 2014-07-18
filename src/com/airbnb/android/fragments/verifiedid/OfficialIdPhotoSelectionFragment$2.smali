.class Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment$2;
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
    .line 108
    iput-object p1, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment$2;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 113
    iget-object v2, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment$2;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;

    # invokes: Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->getIsFrontId()Z
    invoke-static {v2}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->access$000(Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;)Z

    move-result v2

    if-eqz v2, :cond_33

    const v1, 0x985c

    .line 115
    .local v1, "requestCode":I
    :goto_b
    iget-object v2, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment$2;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;

    # invokes: Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->getIsFrontId()Z
    invoke-static {v2}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->access$000(Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 116
    iget-object v2, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment$2;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackOfflinePhotoFrontChoosePhoto(Lcom/airbnb/android/utils/Strap;)V

    .line 121
    :goto_1c
    invoke-static {}, Lcom/airbnb/android/utils/PhotoUtils;->getPhotoIntent()Landroid/content/Intent;

    move-result-object v0

    .line 122
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment$2;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;

    iget-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment$2;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;

    const v4, 0x7f0e06db

    invoke-virtual {v3, v4}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 123
    return-void

    .line 113
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "requestCode":I
    :cond_33
    const v1, 0x985d

    goto :goto_b

    .line 118
    .restart local v1    # "requestCode":I
    :cond_37
    iget-object v2, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment$2;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackOfflinePhotoBackChoosePhoto(Lcom/airbnb/android/utils/Strap;)V

    goto :goto_1c
.end method
