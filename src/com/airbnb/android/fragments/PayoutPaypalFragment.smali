.class public Lcom/airbnb/android/fragments/PayoutPaypalFragment;
.super Landroid/support/v4/app/Fragment;
.source "PayoutPaypalFragment.java"

# interfaces
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
    .line 16
    const-class v0, Lcom/airbnb/android/fragments/PayoutPaypalFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/PayoutPaypalFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/PayoutPaypalFragment;
    .registers 1

    .prologue
    .line 19
    new-instance v0, Lcom/airbnb/android/fragments/PayoutPaypalFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/PayoutPaypalFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10

    .prologue
    :try_start_0
    iget-object v3, p0, Lcom/airbnb/android/fragments/PayoutPaypalFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v4, "PayoutPaypalFragment#onCreateView"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_9} :catch_37

    .line 24
    :goto_9
    const v3, 0x7f0300ce

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 25
    .local v1, "v":Landroid/view/View;
    const v3, 0x7f080248

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 26
    .local v2, "yesButton":Landroid/widget/Button;
    const v3, 0x7f080249

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 29
    .local v0, "noButton":Landroid/widget/Button;
    new-instance v3, Lcom/airbnb/android/fragments/PayoutPaypalFragment$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/PayoutPaypalFragment$1;-><init>(Lcom/airbnb/android/fragments/PayoutPaypalFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    new-instance v3, Lcom/airbnb/android/fragments/PayoutPaypalFragment$2;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/PayoutPaypalFragment$2;-><init>(Lcom/airbnb/android/fragments/PayoutPaypalFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v1

    .line 4294967295
    .end local v0    # "noButton":Landroid/widget/Button;
    .end local v1    # "v":Landroid/view/View;
    .end local v2    # "yesButton":Landroid/widget/Button;
    :catch_37
    move-exception v3

    const/4 v3, 0x0

    :try_start_39
    const-string/jumbo v4, "PayoutPaypalFragment#onCreateView"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_40} :catch_37

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
