.class public Lcom/airbnb/android/adapters/PaymentCardsAdapter;
.super Landroid/widget/BaseAdapter;
.source "PaymentCardsAdapter.java"


# instance fields
.field private mPaymentInstruments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/PaymentInstrument;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/PaymentInstrument;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "paymentInstruments":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/PaymentInstrument;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/airbnb/android/adapters/PaymentCardsAdapter;->mPaymentInstruments:Ljava/util/List;

    .line 23
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/airbnb/android/adapters/PaymentCardsAdapter;->mPaymentInstruments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/airbnb/android/models/PaymentInstrument;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 32
    iget-object v0, p0, Lcom/airbnb/android/adapters/PaymentCardsAdapter;->mPaymentInstruments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/PaymentInstrument;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/PaymentCardsAdapter;->getItem(I)Lcom/airbnb/android/models/PaymentInstrument;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 37
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 43
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03014d

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 45
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/PaymentCardsAdapter;->getItem(I)Lcom/airbnb/android/models/PaymentInstrument;

    move-result-object v0

    .line 47
    .local v0, "paymentInstrument":Lcom/airbnb/android/models/PaymentInstrument;
    const v3, 0x7f08037f

    invoke-static {v2, v3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/airbnb/android/models/PaymentInstrument;->getCardType()Lcom/airbnb/android/models/PaymentInstrument$CardType;

    move-result-object v4

    iget v4, v4, Lcom/airbnb/android/models/PaymentInstrument$CardType;->mName:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 48
    const v3, 0x7f080381

    invoke-static {v2, v3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/airbnb/android/models/PaymentInstrument;->getCardType()Lcom/airbnb/android/models/PaymentInstrument$CardType;

    move-result-object v4

    sget-object v6, Lcom/airbnb/android/models/PaymentInstrument$CardType;->GoogleWallet:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    if-eq v4, v6, :cond_68

    invoke-virtual {v0}, Lcom/airbnb/android/models/PaymentInstrument;->getLastFourDigits()Ljava/lang/String;

    move-result-object v4

    :goto_3c
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    const v3, 0x7f080380

    invoke-static {v2, v3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/airbnb/android/models/PaymentInstrument;->getCardType()Lcom/airbnb/android/models/PaymentInstrument$CardType;

    move-result-object v4

    iget v4, v4, Lcom/airbnb/android/models/PaymentInstrument$CardType;->mIcon:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    if-nez p1, :cond_6c

    iget-object v3, p0, Lcom/airbnb/android/adapters/PaymentCardsAdapter;->mPaymentInstruments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_6c

    .line 53
    .local v1, "showIndicator":Z
    :goto_5b
    const v3, 0x7f08037e

    invoke-static {v2, v3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v1, :cond_6e

    :goto_64
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 55
    return-object v2

    .line 48
    .end local v1    # "showIndicator":Z
    :cond_68
    const-string/jumbo v4, ""

    goto :goto_3c

    :cond_6c
    move v1, v5

    .line 52
    goto :goto_5b

    .line 53
    .restart local v1    # "showIndicator":Z
    :cond_6e
    const/4 v5, 0x4

    goto :goto_64
.end method
