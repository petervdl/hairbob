.class public Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment;
.super Landroid/support/v4/app/Fragment;
.source "OnlineIdChildFragment.java"

# interfaces
.implements Lcom/airbnb/android/analytics/VerifiedIdAnalytics$VerifiedIdStrapper;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# instance fields
.field private mFacebookButton:Landroid/widget/Button;

.field private mGoogleButton:Landroid/widget/Button;

.field private mLinkedInButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment;
    .registers 1

    .prologue
    .line 28
    new-instance v0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public enableButtons(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 86
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment;->mFacebookButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 87
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment;->mLinkedInButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 88
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment;->mGoogleButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 89
    return-void
.end method

.method public getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;
    .registers 4

    .prologue
    .line 93
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "reservation_id"

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/VerifiedIdActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->getReservationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10

    .prologue
    const/16 v5, 0x8

    :try_start_2
    iget-object v2, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v3, "OnlineIdChildFragment#onCreateView"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_b} :catch_7c

    .line 33
    :goto_b
    const v2, 0x7f030077

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 35
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f080166

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 36
    .local v0, "faqText":Landroid/widget/TextView;
    new-instance v2, Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment$1;-><init>(Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v2, 0x7f080162

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment;->mFacebookButton:Landroid/widget/Button;

    .line 47
    iget-object v2, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment;->mFacebookButton:Landroid/widget/Button;

    new-instance v3, Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment$2;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment$2;-><init>(Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v2, 0x7f080164

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment;->mLinkedInButton:Landroid/widget/Button;

    .line 56
    iget-object v2, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment;->mLinkedInButton:Landroid/widget/Button;

    new-instance v3, Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment$3;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment$3;-><init>(Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v2, 0x7f080163

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment;->mGoogleButton:Landroid/widget/Button;

    .line 65
    iget-object v2, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment;->mGoogleButton:Landroid/widget/Button;

    new-instance v3, Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment$4;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment$4;-><init>(Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/utils/SharedPrefsHelper;->getSignInServiceType(Landroid/content/Context;)I

    move-result v2

    sget-object v3, Lcom/airbnb/android/utils/SignInUtil$Service;->GOOGLE:Lcom/airbnb/android/utils/SignInUtil$Service;

    invoke-virtual {v3}, Lcom/airbnb/android/utils/SignInUtil$Service;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_86

    .line 77
    iget-object v2, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment;->mGoogleButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 82
    :cond_78
    :goto_78
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v1

    .line 4294967295
    .end local v0    # "faqText":Landroid/widget/TextView;
    .end local v1    # "view":Landroid/view/View;
    :catch_7c
    move-exception v2

    const/4 v2, 0x0

    :try_start_7e
    const-string/jumbo v3, "OnlineIdChildFragment#onCreateView"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_85
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_85} :catch_7c

    goto :goto_b

    .line 78
    .restart local v0    # "faqText":Landroid/widget/TextView;
    .restart local v1    # "view":Landroid/view/View;
    :cond_86
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/utils/SharedPrefsHelper;->getSignInServiceType(Landroid/content/Context;)I

    move-result v2

    sget-object v3, Lcom/airbnb/android/utils/SignInUtil$Service;->FACEBOOK:Lcom/airbnb/android/utils/SignInUtil$Service;

    invoke-virtual {v3}, Lcom/airbnb/android/utils/SignInUtil$Service;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_78

    .line 79
    iget-object v2, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment;->mFacebookButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_78
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
