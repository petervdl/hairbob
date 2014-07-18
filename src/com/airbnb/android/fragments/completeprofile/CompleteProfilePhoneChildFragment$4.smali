.class Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment$4;
.super Ljava/lang/Object;
.source "CompleteProfilePhoneChildFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->setupSendButton()V
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
    .line 138
    iput-object p1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment$4;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 142
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment$4;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;

    # getter for: Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->mPhoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    invoke-static {v1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->access$200(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment$4;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;

    # getter for: Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->mPhoneNumber:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-static {v2}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->access$100(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    sget-object v3, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v1, v2, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "formattedNumber":Ljava/lang/String;
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment$4;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;

    # invokes: Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->sendPhoneNumber(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->access$400(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;Ljava/lang/String;)V

    .line 144
    return-void
.end method
