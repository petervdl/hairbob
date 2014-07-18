.class public Lcom/airbnb/android/fragments/PayoutAchPreFragment;
.super Landroid/support/v4/app/Fragment;
.source "PayoutAchPreFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/PayoutAchPreFragment$AchAccountType;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/airbnb/android/fragments/PayoutAchPreFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/PayoutAchPreFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 18
    return-void
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/PayoutAchPreFragment;
    .registers 1

    .prologue
    .line 30
    new-instance v0, Lcom/airbnb/android/fragments/PayoutAchPreFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/PayoutAchPreFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11

    .prologue
    :try_start_0
    iget-object v4, p0, Lcom/airbnb/android/fragments/PayoutAchPreFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v5, "PayoutAchPreFragment#onCreateView"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_9} :catch_32

    .line 35
    :goto_9
    const v4, 0x7f0300cc

    const/4 v5, 0x0

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 36
    .local v3, "v":Landroid/view/View;
    const v4, 0x7f080243

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 37
    .local v0, "checking":Landroid/widget/Button;
    const v4, 0x7f080244

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 39
    .local v2, "savings":Landroid/widget/Button;
    new-instance v1, Lcom/airbnb/android/fragments/PayoutAchPreFragment$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/PayoutAchPreFragment$1;-><init>(Lcom/airbnb/android/fragments/PayoutAchPreFragment;)V

    .line 55
    .local v1, "listener":Landroid/view/View$OnClickListener;
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v3

    .line 4294967295
    .end local v0    # "checking":Landroid/widget/Button;
    .end local v1    # "listener":Landroid/view/View$OnClickListener;
    .end local v2    # "savings":Landroid/widget/Button;
    .end local v3    # "v":Landroid/view/View;
    :catch_32
    move-exception v4

    const/4 v4, 0x0

    :try_start_34
    const-string/jumbo v5, "PayoutAchPreFragment#onCreateView"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3b} :catch_32

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
