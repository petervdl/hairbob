.class public Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "AirDialogFragments.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/AirDialogFragments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DualButtonDialogFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment$DualButtonDialogListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ARG_INFO:Ljava/lang/String; = "info"

.field private static final ARG_INFO_RES:Ljava/lang/String; = "info_resource"

.field private static final ARG_NEGATIVE_BUTTON:Ljava/lang/String; = "negative_button"

.field private static final ARG_POSITIVE_BUTTON:Ljava/lang/String; = "positive_button"


# instance fields
.field private mListener:Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment$DualButtonDialogListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 186
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 265
    return-void
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;)Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment$DualButtonDialogListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;->mListener:Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment$DualButtonDialogListener;

    return-object v0
.end method

.method public static newInstance(III)Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;
    .registers 6
    .param p0, "dialogMessageRes"    # I
    .param p1, "positiveTextRes"    # I
    .param p2, "negativeTextRes"    # I

    .prologue
    .line 196
    new-instance v1, Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;-><init>()V

    .line 197
    .local v1, "f":Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 198
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "info_resource"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 199
    const-string/jumbo v2, "positive_button"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 200
    const-string/jumbo v2, "negative_button"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 203
    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;II)Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;
    .registers 6
    .param p0, "dialogMessage"    # Ljava/lang/String;
    .param p1, "positiveTextRes"    # I
    .param p2, "negativeTextRes"    # I

    .prologue
    .line 207
    new-instance v1, Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;-><init>()V

    .line 208
    .local v1, "f":Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 209
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "info"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string/jumbo v2, "positive_button"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 211
    const-string/jumbo v2, "negative_button"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 212
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 214
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    const-string/jumbo v0, "AirDialogFragments$DualButtonDialogFragment"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_6
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v1, "AirDialogFragments$DualButtonDialogFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_f} :catch_1b

    .line 219
    :goto_f
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 220
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;->setStyle(II)V

    .line 221
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_1b
    move-exception v0

    const/4 v0, 0x0

    :try_start_1d
    const-string/jumbo v1, "AirDialogFragments$DualButtonDialogFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_24} :catch_1b

    goto :goto_f
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11

    .prologue
    :try_start_0
    iget-object v4, p0, Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v5, "AirDialogFragments$DualButtonDialogFragment#onCreateView"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_9} :catch_7b

    .line 225
    :goto_9
    const v4, 0x7f030056

    const/4 v5, 0x0

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 227
    .local v3, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "info"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "info":Ljava/lang/String;
    if-nez v0, :cond_2d

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "info_resource"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    :cond_2d
    const v4, 0x7f0800fb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    const v4, 0x7f0800fd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 232
    .local v1, "negativeButton":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "negative_button"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 233
    new-instance v4, Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment$1;-><init>(Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    const v4, 0x7f0800fe

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 245
    .local v2, "positiveButton":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "positive_button"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 246
    new-instance v4, Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment$2;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment$2;-><init>(Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v3

    .line 4294967295
    .end local v0    # "info":Ljava/lang/String;
    .end local v1    # "negativeButton":Landroid/widget/TextView;
    .end local v2    # "positiveButton":Landroid/widget/TextView;
    .end local v3    # "v":Landroid/view/View;
    :catch_7b
    move-exception v4

    const/4 v4, 0x0

    :try_start_7d
    const-string/jumbo v5, "AirDialogFragments$DualButtonDialogFragment#onCreateView"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7d .. :try_end_84} :catch_7b

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

.method public setDualButtonDialogListener(Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment$DualButtonDialogListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment$DualButtonDialogListener;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;->mListener:Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment$DualButtonDialogListener;

    .line 262
    return-void
.end method
