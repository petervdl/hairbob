.class Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$7;
.super Ljava/lang/Object;
.source "CompleteProfilePhoneCodeChildFragment.java"

# interfaces
.implements Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment$PhoneAccountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->sendPhoneVerificationCode(Ljava/lang/String;)V
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
    .line 206
    iput-object p1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$7;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneAccountUpdateError()V
    .registers 4

    .prologue
    .line 234
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$7;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e0719

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 235
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$7;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;

    # getter for: Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->mEnterButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->access$300(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 236
    return-void
.end method

.method public onPhoneAccountUpdateSuccess()V
    .registers 6

    .prologue
    .line 210
    iget-object v2, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$7;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/CompleteProfileActivity;

    .line 212
    .local v0, "activity":Lcom/airbnb/android/activities/CompleteProfileActivity;
    new-instance v2, Lcom/airbnb/android/requests/GetActiveAccountRequest;

    new-instance v3, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$7$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$7$1;-><init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$7;)V

    invoke-direct {v2, v0, v3}, Lcom/airbnb/android/requests/GetActiveAccountRequest;-><init>(Landroid/content/Context;Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v2}, Lcom/airbnb/android/requests/GetActiveAccountRequest;->execute()V

    .line 226
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$7;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;

    # invokes: Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->getParent()Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;
    invoke-static {v3}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->access$000(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;)Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;->getPhoneNumber()Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v3

    sget-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v2, v3, v4}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "phoneNumber":Ljava/lang/String;
    iget-object v2, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$7;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;

    # invokes: Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->updateUserPhone(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->access$400(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->completeVerification()V

    .line 229
    iget-object v2, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$7;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;

    # getter for: Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->mEnterButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->access$300(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 230
    return-void
.end method
