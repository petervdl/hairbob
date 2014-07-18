.class Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment$2;
.super Ljava/lang/Object;
.source "DeleteListingDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment;)V
    .registers 2

    .prologue
    .line 37
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment;->mDeleteListener:Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment$OnDeleteListener;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment;)Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment$OnDeleteListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 42
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment;->mDeleteListener:Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment$OnDeleteListener;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment;)Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment$OnDeleteListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment$OnDeleteListener;->onDelete()V

    .line 44
    :cond_11
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 45
    return-void
.end method
