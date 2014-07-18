.class Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment$1;
.super Ljava/lang/Object;
.source "OfficialIdCountryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;)V
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment$1;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment$1;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "country_code"

    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment$1;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/OfficialIdActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/OfficialIdActivity;->getOfficialIdCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackOfflineCountryNext(Lcom/airbnb/android/utils/Strap;)V

    .line 52
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment$1;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/OfficialIdActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/OfficialIdActivity;->goToType()V

    .line 53
    return-void
.end method
