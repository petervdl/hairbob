.class Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$8;
.super Ljava/lang/Object;
.source "TextEditFieldDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->exit(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;

.field final synthetic val$save:Z


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;Z)V
    .registers 3

    .prologue
    .line 349
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$8;->this$0:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;

    iput-boolean p2, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$8;->val$save:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$8;->val$save:Z

    if-eqz v0, :cond_24

    .line 354
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$8;->this$0:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$8;->this$0:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mField:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->access$800(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;)Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$8;->this$0:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mEditibleField:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->access$700(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->doneTextField(ILjava/lang/String;)V

    .line 358
    :goto_23
    return-void

    .line 356
    :cond_24
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$8;->this$0:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_23
.end method
