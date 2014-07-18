.class Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment$2;
.super Ljava/lang/Object;
.source "CompleteProfilePhoneChildFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 106
    iput-object p1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment$2;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 110
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_31

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-ne v1, v2, :cond_31

    .line 111
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment$2;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;

    # getter for: Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->mSendButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->access$300(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 112
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment$2;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;

    # getter for: Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->mPhoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    invoke-static {v1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->access$200(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment$2;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;

    # getter for: Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->mPhoneNumber:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-static {v2}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->access$100(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    sget-object v3, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v1, v2, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "formattedNumber":Ljava/lang/String;
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment$2;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;

    # invokes: Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->sendPhoneNumber(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->access$400(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;Ljava/lang/String;)V

    .line 117
    .end local v0    # "formattedNumber":Ljava/lang/String;
    :cond_31
    const/4 v1, 0x0

    return v1
.end method
