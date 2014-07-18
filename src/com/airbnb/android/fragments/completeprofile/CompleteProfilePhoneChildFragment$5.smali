.class Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment$5;
.super Ljava/lang/Object;
.source "CompleteProfilePhoneChildFragment.java"

# interfaces
.implements Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment$PhoneAccountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->sendPhoneNumber(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;)V
    .registers 2

    .prologue
    .line 179
    iput-object p1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment$5;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneAccountUpdateError()V
    .registers 4

    .prologue
    .line 189
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment$5;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e0718

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 190
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment$5;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;

    # getter for: Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->mSendButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->access$300(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 191
    return-void
.end method

.method public onPhoneAccountUpdateSuccess()V
    .registers 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment$5;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;

    # invokes: Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->getParent()Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;
    invoke-static {v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->access$000(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;)Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;->displayPhoneVerificationCodeEntry(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment$5;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;

    # getter for: Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->mSendButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->access$300(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 185
    return-void
.end method
