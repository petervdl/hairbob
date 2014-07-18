.class Lcom/airbnb/android/fragments/ForgotPasswordFragment$4;
.super Ljava/lang/Object;
.source "ForgotPasswordFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ForgotPasswordFragment;->getForgotPasswordRequestListener(Ljava/lang/String;)Lcom/airbnb/android/requests/RequestListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/android/requests/RequestListener",
        "<",
        "Lcom/airbnb/android/requests/ForgotPasswordRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ForgotPasswordFragment;

.field final synthetic val$email:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ForgotPasswordFragment;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 132
    iput-object p1, p0, Lcom/airbnb/android/fragments/ForgotPasswordFragment$4;->this$0:Lcom/airbnb/android/fragments/ForgotPasswordFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/ForgotPasswordFragment$4;->val$email:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 9
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 147
    iget-object v2, p0, Lcom/airbnb/android/fragments/ForgotPasswordFragment$4;->this$0:Lcom/airbnb/android/fragments/ForgotPasswordFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/ForgotPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 148
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_2b

    .line 149
    const v2, 0x7f0e01e7

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/airbnb/android/fragments/ForgotPasswordFragment$4;->val$email:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "errorMessage":Ljava/lang/String;
    iget-object v2, p0, Lcom/airbnb/android/fragments/ForgotPasswordFragment$4;->this$0:Lcom/airbnb/android/fragments/ForgotPasswordFragment;

    # getter for: Lcom/airbnb/android/fragments/ForgotPasswordFragment;->mSignInTransitions:Lcom/airbnb/android/interfaces/SignInTransitions;
    invoke-static {v2}, Lcom/airbnb/android/fragments/ForgotPasswordFragment;->access$300(Lcom/airbnb/android/fragments/ForgotPasswordFragment;)Lcom/airbnb/android/interfaces/SignInTransitions;

    move-result-object v2

    const v3, 0x7f0e01ac

    invoke-interface {v2, v3, v5, v1}, Lcom/airbnb/android/interfaces/SignInTransitions;->handleError(IILjava/lang/String;)V

    .line 151
    iget-object v2, p0, Lcom/airbnb/android/fragments/ForgotPasswordFragment$4;->this$0:Lcom/airbnb/android/fragments/ForgotPasswordFragment;

    # invokes: Lcom/airbnb/android/fragments/ForgotPasswordFragment;->toggleButtonState(Z)V
    invoke-static {v2, v6}, Lcom/airbnb/android/fragments/ForgotPasswordFragment;->access$400(Lcom/airbnb/android/fragments/ForgotPasswordFragment;Z)V

    .line 152
    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 154
    .end local v1    # "errorMessage":Ljava/lang/String;
    :cond_2b
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/ForgotPasswordRequest;)V
    .registers 9
    .param p1, "response"    # Lcom/airbnb/android/requests/ForgotPasswordRequest;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 136
    iget-object v2, p0, Lcom/airbnb/android/fragments/ForgotPasswordFragment$4;->this$0:Lcom/airbnb/android/fragments/ForgotPasswordFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/ForgotPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 137
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_2a

    .line 138
    iget-object v2, p0, Lcom/airbnb/android/fragments/ForgotPasswordFragment$4;->this$0:Lcom/airbnb/android/fragments/ForgotPasswordFragment;

    # getter for: Lcom/airbnb/android/fragments/ForgotPasswordFragment;->mSignInTransitions:Lcom/airbnb/android/interfaces/SignInTransitions;
    invoke-static {v2}, Lcom/airbnb/android/fragments/ForgotPasswordFragment;->access$300(Lcom/airbnb/android/fragments/ForgotPasswordFragment;)Lcom/airbnb/android/interfaces/SignInTransitions;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/airbnb/android/interfaces/SignInTransitions;->showProgressSpinner(Z)V

    .line 139
    const v2, 0x7f0e01e9

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/airbnb/android/fragments/ForgotPasswordFragment$4;->val$email:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "successToast":Ljava/lang/String;
    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 141
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 143
    .end local v1    # "successToast":Ljava/lang/String;
    :cond_2a
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 132
    check-cast p1, Lcom/airbnb/android/requests/ForgotPasswordRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/ForgotPasswordFragment$4;->onResponse(Lcom/airbnb/android/requests/ForgotPasswordRequest;)V

    return-void
.end method
