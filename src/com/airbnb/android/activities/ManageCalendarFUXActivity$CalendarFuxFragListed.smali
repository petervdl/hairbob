.class public Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFuxFragListed;
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
    name = "CalendarFuxFragListed"
.end annotation


# static fields
.field private static final ARGS_PICTURE_URL:Ljava/lang/String; = "picture_url"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFuxFragListed;
    .registers 4
    .param p0, "pictureUrl"    # Ljava/lang/String;

    .prologue
    .line 75
    new-instance v1, Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFuxFragListed;

    invoke-direct {v1}, Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFuxFragListed;-><init>()V

    .line 76
    .local v1, "f":Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFuxFragListed;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 77
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "picture_url"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1, v0}, Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFuxFragListed;->setArguments(Landroid/os/Bundle;)V

    .line 80
    return-object v1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10

    .prologue
    const/4 v5, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFuxFragListed;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v3, "ManageCalendarFUXActivity$CalendarFuxFragListed#onCreateView"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_a} :catch_2c

    .line 85
    :goto_a
    const v2, 0x7f030096

    invoke-virtual {p1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 86
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0801a8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/AirImageView;

    .line 87
    .local v0, "aiv":Lcom/airbnb/android/views/AirImageView;
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFuxFragListed;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "picture_url"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/airbnb/android/views/AirImageView;->setImageUrl(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v1

    .line 4294967295
    .end local v0    # "aiv":Lcom/airbnb/android/views/AirImageView;
    .end local v1    # "view":Landroid/view/View;
    :catch_2c
    move-exception v2

    const/4 v2, 0x0

    :try_start_2e
    const-string/jumbo v3, "ManageCalendarFUXActivity$CalendarFuxFragListed#onCreateView"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_35} :catch_2c

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
