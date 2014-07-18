.class Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment$1;
.super Ljava/lang/Object;
.source "PhotoDeletionConfirmationDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment;)V
    .registers 2

    .prologue
    .line 45
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 49
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 50
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 51
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment;->getTargetRequestCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 53
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1e
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 54
    return-void
.end method
