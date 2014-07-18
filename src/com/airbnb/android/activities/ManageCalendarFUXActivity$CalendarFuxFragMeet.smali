.class public Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFuxFragMeet;
.super Landroid/support/v4/app/Fragment;
.source "ManageCalendarFUXActivity.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/activities/ManageCalendarFUXActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalendarFuxFragMeet"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFuxFragMeet;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v3, "ManageCalendarFUXActivity$CalendarFuxFragMeet#onCreateView"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_b} :catch_22

    .line 96
    :goto_b
    const v2, 0x7f030093

    invoke-virtual {p1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 97
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/airbnb/android/views/SpotlightDrawable;

    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFuxFragMeet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2, v6, v6, v6}, Lcom/airbnb/android/views/SpotlightDrawable;-><init>(Landroid/content/Context;FFF)V

    .line 98
    .local v0, "spot":Lcom/airbnb/android/views/SpotlightDrawable;
    invoke-static {v1, v0}, Lcom/airbnb/android/utils/MiscUtils;->apiSetBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 99
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v1

    .line 4294967295
    .end local v0    # "spot":Lcom/airbnb/android/views/SpotlightDrawable;
    .end local v1    # "view":Landroid/view/View;
    :catch_22
    move-exception v2

    const/4 v2, 0x0

    :try_start_24
    const-string/jumbo v3, "ManageCalendarFUXActivity$CalendarFuxFragMeet#onCreateView"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_2b} :catch_22

    goto :goto_b
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
