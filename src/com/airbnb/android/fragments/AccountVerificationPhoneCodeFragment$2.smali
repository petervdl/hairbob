.class Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment$2;
.super Ljava/lang/Object;
.source "AccountVerificationPhoneCodeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment;)V
    .registers 2

    .prologue
    .line 59
    iput-object p1, p0, Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment$2;->this$0:Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment$2;->this$0:Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/AccountVerificationActivity;

    .line 63
    .local v0, "activity":Lcom/airbnb/android/activities/AccountVerificationActivity;
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment$2;->this$0:Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment;

    # getter for: Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment;->mPhoneNumberId:J
    invoke-static {v1}, Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment;->access$000(Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment$2;->this$0:Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment;

    iget-object v3, v3, Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment;->mPhoneCodeInput:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/airbnb/android/activities/AccountVerificationActivity;->submitPhoneCode(JLjava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment$2;->this$0:Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment;->mPhoneCodeInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/analytics/SecurityCheckAnalytics;->trackSubmitCode(Ljava/lang/String;)V

    .line 65
    return-void
.end method
