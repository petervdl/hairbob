.class Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter;
.super Landroid/widget/ArrayAdapter;
.source "EndpointSelectorDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EndpointAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$ViewHolder;,
        Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$RowType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mEndpoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/util/List;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p4, "endpoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 79
    const/4 v2, -0x1

    iput v2, p0, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter;->mSelectedIndex:I

    .line 89
    iput-object p4, p0, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter;->mEndpoints:Ljava/util/List;

    .line 91
    invoke-static {p1}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->getEndpointUrl()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "currentEndpoint":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    iget-object v2, p0, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter;->mEndpoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 93
    iget-object v2, p0, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter;->mEndpoints:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 94
    iput v1, p0, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter;->mSelectedIndex:I

    .line 98
    :cond_27
    return-void

    .line 92
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter;->mEndpoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter;->mEndpoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_f

    .line 114
    sget-object v0, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$RowType;->Custom:Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$RowType;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$RowType;->ordinal()I

    move-result v0

    .line 116
    :goto_e
    return v0

    :cond_f
    sget-object v0, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$RowType;->Endpoint:Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$RowType;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$RowType;->ordinal()I

    move-result v0

    goto :goto_e
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 122
    if-nez p2, :cond_2a

    .line 123
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 124
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x109000f

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 126
    new-instance v0, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$ViewHolder;-><init>(Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter;)V

    .line 128
    .local v0, "holder":Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$ViewHolder;
    const v3, 0x1020014

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    iput-object v3, v0, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$ViewHolder;->name:Landroid/widget/CheckedTextView;

    .line 129
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 132
    .end local v0    # "holder":Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$ViewHolder;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_2a
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$ViewHolder;

    .line 133
    .restart local v0    # "holder":Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$ViewHolder;
    const-string/jumbo v2, ""

    .line 134
    .local v2, "text":Ljava/lang/String;
    sget-object v3, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$2;->$SwitchMap$com$airbnb$android$fragments$EndpointSelectorDialogFragment$EndpointAdapter$RowType:[I

    invoke-static {}, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$RowType;->values()[Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$RowType;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter;->getItemViewType(I)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$RowType;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_72

    .line 142
    :goto_48
    iget-object v3, v0, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$ViewHolder;->name:Landroid/widget/CheckedTextView;

    invoke-virtual {v3, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v5, v0, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$ViewHolder;->name:Landroid/widget/CheckedTextView;

    iget v3, p0, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter;->mSelectedIndex:I

    if-ne p1, v3, :cond_6f

    const/4 v3, 0x1

    :goto_54
    invoke-virtual {v5, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 145
    return-object p2

    .line 136
    :pswitch_58
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 137
    goto :goto_48

    .line 139
    :pswitch_63
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0e0155

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_48

    :cond_6f
    move v3, v4

    .line 143
    goto :goto_54

    .line 134
    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_58
        :pswitch_63
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 108
    invoke-static {}, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$RowType;->values()[Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$RowType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
