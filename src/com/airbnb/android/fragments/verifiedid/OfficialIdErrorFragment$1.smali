.class Lcom/airbnb/android/fragments/verifiedid/OfficialIdErrorFragment$1;
.super Ljava/lang/Object;
.source "OfficialIdErrorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/verifiedid/OfficialIdErrorFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdErrorFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/verifiedid/OfficialIdErrorFragment;)V
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdErrorFragment$1;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdErrorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdErrorFragment$1;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdErrorFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdErrorFragment;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackOfflineErrorTryAgain(Lcom/airbnb/android/utils/Strap;)V

    .line 36
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdErrorFragment$1;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdErrorFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdErrorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/OfficialIdActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/OfficialIdActivity;->goToCountry()V

    .line 37
    return-void
.end method
