.class Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$3;
.super Ljava/lang/Object;
.source "AccountVerificationPhonePickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;

.field final synthetic val$activity:Lcom/airbnb/android/activities/AccountVerificationActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;Lcom/airbnb/android/activities/AccountVerificationActivity;)V
    .registers 3

    .prologue
    .line 106
    iput-object p1, p0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$3;->this$0:Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$3;->val$activity:Lcom/airbnb/android/activities/AccountVerificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 109
    const/4 v0, -0x1

    .line 110
    .local v0, "id":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_44

    .line 121
    :goto_8
    new-instance v1, Lcom/airbnb/android/requests/PostSecurityCheckRequest;

    iget-object v2, p0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$3;->this$0:Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;

    # getter for: Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->mPhoneNumberId:J
    invoke-static {v2}, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->access$200(Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/airbnb/android/requests/PostSecurityCheckRequest;-><init>(JILcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v1}, Lcom/airbnb/android/requests/PostSecurityCheckRequest;->execute()V

    .line 122
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$3;->val$activity:Lcom/airbnb/android/activities/AccountVerificationActivity;

    iget-object v2, p0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$3;->this$0:Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;

    # getter for: Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->mPhoneNumberId:J
    invoke-static {v2}, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->access$200(Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/activities/AccountVerificationActivity;->phoneNumberSelected(J)V

    .line 123
    return-void

    .line 112
    :pswitch_23
    sget-object v1, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$PhoneVerificationType;->SMS:Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$PhoneVerificationType;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$PhoneVerificationType;->ordinal()I

    move-result v0

    .line 113
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$3;->this$0:Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;

    # getter for: Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->mPhoneNumberId:J
    invoke-static {v1}, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->access$200(Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/airbnb/android/analytics/SecurityCheckAnalytics;->trackSelectSMS(J)V

    goto :goto_8

    .line 116
    :pswitch_33
    sget-object v1, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$PhoneVerificationType;->PHONE_CALL:Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$PhoneVerificationType;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$PhoneVerificationType;->ordinal()I

    move-result v0

    .line 117
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$3;->this$0:Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;

    # getter for: Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->mPhoneNumberId:J
    invoke-static {v1}, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->access$200(Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/airbnb/android/analytics/SecurityCheckAnalytics;->trackSelectPhoneCall(J)V

    goto :goto_8

    .line 110
    nop

    :pswitch_data_44
    .packed-switch 0x7f080128
        :pswitch_23
        :pswitch_33
    .end packed-switch
.end method
