.class public Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;
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
    name = "GreenCheckmarkDialogFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment$DialogCompleteListener;
    }
.end annotation


# static fields
.field protected static final AUTO_DISMISS_TIME:Ljava/lang/String; = "dismiss_time"

.field protected static final DIALOG_SUBTITLE:Ljava/lang/String; = "dialog_subtitle"

.field protected static final DIALOG_SUBTITLE_RES:Ljava/lang/String; = "dialog_subtitle_res"

.field protected static final DIALOG_TITLE_RES:Ljava/lang/String; = "dialog_title_res"

.field private static final INVALID_ID:I = -0x1


# instance fields
.field private mListener:Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment$DialogCompleteListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 437
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 516
    return-void
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;)Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment$DialogCompleteListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;

    .prologue
    .line 437
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;->mListener:Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment$DialogCompleteListener;

    return-object v0
.end method

.method public static newInstance(III)Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;
    .registers 6
    .param p0, "titleRes"    # I
    .param p1, "subtitleRes"    # I
    .param p2, "dismissMillis"    # I

    .prologue
    .line 448
    new-instance v1, Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;-><init>()V

    .line 449
    .local v1, "f":Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 450
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "dialog_title_res"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 451
    const-string/jumbo v2, "dialog_subtitle_res"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 452
    const-string/jumbo v2, "dismiss_time"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 453
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 454
    return-object v1
.end method

.method public static newInstance(ILjava/lang/String;I)Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;
    .registers 6
    .param p0, "titleRes"    # I
    .param p1, "subtitle"    # Ljava/lang/String;
    .param p2, "dismissMillis"    # I

    .prologue
    .line 458
    new-instance v1, Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;-><init>()V

    .line 459
    .local v1, "f":Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 460
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "dialog_title_res"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 461
    const-string/jumbo v2, "dialog_subtitle"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string/jumbo v2, "dismiss_time"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 463
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 464
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    const-string/jumbo v0, "AirDialogFragments$GreenCheckmarkDialogFragment"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_6
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v1, "AirDialogFragments$GreenCheckmarkDialogFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_f} :catch_1b

    .line 469
    :goto_f
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 470
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;->setStyle(II)V

    .line 471
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_1b
    move-exception v0

    const/4 v0, 0x0

    :try_start_1d
    const-string/jumbo v1, "AirDialogFragments$GreenCheckmarkDialogFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_24} :catch_1b

    goto :goto_f
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 13

    .prologue
    const/4 v8, -0x1

    :try_start_1
    iget-object v5, p0, Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v6, "AirDialogFragments$GreenCheckmarkDialogFragment#onCreateView"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_a} :catch_51

    .line 475
    :goto_a
    const v5, 0x7f030106

    const/4 v6, 0x0

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 477
    .local v4, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "dialog_title_res"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 478
    .local v3, "titleRes":I
    const v5, 0x7f0800b7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(I)V

    .line 480
    const v5, 0x7f0802d8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 481
    .local v2, "subtitleTextView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "dialog_subtitle_res"

    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 482
    .local v1, "subtitleRes":I
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "dialog_subtitle"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, "subtitle":Ljava/lang/String;
    if-eq v1, v8, :cond_5b

    .line 485
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 492
    :goto_4d
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v4

    .line 4294967295
    .end local v0    # "subtitle":Ljava/lang/String;
    .end local v1    # "subtitleRes":I
    .end local v2    # "subtitleTextView":Landroid/widget/TextView;
    .end local v3    # "titleRes":I
    .end local v4    # "v":Landroid/view/View;
    :catch_51
    move-exception v5

    const/4 v5, 0x0

    :try_start_53
    const-string/jumbo v6, "AirDialogFragments$GreenCheckmarkDialogFragment#onCreateView"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_5a} :catch_51

    goto :goto_a

    .line 486
    .restart local v0    # "subtitle":Ljava/lang/String;
    .restart local v1    # "subtitleRes":I
    .restart local v2    # "subtitleTextView":Landroid/widget/TextView;
    .restart local v3    # "titleRes":I
    .restart local v4    # "v":Landroid/view/View;
    :cond_5b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_65

    .line 487
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4d

    .line 489
    :cond_65
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4d
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 497
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 500
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment$1;-><init>(Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;)V

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "dismiss_time"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 510
    return-void
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

.method public setDialogCompleteListener(Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment$DialogCompleteListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment$DialogCompleteListener;

    .prologue
    .line 513
    iput-object p1, p0, Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;->mListener:Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment$DialogCompleteListener;

    .line 514
    return-void
.end method
