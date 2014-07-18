.class Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment$2;
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
    .line 33
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 37
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 38
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 39
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "photo_id"

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "photo_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 40
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment;->getTargetRequestCode()I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 42
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_30
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 43
    return-void
.end method
