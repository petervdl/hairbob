.class Lcom/airbnb/android/fragments/managelisting/CheckInOutTimeDialogFragment$2;
.super Ljava/lang/Object;
.source "CheckInOutTimeDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/CheckInOutTimeDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/CheckInOutTimeDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/CheckInOutTimeDialogFragment;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/CheckInOutTimeDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/CheckInOutTimeDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 59
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 60
    add-int/lit8 p2, p2, -0x1

    .line 62
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/CheckInOutTimeDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/CheckInOutTimeDialogFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/managelisting/CheckInOutTimeDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 63
    .local v0, "f":Landroid/support/v4/app/Fragment;
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/CheckInOutTimeDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/CheckInOutTimeDialogFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/managelisting/CheckInOutTimeDialogFragment;->getTargetRequestCode()I

    move-result v2

    .line 64
    .local v2, "requestCode":I
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 65
    .local v1, "i":Landroid/content/Intent;
    if-ltz p2, :cond_1e

    .line 66
    const-string/jumbo v3, "hour"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    :cond_1e
    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 70
    return-void
.end method
