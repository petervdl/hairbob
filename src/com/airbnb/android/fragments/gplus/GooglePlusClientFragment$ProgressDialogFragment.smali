.class public final Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$ProgressDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "GooglePlusClientFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProgressDialogFragment"
.end annotation


# static fields
.field private static final ARG_MESSAGE:Ljava/lang/String; = "message"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 407
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static create()Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$ProgressDialogFragment;
    .registers 1

    .prologue
    .line 420
    const v0, 0x7f0e0219

    invoke-static {v0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$ProgressDialogFragment;->create(I)Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$ProgressDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static create(I)Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$ProgressDialogFragment;
    .registers 4
    .param p0, "message"    # I

    .prologue
    .line 412
    new-instance v1, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$ProgressDialogFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$ProgressDialogFragment;-><init>()V

    .line 413
    .local v1, "progressDialogFragment":Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$ProgressDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 414
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "message"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 415
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$ProgressDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 416
    return-object v1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 434
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 435
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$ProgressDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 436
    .local v0, "activity":Landroid/support/v4/app/FragmentActivity;
    if-nez v0, :cond_a

    .line 445
    :cond_9
    :goto_9
    return-void

    .line 440
    :cond_a
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "plusClientFragment"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 442
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v2, v1, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    if-eqz v2, :cond_9

    .line 443
    check-cast v1, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$ProgressDialogFragment;->getTag()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->onDialogCanceled(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->access$200(Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 426
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$ProgressDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 427
    .local v0, "progressDialog":Landroid/app/ProgressDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 428
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$ProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$ProgressDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 429
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 449
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 450
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$ProgressDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 451
    .local v0, "activity":Landroid/support/v4/app/FragmentActivity;
    if-nez v0, :cond_a

    .line 460
    :cond_9
    :goto_9
    return-void

    .line 455
    :cond_a
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "plusClientFragment"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 457
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v2, v1, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    if-eqz v2, :cond_9

    .line 458
    check-cast v1, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$ProgressDialogFragment;->getTag()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->onDialogDismissed(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->access$300(Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;Ljava/lang/String;)V

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
