.class public Lcom/airbnb/android/fragments/groups/VerifiedIdRequiredFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "VerifiedIdRequiredFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/groups/VerifiedIdRequiredFragment;
    .registers 1

    .prologue
    .line 19
    new-instance v0, Lcom/airbnb/android/fragments/groups/VerifiedIdRequiredFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/groups/VerifiedIdRequiredFragment;-><init>()V

    .line 20
    .local v0, "f":Lcom/airbnb/android/fragments/groups/VerifiedIdRequiredFragment;
    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/VerifiedIdRequiredFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v3, "VerifiedIdRequiredFragment#onCreateView"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_9} :catch_34

    .line 25
    :goto_9
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/VerifiedIdRequiredFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 27
    const v2, 0x7f03004a

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 29
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f0800c1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/StickyButton;

    .line 30
    .local v0, "stickyButton":Lcom/airbnb/android/views/StickyButton;
    const v2, 0x7f0e0281

    invoke-virtual {v0, v2}, Lcom/airbnb/android/views/StickyButton;->setTitle(I)V

    .line 31
    new-instance v2, Lcom/airbnb/android/fragments/groups/VerifiedIdRequiredFragment$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/groups/VerifiedIdRequiredFragment$1;-><init>(Lcom/airbnb/android/fragments/groups/VerifiedIdRequiredFragment;)V

    invoke-virtual {v0, v2}, Lcom/airbnb/android/views/StickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v1

    .line 4294967295
    .end local v0    # "stickyButton":Lcom/airbnb/android/views/StickyButton;
    .end local v1    # "v":Landroid/view/View;
    :catch_34
    move-exception v2

    const/4 v2, 0x0

    :try_start_36
    const-string/jumbo v3, "VerifiedIdRequiredFragment#onCreateView"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_3d} :catch_34

    goto :goto_9
.end method

.method protected onStart()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method
