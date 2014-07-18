.class Lcom/airbnb/android/fragments/AddCreditCardFragment$13;
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
    .line 260
    iput-object p1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$13;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 264
    if-nez p2, :cond_43

    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$13;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # getter for: Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCCVInput:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$400(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$13;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$13;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # getter for: Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCCVInput:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$400(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/airbnb/android/fragments/AddCreditCardFragment;->isCCVCorrectLength(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$1200(Lcom/airbnb/android/fragments/AddCreditCardFragment;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 265
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$13;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # getter for: Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCCVInput:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$400(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$13;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 273
    :goto_42
    return-void

    .line 266
    :cond_43
    if-eqz p2, :cond_60

    .line 267
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/airbnb/android/analytics/BookItAnalytics;->trackAddPaymentCCVClick(Lcom/airbnb/android/utils/Strap;)V

    .line 268
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$13;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # getter for: Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCCVTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$1300(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$13;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_42

    .line 270
    :cond_60
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$13;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # getter for: Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCCVInput:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$400(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$13;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_42
.end method
