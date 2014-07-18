.class public Lcom/airbnb/android/adapters/AirSpinnerAdapter;
.super Ljava/lang/Object;
.source "AirSpinnerAdapter.java"

# interfaces
.implements Landroid/widget/SpinnerAdapter;


# instance fields
.field private final mDropdownTitles:[Ljava/lang/String;

.field private final mSpinnerSubtitles:[Ljava/lang/String;

.field private final mSpinnerTitles:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6
    .param p1, "spinnerTitles"    # [Ljava/lang/String;
    .param p2, "spinnerSubtitles"    # [Ljava/lang/String;
    .param p3, "dropdownTitles"    # [Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/airbnb/android/adapters/AirSpinnerAdapter;->mSpinnerTitles:[Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/airbnb/android/adapters/AirSpinnerAdapter;->mSpinnerSubtitles:[Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/airbnb/android/adapters/AirSpinnerAdapter;->mDropdownTitles:[Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcom/airbnb/android/adapters/AirSpinnerAdapter;->mSpinnerTitles:[Ljava/lang/String;

    array-length v0, v0

    iget-object v1, p0, Lcom/airbnb/android/adapters/AirSpinnerAdapter;->mDropdownTitles:[Ljava/lang/String;

    array-length v1, v1

    if-eq v0, v1, :cond_1a

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "spinner and dropdown sizes dont match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_1a
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/airbnb/android/adapters/AirSpinnerAdapter;->mSpinnerTitles:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 96
    if-nez p2, :cond_12

    .line 97
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0301cf

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 99
    :cond_12
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 100
    .local v0, "tv":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/airbnb/android/adapters/AirSpinnerAdapter;->mDropdownTitles:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    return-object p2
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 46
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 56
    if-nez p2, :cond_12

    .line 57
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0301ad

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 60
    :cond_12
    const v1, 0x7f08045b

    invoke-static {p2, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/airbnb/android/adapters/AirSpinnerAdapter;->mSpinnerTitles:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v1, p0, Lcom/airbnb/android/adapters/AirSpinnerAdapter;->mSpinnerSubtitles:[Ljava/lang/String;

    if-eqz v1, :cond_39

    .line 63
    const v1, 0x7f08045c

    invoke-static {p2, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 64
    .local v0, "spinnerSubtitleText":Landroid/widget/TextView;
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    iget-object v1, p0, Lcom/airbnb/android/adapters/AirSpinnerAdapter;->mSpinnerSubtitles:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .end local v0    # "spinnerSubtitleText":Landroid/widget/TextView;
    :cond_39
    return-object p2
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 2
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 88
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 2
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 92
    return-void
.end method
