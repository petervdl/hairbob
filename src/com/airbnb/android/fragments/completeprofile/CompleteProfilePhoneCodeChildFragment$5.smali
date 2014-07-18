.class Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$5;
.super Ljava/lang/Object;
.source "CompleteProfilePhoneCodeChildFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 172
    iput-object p1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$5;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 176
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_23

    .line 177
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$5;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$5;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;

    # getter for: Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->mCodeEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->access$100(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->sendPhoneVerificationCode(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->access$200(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;Ljava/lang/String;)V

    .line 182
    :cond_21
    :goto_21
    const/4 v0, 0x0

    return v0

    .line 178
    :cond_23
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_21

    .line 179
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$5;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;

    # invokes: Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->getParent()Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;
    invoke-static {v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->access$000(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;)Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;->displayPhoneNumberEntry()V

    goto :goto_21
.end method
