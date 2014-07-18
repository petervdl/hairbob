.class Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment$2;
.super Ljava/lang/Object;
.source "WelcomeScreenFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;)V
    .registers 2

    .prologue
    .line 96
    iput-object p1, p0, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment$2;->this$0:Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 100
    iget-object v1, p0, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment$2;->this$0:Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/VerifiedIdActivity;

    .line 101
    .local v0, "activity":Lcom/airbnb/android/activities/VerifiedIdActivity;
    iget-object v1, p0, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment$2;->this$0:Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackWelcomeStartVerifyMe(Lcom/airbnb/android/utils/Strap;)V

    .line 102
    iget-object v1, p0, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment$2;->this$0:Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;

    # getter for: Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->mVerifyMeButton:Lcom/airbnb/android/views/StickyButton;
    invoke-static {v1}, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->access$000(Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;)Lcom/airbnb/android/views/StickyButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/StickyButton;->setEnabled(Z)V

    .line 103
    invoke-virtual {v0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->showNextStep()V

    .line 104
    return-void
.end method
