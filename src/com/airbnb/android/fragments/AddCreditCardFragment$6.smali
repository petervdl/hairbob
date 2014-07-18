.class Lcom/airbnb/android/fragments/AddCreditCardFragment$6;
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
    .line 169
    iput-object p1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$6;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 173
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$6;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # getter for: Lcom/airbnb/android/fragments/AddCreditCardFragment;->mPostalCodeInput:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$100(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "text":Ljava/lang/String;
    if-nez p2, :cond_1c

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 175
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$6;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # invokes: Lcom/airbnb/android/fragments/AddCreditCardFragment;->geocodePostal(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$500(Lcom/airbnb/android/fragments/AddCreditCardFragment;Ljava/lang/String;)V

    .line 181
    :cond_1b
    :goto_1b
    return-void

    .line 176
    :cond_1c
    if-eqz p2, :cond_1b

    .line 177
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/airbnb/android/analytics/BookItAnalytics;->trackAddPaymentPostalCodeClick(Lcom/airbnb/android/utils/Strap;)V

    .line 178
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$6;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # getter for: Lcom/airbnb/android/fragments/AddCreditCardFragment;->mZipCodeTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$600(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$6;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1b
.end method
