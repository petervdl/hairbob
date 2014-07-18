.class Lcom/airbnb/android/fragments/AddCreditCardFragment$10;
.super Ljava/lang/Object;
.source "AddCreditCardFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/AddCreditCardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 222
    iput-object p1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$10;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 226
    if-nez p2, :cond_3e

    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$10;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # getter for: Lcom/airbnb/android/fragments/AddCreditCardFragment;->mExpiryMonthInput:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$300(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$10;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # getter for: Lcom/airbnb/android/fragments/AddCreditCardFragment;->mExpiryMonthInput:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$300(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3e

    .line 227
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$10;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # getter for: Lcom/airbnb/android/fragments/AddCreditCardFragment;->mExpiryMonthInput:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$300(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$10;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 233
    :goto_3d
    return-void

    .line 229
    :cond_3e
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "DATE_TYPE"

    const-string/jumbo v2, "MONTH"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/analytics/BookItAnalytics;->trackAddPaymentExpiryDateClick(Lcom/airbnb/android/utils/Strap;)V

    .line 230
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$10;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # getter for: Lcom/airbnb/android/fragments/AddCreditCardFragment;->mExpiryMonthInput:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$300(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$10;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_3d
.end method
