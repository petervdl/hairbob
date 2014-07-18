.class public Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFuxFragSet;
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
    name = "CalendarFuxFragSet"
.end annotation


# static fields
.field public static final ARGS_R:Ljava/lang/String; = "r"

.field public static final ARGS_X:Ljava/lang/String; = "x"

.field public static final ARGS_Y:Ljava/lang/String; = "y"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(FFF)Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFuxFragSet;
    .registers 6
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "r"    # F

    .prologue
    .line 109
    new-instance v1, Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFuxFragSet;

    invoke-direct {v1}, Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFuxFragSet;-><init>()V

    .line 110
    .local v1, "f":Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFuxFragSet;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 111
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "x"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 112
    const-string/jumbo v2, "y"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 113
    const-string/jumbo v2, "r"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 114
    invoke-virtual {v1, v0}, Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFuxFragSet;->setArguments(Landroid/os/Bundle;)V

    .line 116
    return-object v1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 13

    .prologue
    const/4 v8, 0x0

    :try_start_1
    iget-object v5, p0, Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFuxFragSet;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v6, "ManageCalendarFUXActivity$CalendarFuxFragSet#onCreateView"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_a} :catch_4d

    .line 121
    :goto_a
    const v5, 0x7f030094

    invoke-virtual {p1, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 122
    .local v2, "view":Landroid/view/View;
    sget-object v5, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v6, Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFUXShowEvent;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFUXShowEvent;-><init>(Z)V

    invoke-virtual {v5, v6}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 124
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFuxFragSet;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    .line 125
    .local v3, "x":F
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFuxFragSet;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "y"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    .line 126
    .local v4, "y":F
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFuxFragSet;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "r"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 128
    .local v0, "r":F
    new-instance v1, Lcom/airbnb/android/views/SpotlightDrawable;

    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFuxFragSet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v1, v5, v3, v4, v0}, Lcom/airbnb/android/views/SpotlightDrawable;-><init>(Landroid/content/Context;FFF)V

    .line 129
    .local v1, "spot":Lcom/airbnb/android/views/SpotlightDrawable;
    invoke-static {v2, v1}, Lcom/airbnb/android/utils/MiscUtils;->apiSetBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 130
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v2

    .line 4294967295
    .end local v0    # "r":F
    .end local v1    # "spot":Lcom/airbnb/android/views/SpotlightDrawable;
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "x":F
    .end local v4    # "y":F
    :catch_4d
    move-exception v5

    const/4 v5, 0x0

    :try_start_4f
    const-string/jumbo v6, "ManageCalendarFUXActivity$CalendarFuxFragSet#onCreateView"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_56} :catch_4d

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
