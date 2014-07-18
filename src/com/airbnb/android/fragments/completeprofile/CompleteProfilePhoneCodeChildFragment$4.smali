.class Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$4;
.super Ljava/lang/Object;
.source "CompleteProfilePhoneCodeChildFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->setupCodeEditText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;)V
    .registers 2

    .prologue
    .line 146
    iput-object p1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$4;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 150
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 154
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$4;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;

    # invokes: Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->getParent()Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;
    invoke-static {v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->access$000(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;)Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;->isVerifiedIdFlow()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 159
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$4;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackPhonePendingDidType(Lcom/airbnb/android/utils/Strap;)V

    .line 162
    :cond_15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$4;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_48

    .line 163
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$4;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;

    # getter for: Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->mEnterButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->access$300(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 164
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$4;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$4;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/KeyboardUtils;->dismissSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 168
    :goto_47
    return-void

    .line 166
    :cond_48
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$4;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;

    # getter for: Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->mEnterButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->access$300(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_47
.end method
