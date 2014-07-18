.class Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment$3;
.super Ljava/lang/Object;
.source "OfficialIdCountryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;->enableInteraction(Z)V
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
    .line 95
    iput-object p1, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment$3;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment$3;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackOfflineCountryChange(Lcom/airbnb/android/utils/Strap;)V

    .line 100
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment$3;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;

    # invokes: Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;->selectCountry()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;->access$100(Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;)V

    .line 101
    return-void
.end method
