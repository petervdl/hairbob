.class Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment$2;
.super Ljava/lang/Object;
.source "CancellationPolicyDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment;)V
    .registers 2

    .prologue
    .line 59
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 64
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "policy"

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment;->mPolicies:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 65
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment;->getTargetRequestCode()I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 66
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 67
    return-void
.end method
