.class Lcom/airbnb/android/fragments/EmailSignInFragment$1;
.super Ljava/lang/Object;
.source "EmailSignInFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/EmailSignInFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/EmailSignInFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/EmailSignInFragment;)V
    .registers 2

    .prologue
    .line 72
    iput-object p1, p0, Lcom/airbnb/android/fragments/EmailSignInFragment$1;->this$0:Lcom/airbnb/android/fragments/EmailSignInFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 86
    iget-object v1, p0, Lcom/airbnb/android/fragments/EmailSignInFragment$1;->this$0:Lcom/airbnb/android/fragments/EmailSignInFragment;

    # getter for: Lcom/airbnb/android/fragments/EmailSignInFragment;->mEmail:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/airbnb/android/fragments/EmailSignInFragment;->access$000(Lcom/airbnb/android/fragments/EmailSignInFragment;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3b

    iget-object v1, p0, Lcom/airbnb/android/fragments/EmailSignInFragment$1;->this$0:Lcom/airbnb/android/fragments/EmailSignInFragment;

    # getter for: Lcom/airbnb/android/fragments/EmailSignInFragment;->mPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/airbnb/android/fragments/EmailSignInFragment;->access$100(Lcom/airbnb/android/fragments/EmailSignInFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3b

    const/4 v0, 0x1

    .line 88
    .local v0, "enableSignInButton":Z
    :goto_31
    iget-object v1, p0, Lcom/airbnb/android/fragments/EmailSignInFragment$1;->this$0:Lcom/airbnb/android/fragments/EmailSignInFragment;

    # getter for: Lcom/airbnb/android/fragments/EmailSignInFragment;->mSignInButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/airbnb/android/fragments/EmailSignInFragment;->access$200(Lcom/airbnb/android/fragments/EmailSignInFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 89
    return-void

    .line 86
    .end local v0    # "enableSignInButton":Z
    :cond_3b
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
    .line 82
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 77
    return-void
.end method
