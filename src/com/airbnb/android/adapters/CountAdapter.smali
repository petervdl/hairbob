.class public Lcom/airbnb/android/adapters/CountAdapter;
.super Ljava/lang/Object;
.source "CountAdapter.java"

# interfaces
.implements Landroid/widget/SpinnerAdapter;


# instance fields
.field context:Landroid/content/Context;

.field dropdownResource:I

.field hasAnyState:Z

.field items:[Ljava/lang/String;

.field spinnerResource:I

.field textId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;III[Ljava/lang/String;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spinnerResource"    # I
    .param p3, "dropdownResource"    # I
    .param p4, "textId"    # I
    .param p5, "items"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/airbnb/android/adapters/CountAdapter;->items:[Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/airbnb/android/adapters/CountAdapter;->context:Landroid/content/Context;

    .line 23
    iput p2, p0, Lcom/airbnb/android/adapters/CountAdapter;->spinnerResource:I

    .line 24
    iput p3, p0, Lcom/airbnb/android/adapters/CountAdapter;->dropdownResource:I

    .line 25
    iput p4, p0, Lcom/airbnb/android/adapters/CountAdapter;->textId:I

    .line 26
    iput-object p5, p0, Lcom/airbnb/android/adapters/CountAdapter;->items:[Ljava/lang/String;

    .line 30
    const v0, 0x7f0e0081

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aget-object v1, p5, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/android/adapters/CountAdapter;->hasAnyState:Z

    .line 31
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/airbnb/android/adapters/CountAdapter;->items:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 88
    iget-object v1, p0, Lcom/airbnb/android/adapters/CountAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcom/airbnb/android/adapters/CountAdapter;->dropdownResource:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 89
    iget v1, p0, Lcom/airbnb/android/adapters/CountAdapter;->textId:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 90
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/CountAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-object p2
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/airbnb/android/adapters/CountAdapter;->items:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 45
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 55
    iget-object v2, p0, Lcom/airbnb/android/adapters/CountAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget v3, p0, Lcom/airbnb/android/adapters/CountAdapter;->spinnerResource:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 56
    iget v2, p0, Lcom/airbnb/android/adapters/CountAdapter;->textId:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 58
    .local v1, "textView":Landroid/widget/TextView;
    iget-boolean v2, p0, Lcom/airbnb/android/adapters/CountAdapter;->hasAnyState:Z

    if-eqz v2, :cond_2d

    move v0, p1

    .line 59
    .local v0, "index":I
    :goto_1a
    iget-boolean v2, p0, Lcom/airbnb/android/adapters/CountAdapter;->hasAnyState:Z

    if-eqz v2, :cond_30

    if-nez p1, :cond_30

    iget-object v2, p0, Lcom/airbnb/android/adapters/CountAdapter;->context:Landroid/content/Context;

    const v3, 0x7f0e0081

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_29
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-object p2

    .line 58
    .end local v0    # "index":I
    :cond_2d
    add-int/lit8 v0, p1, 0x1

    goto :goto_1a

    .line 59
    .restart local v0    # "index":I
    :cond_30
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_29
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 2
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 80
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 2
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 84
    return-void
.end method
