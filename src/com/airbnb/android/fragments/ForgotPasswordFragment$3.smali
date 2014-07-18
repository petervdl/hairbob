.class Lcom/airbnb/android/fragments/ForgotPasswordFragment$3;
.super Ljava/lang/Object;
.source "ForgotPasswordFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 102
    iput-object p1, p0, Lcom/airbnb/android/fragments/ForgotPasswordFragment$3;->this$0:Lcom/airbnb/android/fragments/ForgotPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/airbnb/android/fragments/ForgotPasswordFragment$3;->this$0:Lcom/airbnb/android/fragments/ForgotPasswordFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ForgotPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/airbnb/android/fragments/ForgotPasswordFragment$3;->this$0:Lcom/airbnb/android/fragments/ForgotPasswordFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ForgotPasswordFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 106
    iget-object v0, p0, Lcom/airbnb/android/fragments/ForgotPasswordFragment$3;->this$0:Lcom/airbnb/android/fragments/ForgotPasswordFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ForgotPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/ForgotPasswordFragment$3;->this$0:Lcom/airbnb/android/fragments/ForgotPasswordFragment;

    # getter for: Lcom/airbnb/android/fragments/ForgotPasswordFragment;->mEmail:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ForgotPasswordFragment;->access$000(Lcom/airbnb/android/fragments/ForgotPasswordFragment;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/MiscUtils;->requestFocusAndOpenKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 109
    :cond_1f
    return-void
.end method
