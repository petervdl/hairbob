.class public Lcom/airbnb/android/fragments/verifiedid/ConfirmedVerificationFragment;
.super Landroid/support/v4/app/Fragment;
.source "ConfirmedVerificationFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field private static final VERIFICATION_HEADER_EXTRA:Ljava/lang/String; = "verification_header"

.field private static final VERIFICATION_TEXT_EXTRA:Ljava/lang/String; = "verification_text"


# instance fields
.field private mVerificationDescription:Landroid/widget/TextView;

.field private mVerificationHeader:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/fragments/verifiedid/ConfirmedVerificationFragment;
    .registers 5
    .param p0, "verificationHeader"    # Ljava/lang/String;
    .param p1, "verificationText"    # Ljava/lang/String;

    .prologue
    .line 21
    new-instance v1, Lcom/airbnb/android/fragments/verifiedid/ConfirmedVerificationFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/verifiedid/ConfirmedVerificationFragment;-><init>()V

    .line 23
    .local v1, "fragment":Lcom/airbnb/android/fragments/verifiedid/ConfirmedVerificationFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 24
    .local v0, "arguments":Landroid/os/Bundle;
    const-string/jumbo v2, "verification_header"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string/jumbo v2, "verification_text"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/verifiedid/ConfirmedVerificationFragment;->setArguments(Landroid/os/Bundle;)V

    .line 28
    return-object v1
.end method


# virtual methods
.method public getVerificationHeader()Ljava/lang/String;
    .registers 3

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/ConfirmedVerificationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "verification_header"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVerificationText()Ljava/lang/String;
    .registers 3

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/ConfirmedVerificationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "verification_text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/airbnb/android/fragments/verifiedid/ConfirmedVerificationFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v2, "ConfirmedVerificationFragment#onCreateView"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_9} :catch_3d

    .line 33
    :goto_9
    const v1, 0x7f0300f6

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 35
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0802c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/verifiedid/ConfirmedVerificationFragment;->mVerificationHeader:Landroid/widget/TextView;

    .line 36
    iget-object v1, p0, Lcom/airbnb/android/fragments/verifiedid/ConfirmedVerificationFragment;->mVerificationHeader:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/ConfirmedVerificationFragment;->getVerificationHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    const v1, 0x7f0802c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/verifiedid/ConfirmedVerificationFragment;->mVerificationDescription:Landroid/widget/TextView;

    .line 39
    iget-object v1, p0, Lcom/airbnb/android/fragments/verifiedid/ConfirmedVerificationFragment;->mVerificationDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/ConfirmedVerificationFragment;->getVerificationText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v0

    .line 4294967295
    .end local v0    # "view":Landroid/view/View;
    :catch_3d
    move-exception v1

    const/4 v1, 0x0

    :try_start_3f
    const-string/jumbo v2, "ConfirmedVerificationFragment#onCreateView"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_46} :catch_3d

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
