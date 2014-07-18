.class Lcom/airbnb/android/fragments/EmailSignUpFragment$5;
.super Ljava/lang/Object;
.source "EmailSignUpFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 168
    iput-object p1, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment$5;->this$0:Lcom/airbnb/android/fragments/EmailSignUpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment$5;->this$0:Lcom/airbnb/android/fragments/EmailSignUpFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/EmailSignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment$5;->this$0:Lcom/airbnb/android/fragments/EmailSignUpFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/EmailSignUpFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 172
    iget-object v0, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment$5;->this$0:Lcom/airbnb/android/fragments/EmailSignUpFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/EmailSignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment$5;->this$0:Lcom/airbnb/android/fragments/EmailSignUpFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mEmail:Landroid/widget/AutoCompleteTextView;

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/MiscUtils;->requestFocusAndOpenKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 175
    :cond_1d
    return-void
.end method
