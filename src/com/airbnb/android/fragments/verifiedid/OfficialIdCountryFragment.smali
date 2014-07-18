.class public Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;
.super Landroid/support/v4/app/Fragment;
.source "OfficialIdCountryFragment.java"

# interfaces
.implements Lcom/airbnb/android/analytics/VerifiedIdAnalytics$VerifiedIdStrapper;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field private static final DIALOG_FRAGMENT:Ljava/lang/String; = "dialog_fragment"


# instance fields
.field private mCountryTextView:Landroid/widget/TextView;

.field private mNextButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;->mCountryTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;->selectCountry()V

    return-void
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;
    .registers 1

    .prologue
    .line 30
    new-instance v0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;-><init>()V

    return-object v0
.end method

.method private selectCountry()V
    .registers 5

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/activities/OfficialIdActivity;

    invoke-virtual {v2}, Lcom/airbnb/android/activities/OfficialIdActivity;->getOfficialIdCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "currentCountry":Ljava/lang/String;
    const v2, 0x7f0e0137

    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/activities/OfficialIdActivity;

    invoke-virtual {v2}, Lcom/airbnb/android/activities/OfficialIdActivity;->getSupportedCountries()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v3, v0, v2}, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/airbnb/android/fragments/CountryPickerDialogFragment;

    move-result-object v1

    .line 74
    .local v1, "f":Lcom/airbnb/android/fragments/CountryPickerDialogFragment;
    new-instance v2, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment$2;

    invoke-direct {v2, p0, v1}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment$2;-><init>(Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;Lcom/airbnb/android/fragments/CountryPickerDialogFragment;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->setListener(Lcom/airbnb/android/interfaces/NameCodePickerListener;)V

    .line 84
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "dialog_fragment"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 85
    return-void
.end method


# virtual methods
.method public enableInteraction(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .prologue
    .line 93
    if-eqz p1, :cond_13

    .line 94
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;->mNextButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 95
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;->mCountryTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment$3;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment$3;-><init>(Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    :goto_12
    return-void

    .line 104
    :cond_13
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;->mNextButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 105
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;->mCountryTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_12
.end method

.method public getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;
    .registers 4

    .prologue
    .line 89
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "reservation_id"

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

    const/4 v6, 0x0

    :try_start_2
    iget-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v4, "OfficialIdCountryFragment#onCreateView"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_b} :catch_78

    .line 35
    :goto_b
    const v3, 0x7f0300c6

    invoke-virtual {p1, v3, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 37
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/OfficialIdActivity;

    .line 38
    .local v0, "activity":Lcom/airbnb/android/activities/OfficialIdActivity;
    invoke-virtual {v0, v6}, Lcom/airbnb/android/activities/OfficialIdActivity;->setIdFrontUriString(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, v6}, Lcom/airbnb/android/activities/OfficialIdActivity;->setIdBackUriString(Ljava/lang/String;)V

    .line 41
    const v3, 0x7f080233

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;->mCountryTextView:Landroid/widget/TextView;

    .line 42
    new-instance v1, Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/activities/OfficialIdActivity;

    invoke-virtual {v3}, Lcom/airbnb/android/activities/OfficialIdActivity;->getOfficialIdCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .local v1, "locale":Ljava/util/Locale;
    iget-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;->mCountryTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    const v3, 0x7f080234

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;->mNextButton:Landroid/widget/Button;

    .line 46
    iget-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;->mNextButton:Landroid/widget/Button;

    new-instance v4, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment$1;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment$1;-><init>(Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/activities/OfficialIdActivity;

    invoke-virtual {v3}, Lcom/airbnb/android/activities/OfficialIdActivity;->getSupportedCountries()Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_82

    .line 57
    invoke-virtual {p0, v7}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;->enableInteraction(Z)V

    .line 62
    :goto_6d
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackOfflineCountryView(Lcom/airbnb/android/utils/Strap;)V

    .line 64
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v2

    .line 4294967295
    .end local v0    # "activity":Lcom/airbnb/android/activities/OfficialIdActivity;
    .end local v1    # "locale":Ljava/util/Locale;
    .end local v2    # "view":Landroid/view/View;
    :catch_78
    move-exception v3

    const/4 v3, 0x0

    :try_start_7a
    const-string/jumbo v4, "OfficialIdCountryFragment#onCreateView"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_81} :catch_78

    goto :goto_b

    .line 59
    .restart local v0    # "activity":Lcom/airbnb/android/activities/OfficialIdActivity;
    .restart local v1    # "locale":Ljava/util/Locale;
    .restart local v2    # "view":Landroid/view/View;
    :cond_82
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;->enableInteraction(Z)V

    goto :goto_6d
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
