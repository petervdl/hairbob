.class public Lcom/airbnb/android/adapters/TripInvoiceItemsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TripInvoiceItemsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/airbnb/android/models/TripInvoiceItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mLayoutResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/TripInvoiceItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p3, "mTripInvoiceItemsList":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/TripInvoiceItem;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 24
    iput p2, p0, Lcom/airbnb/android/adapters/TripInvoiceItemsAdapter;->mLayoutResourceId:I

    .line 25
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 29
    if-nez p2, :cond_11

    .line 30
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iget v7, p0, Lcom/airbnb/android/adapters/TripInvoiceItemsAdapter;->mLayoutResourceId:I

    invoke-virtual {v5, v7, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 33
    :cond_11
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/TripInvoiceItemsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/models/TripInvoiceItem;

    .line 34
    .local v4, "tripInvoiceItem":Lcom/airbnb/android/models/TripInvoiceItem;
    const v5, 0x7f0803ae

    invoke-static {p2, v5}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/airbnb/android/models/TripInvoiceItem;->getTripProduct()Lcom/airbnb/android/models/TripProduct;

    move-result-object v7

    invoke-virtual {v7}, Lcom/airbnb/android/models/TripProduct;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    const v5, 0x7f0800e3

    invoke-static {p2, v5}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 38
    .local v3, "priceTextView":Landroid/widget/TextView;
    invoke-virtual {v4}, Lcom/airbnb/android/models/TripInvoiceItem;->getConsumerTotalAmountNative()F

    move-result v5

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    .line 39
    .local v1, "priceDouble":D
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v1, v2, v7}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "price":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/airbnb/android/models/TripInvoiceItem;->isCredit()Z

    move-result v5

    if-eqz v5, :cond_76

    .line 41
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0a0019

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    :cond_76
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    const v5, 0x7f0803af

    invoke-static {p2, v5}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v4}, Lcom/airbnb/android/models/TripInvoiceItem;->getCurrentDisputeStatus()Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;

    move-result-object v5

    sget-object v8, Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;->DISPUTED:Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;

    if-ne v5, v8, :cond_8d

    move v5, v6

    :goto_89
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 48
    return-object p2

    .line 46
    :cond_8d
    const/16 v5, 0x8

    goto :goto_89
.end method
