.class public Lcom/airbnb/android/fragments/verifiedid/OfficialIdTypeFragment;
.super Landroid/support/v4/app/Fragment;
.source "OfficialIdTypeFragment.java"

# interfaces
.implements Lcom/airbnb/android/analytics/VerifiedIdAnalytics$VerifiedIdStrapper;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdTypeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdTypeFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/verifiedid/OfficialIdTypeFragment;
    .registers 1

    .prologue
    .line 28
    new-instance v0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdTypeFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdTypeFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;
    .registers 4

    .prologue
    .line 90
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "reservation_id"

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdTypeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/OfficialIdActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/OfficialIdActivity;->getReservationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 16

    .prologue
    :try_start_0
    iget-object v9, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdTypeFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v10, "OfficialIdTypeFragment#onCreateView"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_9} :catch_56

    .line 33
    :goto_9
    const v9, 0x7f0300ca

    const/4 v10, 0x0

    invoke-virtual {p1, v9, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 35
    .local v8, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdTypeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/OfficialIdActivity;

    .line 37
    .local v0, "activity":Lcom/airbnb/android/activities/OfficialIdActivity;
    invoke-virtual {v0}, Lcom/airbnb/android/activities/OfficialIdActivity;->getTypesForSupportedCountries()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v0}, Lcom/airbnb/android/activities/OfficialIdActivity;->getOfficialIdCountryCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 39
    .local v6, "identificationsForCountry":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest$Country$Identification;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest$Country$Identification;

    .line 40
    .local v5, "identification":Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest$Country$Identification;
    const-string/jumbo v9, "PASSPORT"

    iget-object v10, v5, Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest$Country$Identification;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_60

    .line 41
    const v9, 0x7f08023c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 42
    .local v7, "passportButton":Landroid/widget/Button;
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 43
    new-instance v9, Lcom/airbnb/android/fragments/verifiedid/OfficialIdTypeFragment$1;

    invoke-direct {v9, p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdTypeFragment$1;-><init>(Lcom/airbnb/android/fragments/verifiedid/OfficialIdTypeFragment;)V

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_29

    .line 4294967295
    .end local v0    # "activity":Lcom/airbnb/android/activities/OfficialIdActivity;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "identification":Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest$Country$Identification;
    .end local v6    # "identificationsForCountry":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest$Country$Identification;>;"
    .end local v7    # "passportButton":Landroid/widget/Button;
    .end local v8    # "view":Landroid/view/View;
    :catch_56
    move-exception v9

    const/4 v9, 0x0

    :try_start_58
    const-string/jumbo v10, "OfficialIdTypeFragment#onCreateView"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_5f} :catch_56

    goto :goto_9

    .line 52
    .restart local v0    # "activity":Lcom/airbnb/android/activities/OfficialIdActivity;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "identification":Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest$Country$Identification;
    .restart local v6    # "identificationsForCountry":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest$Country$Identification;>;"
    .restart local v8    # "view":Landroid/view/View;
    :cond_60
    const-string/jumbo v9, "DRIVING_LICENSE"

    iget-object v10, v5, Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest$Country$Identification;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_81

    .line 53
    const v9, 0x7f08023b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 54
    .local v1, "driversLicenseButton":Landroid/widget/Button;
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 55
    new-instance v9, Lcom/airbnb/android/fragments/verifiedid/OfficialIdTypeFragment$2;

    invoke-direct {v9, p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdTypeFragment$2;-><init>(Lcom/airbnb/android/fragments/verifiedid/OfficialIdTypeFragment;)V

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_29

    .line 64
    .end local v1    # "driversLicenseButton":Landroid/widget/Button;
    :cond_81
    const-string/jumbo v9, "ID_CARD"

    iget-object v10, v5, Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest$Country$Identification;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ac

    .line 65
    const v9, 0x7f08023d

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 66
    .local v2, "governmentIdContainer":Landroid/widget/LinearLayout;
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 68
    const v9, 0x7f08023e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 69
    .local v3, "governmentIdTextView":Landroid/widget/TextView;
    new-instance v9, Lcom/airbnb/android/fragments/verifiedid/OfficialIdTypeFragment$3;

    invoke-direct {v9, p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdTypeFragment$3;-><init>(Lcom/airbnb/android/fragments/verifiedid/OfficialIdTypeFragment;)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_29

    .line 79
    .end local v2    # "governmentIdContainer":Landroid/widget/LinearLayout;
    .end local v3    # "governmentIdTextView":Landroid/widget/TextView;
    :cond_ac
    sget-object v9, Lcom/airbnb/android/fragments/verifiedid/OfficialIdTypeFragment;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unknown Identification Type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest$Country$Identification;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_29

    .line 83
    .end local v5    # "identification":Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest$Country$Identification;
    :cond_c9
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v9

    const-string/jumbo v10, "ids"

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v9

    invoke-static {v9}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackOfflineIdTypeView(Lcom/airbnb/android/utils/Strap;)V

    .line 85
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v8
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
