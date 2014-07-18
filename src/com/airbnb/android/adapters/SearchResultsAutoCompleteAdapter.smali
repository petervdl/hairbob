.class public Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "SearchResultsAutoCompleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$1;,
        Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$RowType;
    }
.end annotation


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
    .line 24
    invoke-direct/range {p0 .. p6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 25
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 58
    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_d

    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 84
    add-int/lit8 v0, p1, -0x1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_f

    .line 69
    sget-object v0, Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$RowType;->PoweredByGoogle:Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$RowType;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$RowType;->ordinal()I

    move-result v0

    .line 71
    :goto_e
    return v0

    :cond_f
    sget-object v0, Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$RowType;->SearchItem:Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$RowType;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$RowType;->ordinal()I

    move-result v0

    goto :goto_e
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, 0x0

    .line 29
    invoke-static {}, Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$RowType;->values()[Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$RowType;

    move-result-object v8

    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter;->getItemViewType(I)I

    move-result v9

    aget-object v7, v8, v9

    .line 30
    .local v7, "type":Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$RowType;
    sget-object v8, Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$1;->$SwitchMap$com$airbnb$android$adapters$SearchResultsAutoCompleteAdapter$RowType:[I

    invoke-virtual {v7}, Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$RowType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_6c

    move-object v8, p2

    .line 53
    :goto_17
    return-object v8

    .line 32
    :pswitch_18
    if-nez p2, :cond_65

    .line 33
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 34
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v6, "[GOOGLE]"

    .line 35
    .local v6, "token":Ljava/lang/String;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030161

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 36
    const v8, 0x7f0803a6

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 37
    .local v5, "textView":Landroid/widget/TextView;
    const v8, 0x7f0e05c1

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v6, v9, v10

    invoke-virtual {v0, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "poweredByGoogleText":Ljava/lang/String;
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 39
    .local v3, "spannable":Landroid/text/Spannable;
    new-instance v1, Landroid/text/style/ImageSpan;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0200ca

    invoke-direct {v1, v8, v9, v10}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    .line 40
    .local v1, "imageSpan":Landroid/text/style/ImageSpan;
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 41
    .local v4, "startIndex":I
    if-ltz v4, :cond_62

    .line 42
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v4

    const/16 v9, 0x11

    invoke-interface {v3, v1, v4, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 44
    :cond_62
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "imageSpan":Landroid/text/style/ImageSpan;
    .end local v2    # "poweredByGoogleText":Ljava/lang/String;
    .end local v3    # "spannable":Landroid/text/Spannable;
    .end local v4    # "startIndex":I
    .end local v5    # "textView":Landroid/widget/TextView;
    .end local v6    # "token":Ljava/lang/String;
    :cond_65
    move-object v8, p2

    .line 46
    goto :goto_17

    .line 48
    :pswitch_67
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    goto :goto_17

    .line 30
    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_18
        :pswitch_67
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 63
    invoke-static {}, Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$RowType;->values()[Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$RowType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public isEnabled(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_a

    .line 77
    const/4 v0, 0x0

    .line 79
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_9
.end method
