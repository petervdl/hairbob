.class public Lcom/airbnb/android/adapters/TripInvoiceItemAttachmentAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TripInvoiceItemAttachmentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/airbnb/android/models/TripInvoiceItemAttachment;",
        ">;"
    }
.end annotation


# instance fields
.field private mLayoutResourceId:I

.field private mSimpleDateFormat:Ljava/text/SimpleDateFormat;

.field private mTripInvoiceItem:Lcom/airbnb/android/models/TripInvoiceItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/airbnb/android/models/TripInvoiceItem;Ljava/util/List;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "item"    # Lcom/airbnb/android/models/TripInvoiceItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/airbnb/android/models/TripInvoiceItem;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/TripInvoiceItemAttachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p4, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/TripInvoiceItemAttachment;>;"
    invoke-direct {p0, p1, p2, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 29
    iput-object p3, p0, Lcom/airbnb/android/adapters/TripInvoiceItemAttachmentAdapter;->mTripInvoiceItem:Lcom/airbnb/android/models/TripInvoiceItem;

    .line 30
    iput p2, p0, Lcom/airbnb/android/adapters/TripInvoiceItemAttachmentAdapter;->mLayoutResourceId:I

    .line 31
    new-instance v0, Ljava/text/SimpleDateFormat;

    const v1, 0x7f0e0496

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/airbnb/android/adapters/TripInvoiceItemAttachmentAdapter;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 32
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 36
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 41
    if-nez p2, :cond_13

    .line 42
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/TripInvoiceItemAttachmentAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    iget v9, p0, Lcom/airbnb/android/adapters/TripInvoiceItemAttachmentAdapter;->mLayoutResourceId:I

    invoke-virtual {v8, v9, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 46
    :cond_13
    const v8, 0x7f0803b0

    invoke-static {p2, v8}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 47
    .local v5, "providerTextView":Landroid/widget/TextView;
    const v8, 0x7f0802d8

    invoke-static {p2, v8}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 48
    .local v3, "descriptionTextView":Landroid/widget/TextView;
    const v8, 0x7f0803b1

    invoke-static {p2, v8}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 50
    .local v2, "dateTextView":Landroid/widget/TextView;
    if-nez p1, :cond_81

    .line 51
    iget-object v8, p0, Lcom/airbnb/android/adapters/TripInvoiceItemAttachmentAdapter;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v9, p0, Lcom/airbnb/android/adapters/TripInvoiceItemAttachmentAdapter;->mTripInvoiceItem:Lcom/airbnb/android/models/TripInvoiceItem;

    invoke-virtual {v9}, Lcom/airbnb/android/models/TripInvoiceItem;->getCreatedAt()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "creationDate":Ljava/lang/String;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v8, p0, Lcom/airbnb/android/adapters/TripInvoiceItemAttachmentAdapter;->mTripInvoiceItem:Lcom/airbnb/android/models/TripInvoiceItem;

    invoke-virtual {v8}, Lcom/airbnb/android/models/TripInvoiceItem;->getTripProduct()Lcom/airbnb/android/models/TripProduct;

    move-result-object v8

    invoke-virtual {v8}, Lcom/airbnb/android/models/TripProduct;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/TripInvoiceItemAttachmentAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0e05f2

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/airbnb/android/adapters/TripInvoiceItemAttachmentAdapter;->mTripInvoiceItem:Lcom/airbnb/android/models/TripInvoiceItem;

    invoke-virtual {v11}, Lcom/airbnb/android/models/TripInvoiceItem;->getTripProduct()Lcom/airbnb/android/models/TripProduct;

    move-result-object v11

    invoke-virtual {v11}, Lcom/airbnb/android/models/TripProduct;->getTripProvider()Lcom/airbnb/android/models/TripProvider;

    move-result-object v11

    invoke-virtual {v11}, Lcom/airbnb/android/models/TripProvider;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "providerText":Ljava/lang/String;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    .end local v1    # "creationDate":Ljava/lang/String;
    .end local v4    # "providerText":Ljava/lang/String;
    :goto_73
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_97

    :goto_7d
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    return-object p2

    .line 62
    :cond_81
    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v8}, Lcom/airbnb/android/adapters/TripInvoiceItemAttachmentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/TripInvoiceItemAttachment;

    .line 64
    .local v0, "attachment":Lcom/airbnb/android/models/TripInvoiceItemAttachment;
    invoke-virtual {v0}, Lcom/airbnb/android/models/TripInvoiceItemAttachment;->getContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_73

    .end local v0    # "attachment":Lcom/airbnb/android/models/TripInvoiceItemAttachment;
    :cond_97
    move v6, v7

    .line 70
    goto :goto_7d
.end method
