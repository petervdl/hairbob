.class public Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "PhotoDeletionConfirmationDialogFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field public static final ARGS_PHOTO_ID:Ljava/lang/String; = "photo_id"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(J)Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment;
    .registers 5
    .param p0, "photoId"    # J

    .prologue
    .line 19
    new-instance v1, Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment;-><init>()V

    .line 20
    .local v1, "df":Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 21
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "photo_id"

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 22
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 24
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    const/4 v0, 0x1

    const v1, 0x7f0f0053

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment;->setStyle(II)V

    .line 31
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0509

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0507

    new-instance v2, Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment$2;-><init>(Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e00b0

    new-instance v2, Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment$1;-><init>(Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

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
