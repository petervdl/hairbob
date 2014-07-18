.class public Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "DeleteListingDialogFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment$OnDeleteListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mDeleteListener:Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment$OnDeleteListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 14
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment;)Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment$OnDeleteListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment;->mDeleteListener:Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment$OnDeleteListener;

    return-object v0
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment;
    .registers 2

    .prologue
    .line 24
    new-instance v1, Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment;-><init>()V

    .line 25
    .local v1, "f":Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 26
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 28
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e04c3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e04c4

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0150

    new-instance v3, Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment$2;-><init>(Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e00b0

    new-instance v3, Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment$1;-><init>(Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 60
    .local v0, "dialog":Landroid/app/AlertDialog;
    return-object v0
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

.method public setOnDeleteListener(Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment$OnDeleteListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment$OnDeleteListener;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment;->mDeleteListener:Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment$OnDeleteListener;

    .line 65
    return-void
.end method
