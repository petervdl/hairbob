.class Lcom/airbnb/android/fragments/EmailSignInFragment$5;
.super Ljava/lang/Object;
.source "EmailSignInFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 130
    iput-object p1, p0, Lcom/airbnb/android/fragments/EmailSignInFragment$5;->this$0:Lcom/airbnb/android/fragments/EmailSignInFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/airbnb/android/fragments/EmailSignInFragment$5;->this$0:Lcom/airbnb/android/fragments/EmailSignInFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/EmailSignInFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/airbnb/android/fragments/EmailSignInFragment$5;->this$0:Lcom/airbnb/android/fragments/EmailSignInFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/EmailSignInFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 134
    iget-object v0, p0, Lcom/airbnb/android/fragments/EmailSignInFragment$5;->this$0:Lcom/airbnb/android/fragments/EmailSignInFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/EmailSignInFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/EmailSignInFragment$5;->this$0:Lcom/airbnb/android/fragments/EmailSignInFragment;

    # getter for: Lcom/airbnb/android/fragments/EmailSignInFragment;->mEmail:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/airbnb/android/fragments/EmailSignInFragment;->access$000(Lcom/airbnb/android/fragments/EmailSignInFragment;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/MiscUtils;->requestFocusAndOpenKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 137
    :cond_1f
    return-void
.end method
