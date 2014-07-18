.class Lcom/airbnb/android/fragments/EmailSignUpFragment$1;
.super Ljava/lang/Object;
.source "EmailSignUpFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/EmailSignUpFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/EmailSignUpFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/EmailSignUpFragment;)V
    .registers 2

    .prologue
    .line 95
    iput-object p1, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment$1;->this$0:Lcom/airbnb/android/fragments/EmailSignUpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 111
    iget-object v1, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment$1;->this$0:Lcom/airbnb/android/fragments/EmailSignUpFragment;

    iget-object v2, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment$1;->this$0:Lcom/airbnb/android/fragments/EmailSignUpFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mEmail:Landroid/widget/AutoCompleteTextView;

    # invokes: Lcom/airbnb/android/fragments/EmailSignUpFragment;->fieldNotEmpty(Landroid/widget/TextView;)Z
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/EmailSignUpFragment;->access$000(Lcom/airbnb/android/fragments/EmailSignUpFragment;Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment$1;->this$0:Lcom/airbnb/android/fragments/EmailSignUpFragment;

    iget-object v2, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment$1;->this$0:Lcom/airbnb/android/fragments/EmailSignUpFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mPassword:Landroid/widget/EditText;

    # invokes: Lcom/airbnb/android/fragments/EmailSignUpFragment;->fieldNotEmpty(Landroid/widget/TextView;)Z
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/EmailSignUpFragment;->access$000(Lcom/airbnb/android/fragments/EmailSignUpFragment;Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment$1;->this$0:Lcom/airbnb/android/fragments/EmailSignUpFragment;

    iget-object v2, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment$1;->this$0:Lcom/airbnb/android/fragments/EmailSignUpFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mFirstName:Landroid/widget/EditText;

    # invokes: Lcom/airbnb/android/fragments/EmailSignUpFragment;->fieldNotEmpty(Landroid/widget/TextView;)Z
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/EmailSignUpFragment;->access$000(Lcom/airbnb/android/fragments/EmailSignUpFragment;Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment$1;->this$0:Lcom/airbnb/android/fragments/EmailSignUpFragment;

    iget-object v2, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment$1;->this$0:Lcom/airbnb/android/fragments/EmailSignUpFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mLastName:Landroid/widget/EditText;

    # invokes: Lcom/airbnb/android/fragments/EmailSignUpFragment;->fieldNotEmpty(Landroid/widget/TextView;)Z
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/EmailSignUpFragment;->access$000(Lcom/airbnb/android/fragments/EmailSignUpFragment;Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_39

    const/4 v0, 0x1

    .line 112
    .local v0, "enableSignInButton":Z
    :goto_31
    iget-object v1, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment$1;->this$0:Lcom/airbnb/android/fragments/EmailSignUpFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mSignUpButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 113
    return-void

    .line 111
    .end local v0    # "enableSignInButton":Z
    :cond_39
    const/4 v0, 0x0

    goto :goto_31
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 107
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 101
    return-void
.end method
