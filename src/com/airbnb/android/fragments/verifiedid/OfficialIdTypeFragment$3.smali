.class Lcom/airbnb/android/fragments/verifiedid/OfficialIdTypeFragment$3;
.super Ljava/lang/Object;
.source "OfficialIdTypeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/verifiedid/OfficialIdTypeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdTypeFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/verifiedid/OfficialIdTypeFragment;)V
    .registers 2

    .prologue
    .line 69
    iput-object p1, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdTypeFragment$3;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdTypeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdTypeFragment$3;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdTypeFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdTypeFragment;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackOfflineIdTypeIdCard(Lcom/airbnb/android/utils/Strap;)V

    .line 74
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdTypeFragment$3;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdTypeFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdTypeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/OfficialIdActivity;

    const-string/jumbo v1, "ID_CARD"

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/OfficialIdActivity;->setOfficialIdType(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdTypeFragment$3;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdTypeFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdTypeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/OfficialIdActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/OfficialIdActivity;->goToPhotoSelectionFront()V

    .line 76
    return-void
.end method
