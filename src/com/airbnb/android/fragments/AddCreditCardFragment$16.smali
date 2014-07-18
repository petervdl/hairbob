.class Lcom/airbnb/android/fragments/AddCreditCardFragment$16;
.super Ljava/lang/Object;
.source "AddCreditCardFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/AddCreditCardFragment;->geocodePostal(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/android/requests/RequestListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

.field final synthetic val$postal:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/AddCreditCardFragment;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 381
    iput-object p1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$16;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$16;->val$postal:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$16;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # getter for: Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCityStateTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$1500(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 381
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/AddCreditCardFragment$16;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .registers 9
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 385
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$16;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 386
    invoke-static {p1}, Lcom/airbnb/android/utils/GeocoderHelper;->parseResponse(Ljava/lang/String;)Landroid/location/Address;

    move-result-object v0

    .line 387
    .local v0, "address":Landroid/location/Address;
    if-eqz v0, :cond_5d

    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$16;->val$postal:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5d

    invoke-virtual {v0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 389
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$16;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    iget-object v2, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$16;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    const v3, 0x7f0e03de

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCityStateText:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$1402(Lcom/airbnb/android/fragments/AddCreditCardFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 390
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$16;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # getter for: Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCityStateTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$1500(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$16;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # getter for: Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCityStateText:Ljava/lang/String;
    invoke-static {v2}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$1400(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    .end local v0    # "address":Landroid/location/Address;
    :cond_5c
    :goto_5c
    return-void

    .line 392
    .restart local v0    # "address":Landroid/location/Address;
    :cond_5d
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$16;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # getter for: Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCityStateTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$1500(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5c
.end method
