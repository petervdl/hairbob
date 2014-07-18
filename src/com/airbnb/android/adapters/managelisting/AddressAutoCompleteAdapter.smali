.class public Lcom/airbnb/android/adapters/managelisting/AddressAutoCompleteAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "AddressAutoCompleteAdapter.java"


# instance fields
.field mHasSuggest:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .param p6, "flags"    # I

    .prologue
    .line 17
    invoke-direct/range {p0 .. p6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 18
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/managelisting/AddressAutoCompleteAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/airbnb/android/adapters/managelisting/AddressAutoCompleteAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_18

    .line 23
    :cond_11
    iput-boolean v0, p0, Lcom/airbnb/android/adapters/managelisting/AddressAutoCompleteAdapter;->mHasSuggest:Z

    .line 24
    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->getCount()I

    move-result v0

    .line 27
    :goto_17
    return v0

    .line 26
    :cond_18
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/airbnb/android/adapters/managelisting/AddressAutoCompleteAdapter;->mHasSuggest:Z

    goto :goto_17
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 33
    iget-boolean v1, p0, Lcom/airbnb/android/adapters/managelisting/AddressAutoCompleteAdapter;->mHasSuggest:Z

    if-eqz v1, :cond_9

    .line 34
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 39
    :goto_8
    return-object v1

    .line 36
    :cond_9
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 37
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f03004b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    move-object v1, p2

    .line 39
    goto :goto_8
.end method
