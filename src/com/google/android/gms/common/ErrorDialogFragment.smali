.class public Lcom/google/android/gms/common/ErrorDialogFragment;
.super Landroid/app/DialogFragment;


# instance fields
.field private CR:Landroid/content/DialogInterface$OnCancelListener;

.field private mDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/ErrorDialogFragment;->mDialog:Landroid/app/Dialog;

    iput-object v0, p0, Lcom/google/android/gms/common/ErrorDialogFragment;->CR:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public static newInstance(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/ErrorDialogFragment;
    .registers 5
    .param p0, "dialog"    # Landroid/app/Dialog;
    .param p1, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    const/4 v2, 0x0

    new-instance v1, Lcom/google/android/gms/common/ErrorDialogFragment;

    invoke-direct {v1}, Lcom/google/android/gms/common/ErrorDialogFragment;-><init>()V

    const-string/jumbo v0, "Cannot display null dialog"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object v0, v1, Lcom/google/android/gms/common/ErrorDialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_1b

    iput-object p1, v1, Lcom/google/android/gms/common/ErrorDialogFragment;->CR:Landroid/content/DialogInterface$OnCancelListener;

    :cond_1b
    return-object v1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/ErrorDialogFragment;->CR:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/common/ErrorDialogFragment;->CR:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_9
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/ErrorDialogFragment;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/ErrorDialogFragment;->setShowsDialog(Z)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/common/ErrorDialogFragment;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .registers 3
    .param p1, "manager"    # Landroid/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
