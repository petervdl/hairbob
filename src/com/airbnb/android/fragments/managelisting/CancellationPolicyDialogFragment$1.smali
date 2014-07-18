.class Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment$1;
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
    .line 71
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment;->dismiss()V

    .line 76
    return-void
.end method
