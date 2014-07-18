.class Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment$1;
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
    .line 51
    iput-object p1, p0, Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment$1;->this$0:Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 54
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment$1;->this$0:Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/AccountVerificationActivity;

    .line 55
    .local v0, "activity":Lcom/airbnb/android/activities/AccountVerificationActivity;
    invoke-virtual {v0}, Lcom/airbnb/android/activities/AccountVerificationActivity;->onBackPressed()V

    .line 56
    return-void
.end method
