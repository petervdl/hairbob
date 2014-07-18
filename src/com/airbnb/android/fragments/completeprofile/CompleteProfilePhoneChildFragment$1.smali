.class Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment$1;
.super Landroid/telephony/PhoneNumberFormattingTextWatcher;
.source "CompleteProfilePhoneChildFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->setupPhoneNumberEditText()V
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
    .line 83
    iput-object p1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment$1;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;

    invoke-direct {p0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 7
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 88
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment$1;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;

    # invokes: Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->getParent()Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;
    invoke-static {v1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->access$000(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;)Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;->isVerifiedIdFlow()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 89
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment$1;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackPhoneStartDidType(Lcom/airbnb/android/utils/Strap;)V

    .line 92
    :cond_18
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 103
    :goto_22
    return-void

    .line 97
    :cond_23
    :try_start_23
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment$1;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;

    iget-object v2, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment$1;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;

    # getter for: Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->mPhoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    invoke-static {v2}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->access$200(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    # setter for: Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->mPhoneNumber:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->access$102(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_3e
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_23 .. :try_end_3e} :catch_58

    .line 102
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment$1;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;

    # getter for: Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->mSendButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->access$300(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment$1;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;

    # getter for: Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->mPhoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    invoke-static {v2}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->access$200(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment$1;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;

    # getter for: Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->mPhoneNumber:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-static {v3}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->access$100(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_22

    .line 98
    :catch_58
    move-exception v0

    .line 99
    .local v0, "e":Lcom/google/i18n/phonenumbers/NumberParseException;
    goto :goto_22
.end method
