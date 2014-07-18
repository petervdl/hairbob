.class Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment$2;
.super Ljava/lang/Object;
.source "StayLengthDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;)V
    .registers 2

    .prologue
    .line 63
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;->getTargetRequestCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 68
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;->dismiss()V

    .line 69
    return-void
.end method
