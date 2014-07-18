.class Lcom/airbnb/android/fragments/AddCreditCardFragment$15;
.super Ljava/lang/Object;
.source "AddCreditCardFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/AddCreditCardFragment;->setCountry()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/AddCreditCardFragment;)V
    .registers 2

    .prologue
    .line 365
    iput-object p1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$15;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 369
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$15;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 370
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$15;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$15;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # getter for: Lcom/airbnb/android/fragments/AddCreditCardFragment;->mPostalCodeInput:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$100(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/KeyboardUtils;->showSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 372
    :cond_17
    return-void
.end method
