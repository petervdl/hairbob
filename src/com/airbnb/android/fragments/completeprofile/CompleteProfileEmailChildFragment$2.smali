.class Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2;
.super Ljava/lang/Object;
.source "CompleteProfileEmailChildFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;)V
    .registers 2

    .prologue
    .line 99
    iput-object p1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 103
    iget-object v2, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;

    # getter for: Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->mEmailAddress:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->access$100(Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "email":Ljava/lang/String;
    if-eqz p2, :cond_39

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 105
    const v2, 0x7f0e07b9

    const v3, 0x7f0e0134

    const v4, 0x7f0e00b0

    invoke-static {v2, v3, v4}, Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;->newInstance(III)Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;

    move-result-object v0

    .line 107
    .local v0, "confirmDialog":Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;
    new-instance v2, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2$1;-><init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2;)V

    invoke-virtual {v0, v2}, Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;->setDualButtonDialogListener(Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment$DualButtonDialogListener;)V

    .line 131
    iget-object v2, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 133
    .end local v0    # "confirmDialog":Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;
    :cond_39
    return-void
.end method
