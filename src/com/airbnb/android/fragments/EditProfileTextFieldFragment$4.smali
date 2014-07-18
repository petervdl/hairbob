.class Lcom/airbnb/android/fragments/EditProfileTextFieldFragment$4;
.super Ljava/lang/Object;
.source "EditProfileTextFieldFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->setActionBarEditModeEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;)V
    .registers 2

    .prologue
    .line 212
    iput-object p1, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment$4;->this$0:Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 215
    iget-object v0, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment$4;->this$0:Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mSection:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    sget-object v1, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->Email:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    if-ne v0, v1, :cond_2f

    .line 216
    iget-object v0, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment$4;->this$0:Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mEditableField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/utils/TextHelper;->isValidEmail(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 217
    iget-object v0, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment$4;->this$0:Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;

    # invokes: Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->exit(Z)V
    invoke-static {v0, v2}, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->access$200(Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;Z)V

    .line 224
    :goto_1c
    return-void

    .line 219
    :cond_1d
    iget-object v0, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment$4;->this$0:Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e018a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1c

    .line 222
    :cond_2f
    iget-object v0, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment$4;->this$0:Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;

    # invokes: Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->exit(Z)V
    invoke-static {v0, v2}, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->access$200(Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;Z)V

    goto :goto_1c
.end method
