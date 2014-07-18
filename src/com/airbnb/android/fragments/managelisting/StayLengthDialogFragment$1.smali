.class Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment$1;
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
    .line 72
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 77
    :try_start_0
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;->mEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 78
    .local v2, "nights":I
    const/4 v3, 0x1

    if-ge v2, v3, :cond_37

    .line 79
    const/4 v2, 0x1

    .line 83
    :cond_16
    :goto_16
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 84
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "nights"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;

    invoke-virtual {v4}, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;->getTargetRequestCode()I

    move-result v4

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5, v1}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 86
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;->dismiss()V
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_36} :catch_3e

    .line 90
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "nights":I
    :goto_36
    return-void

    .line 80
    .restart local v2    # "nights":I
    :cond_37
    const/16 v3, 0x465

    if-le v2, v3, :cond_16

    .line 81
    const/16 v2, 0x465

    goto :goto_16

    .line 87
    .end local v2    # "nights":I
    :catch_3e
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method
