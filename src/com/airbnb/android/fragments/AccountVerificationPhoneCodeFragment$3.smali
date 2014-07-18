.class Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment$3;
.super Ljava/lang/Object;
.source "AccountVerificationPhoneCodeFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 68
    iput-object p1, p0, Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment$3;->this$0:Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment;

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
    .line 72
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2b

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-ne v1, v2, :cond_2b

    .line 73
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment$3;->this$0:Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/AccountVerificationActivity;

    .line 74
    .local v0, "activity":Lcom/airbnb/android/activities/AccountVerificationActivity;
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment$3;->this$0:Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment;

    # getter for: Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment;->mPhoneNumberId:J
    invoke-static {v1}, Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment;->access$000(Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment$3;->this$0:Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment;

    iget-object v3, v3, Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment;->mPhoneCodeInput:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/airbnb/android/activities/AccountVerificationActivity;->submitPhoneCode(JLjava/lang/String;)V

    .line 77
    .end local v0    # "activity":Lcom/airbnb/android/activities/AccountVerificationActivity;
    :cond_2b
    const/4 v1, 0x0

    return v1
.end method
