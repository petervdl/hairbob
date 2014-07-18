.class public Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment;
.super Landroid/support/v4/app/Fragment;
.source "OfflineIdChildFragment.java"

# interfaces
.implements Lcom/airbnb/android/analytics/VerifiedIdAnalytics$VerifiedIdStrapper;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# instance fields
.field private mBeginButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment;
    .registers 1

    .prologue
    .line 26
    new-instance v0, Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public disableButtons()V
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment;->mBeginButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 64
    return-void
.end method

.method public enableButtons()V
    .registers 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment;->mBeginButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 68
    return-void
.end method

.method public getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;
    .registers 4

    .prologue
    .line 72
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "reservation_id"

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/VerifiedIdActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->getReservationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v3, "OfflineIdChildFragment#onCreateView"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_9} :catch_42

    .line 31
    :goto_9
    const v2, 0x7f030076

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 33
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f080160

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 34
    .local v0, "faqText":Landroid/widget/TextView;
    new-instance v2, Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment$1;-><init>(Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const v2, 0x7f08015e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment;->mBeginButton:Landroid/widget/Button;

    .line 44
    iget-object v2, p0, Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment;->mBeginButton:Landroid/widget/Button;

    new-instance v3, Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment$2;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment$2;-><init>(Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackOfflineStartView(Lcom/airbnb/android/utils/Strap;)V

    .line 59
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v1

    .line 4294967295
    .end local v0    # "faqText":Landroid/widget/TextView;
    .end local v1    # "view":Landroid/view/View;
    :catch_42
    move-exception v2

    const/4 v2, 0x0

    :try_start_44
    const-string/jumbo v3, "OfflineIdChildFragment#onCreateView"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4b} :catch_42

    goto :goto_9
.end method

.method protected onStart()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method
