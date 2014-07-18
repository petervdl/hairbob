.class Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$3;
.super Ljava/lang/Object;
.source "CompleteProfilePhoneCodeChildFragment.java"

# interfaces
.implements Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment$PhoneAccountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->requestPhoneCodeIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;

.field final synthetic val$formattedPhoneNum:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 122
    iput-object p1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$3;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$3;->val$formattedPhoneNum:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneAccountUpdateError()V
    .registers 7

    .prologue
    .line 130
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$3;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 132
    invoke-static {}, Lcom/airbnb/android/fragments/ZenDialog;->Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e01ac

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e0199

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e00b0

    const/16 v2, 0x38c

    const v3, 0x7f0e06b3

    const/16 v4, 0x38d

    iget-object v5, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$3;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;

    invoke-virtual/range {v0 .. v5}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withDualButton(IIIILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$3;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "error_dialog_tag"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 136
    :cond_3a
    return-void
.end method

.method public onPhoneAccountUpdateSuccess()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 125
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$3;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$3;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;

    const v2, 0x7f0e019a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$3;->val$formattedPhoneNum:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 126
    return-void
.end method
