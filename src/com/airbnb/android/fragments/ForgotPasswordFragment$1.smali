.class Lcom/airbnb/android/fragments/ForgotPasswordFragment$1;
.super Ljava/lang/Object;
.source "ForgotPasswordFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ForgotPasswordFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ForgotPasswordFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ForgotPasswordFragment;)V
    .registers 2

    .prologue
    .line 73
    iput-object p1, p0, Lcom/airbnb/android/fragments/ForgotPasswordFragment$1;->this$0:Lcom/airbnb/android/fragments/ForgotPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 85
    iget-object v1, p0, Lcom/airbnb/android/fragments/ForgotPasswordFragment$1;->this$0:Lcom/airbnb/android/fragments/ForgotPasswordFragment;

    # getter for: Lcom/airbnb/android/fragments/ForgotPasswordFragment;->mEmail:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ForgotPasswordFragment;->access$000(Lcom/airbnb/android/fragments/ForgotPasswordFragment;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    const/4 v0, 0x1

    .line 86
    .local v0, "resetEnabled":Z
    :goto_19
    iget-object v1, p0, Lcom/airbnb/android/fragments/ForgotPasswordFragment$1;->this$0:Lcom/airbnb/android/fragments/ForgotPasswordFragment;

    # getter for: Lcom/airbnb/android/fragments/ForgotPasswordFragment;->mResetPasswordButton:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ForgotPasswordFragment;->access$100(Lcom/airbnb/android/fragments/ForgotPasswordFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 87
    return-void

    .line 85
    .end local v0    # "resetEnabled":Z
    :cond_23
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 81
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
