.class Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$1;
.super Ljava/lang/Object;
.source "AccountSelectorDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 58
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;->mListener:Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$OnAccountSelectedListener;
    invoke-static {v1}, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;->access$000(Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;)Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$OnAccountSelectedListener;

    move-result-object v1

    if-nez v1, :cond_9

    .line 70
    :goto_8
    return-void

    .line 62
    :cond_9
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;->mUsers:Ljava/util/List;
    invoke-static {v1}, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;->access$100(Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne p2, v1, :cond_1f

    .line 63
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;->mListener:Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$OnAccountSelectedListener;
    invoke-static {v1}, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;->access$000(Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;)Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$OnAccountSelectedListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$OnAccountSelectedListener;->onNewAccountSelected()V

    goto :goto_8

    .line 64
    :cond_1f
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;->mUsers:Ljava/util/List;
    invoke-static {v1}, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;->access$100(Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ne p2, v1, :cond_37

    .line 65
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;->mListener:Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$OnAccountSelectedListener;
    invoke-static {v1}, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;->access$000(Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;)Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$OnAccountSelectedListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$OnAccountSelectedListener;->onBecomeUserSelected()V

    goto :goto_8

    .line 67
    :cond_37
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;->mUsers:Ljava/util/List;
    invoke-static {v1}, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;->access$100(Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;

    .line 68
    .local v0, "account":Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;->mListener:Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$OnAccountSelectedListener;
    invoke-static {v1}, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;->access$000(Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;)Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$OnAccountSelectedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$OnAccountSelectedListener;->onAccountSelected(Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;)V

    goto :goto_8
.end method
