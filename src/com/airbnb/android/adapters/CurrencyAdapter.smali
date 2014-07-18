.class public Lcom/airbnb/android/adapters/CurrencyAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CurrencyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/adapters/CurrencyAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/airbnb/android/models/Currency;",
        ">;"
    }
.end annotation


# instance fields
.field private mSelected:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/util/List;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I
    .param p5, "selected"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Currency;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p4, "currencies":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Currency;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 24
    iput p5, p0, Lcom/airbnb/android/adapters/CurrencyAdapter;->mSelected:I

    .line 25
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 29
    if-nez p2, :cond_40

    .line 30
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/CurrencyAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 31
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030136

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 33
    new-instance v1, Lcom/airbnb/android/adapters/CurrencyAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/airbnb/android/adapters/CurrencyAdapter$ViewHolder;-><init>(Lcom/airbnb/android/adapters/CurrencyAdapter;)V

    .line 35
    .local v1, "holder":Lcom/airbnb/android/adapters/CurrencyAdapter$ViewHolder;
    const v3, 0x7f080355

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/airbnb/android/adapters/CurrencyAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 36
    const v3, 0x7f080356

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/airbnb/android/adapters/CurrencyAdapter$ViewHolder;->symbol:Landroid/widget/TextView;

    .line 37
    const v3, 0x7f080348

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, v1, Lcom/airbnb/android/adapters/CurrencyAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    .line 38
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 41
    .end local v1    # "holder":Lcom/airbnb/android/adapters/CurrencyAdapter$ViewHolder;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_40
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/adapters/CurrencyAdapter$ViewHolder;

    .line 43
    .restart local v1    # "holder":Lcom/airbnb/android/adapters/CurrencyAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/CurrencyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Currency;

    .line 45
    .local v0, "currency":Lcom/airbnb/android/models/Currency;
    iget-object v3, v1, Lcom/airbnb/android/adapters/CurrencyAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v3, v1, Lcom/airbnb/android/adapters/CurrencyAdapter$ViewHolder;->symbol:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Currency;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v5, v1, Lcom/airbnb/android/adapters/CurrencyAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    iget v3, p0, Lcom/airbnb/android/adapters/CurrencyAdapter;->mSelected:I

    if-ne p1, v3, :cond_71

    const/4 v3, 0x1

    :goto_65
    invoke-virtual {v5, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 49
    new-instance v3, Lcom/airbnb/android/adapters/CurrencyAdapter$1;

    invoke-direct {v3, p0, v1}, Lcom/airbnb/android/adapters/CurrencyAdapter$1;-><init>(Lcom/airbnb/android/adapters/CurrencyAdapter;Lcom/airbnb/android/adapters/CurrencyAdapter$ViewHolder;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 59
    return-object p2

    :cond_71
    move v3, v4

    .line 47
    goto :goto_65
.end method
