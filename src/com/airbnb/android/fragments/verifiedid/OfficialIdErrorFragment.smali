.class public Lcom/airbnb/android/fragments/verifiedid/OfficialIdErrorFragment;
.super Landroid/support/v4/app/Fragment;
.source "OfficialIdErrorFragment.java"

# interfaces
.implements Lcom/airbnb/android/analytics/VerifiedIdAnalytics$VerifiedIdStrapper;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/verifiedid/OfficialIdErrorFragment;
    .registers 1

    .prologue
    .line 23
    new-instance v0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdErrorFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdErrorFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;
    .registers 4

    .prologue
    .line 51
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "reservation_id"

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdErrorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/OfficialIdActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/OfficialIdActivity;->getReservationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12

    .prologue
    const/4 v7, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdErrorFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v4, "OfficialIdErrorFragment#onCreateView"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_a} :catch_57

    .line 28
    :goto_a
    const v3, 0x7f0300c7

    invoke-virtual {p1, v3, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 30
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f080236

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 31
    .local v0, "tryAgainButton":Landroid/widget/Button;
    new-instance v3, Lcom/airbnb/android/fragments/verifiedid/OfficialIdErrorFragment$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdErrorFragment$1;-><init>(Lcom/airbnb/android/fragments/verifiedid/OfficialIdErrorFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    const v3, 0x7f080235

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 41
    .local v1, "unableToVerifyTextView":Landroid/widget/TextView;
    const v4, 0x7f0e07db

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdErrorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/activities/OfficialIdActivity;

    invoke-virtual {v3}, Lcom/airbnb/android/activities/OfficialIdActivity;->getOfficialIdTypeDisplayedString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdErrorFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdErrorFragment;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackOfflineErrorView(Lcom/airbnb/android/utils/Strap;)V

    .line 46
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v2

    .line 4294967295
    .end local v0    # "tryAgainButton":Landroid/widget/Button;
    .end local v1    # "unableToVerifyTextView":Landroid/widget/TextView;
    .end local v2    # "view":Landroid/view/View;
    :catch_57
    move-exception v3

    const/4 v3, 0x0

    :try_start_59
    const-string/jumbo v4, "OfficialIdErrorFragment#onCreateView"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_60} :catch_57

    goto :goto_a
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
