.class public Lcom/airbnb/android/adapters/SearchHistoryAdapter;
.super Landroid/support/v4/widget/SimpleCursorAdapter;
.source "SearchHistoryAdapter.java"


# static fields
.field private static sDateFormat:Ljava/text/DateFormat;

.field private static sRangeSeparator:Ljava/lang/String;

.field private static sSeparator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .param p6, "flags"    # I

    .prologue
    .line 27
    invoke-direct/range {p0 .. p6}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 28
    const v0, 0x7f0e06b8

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/adapters/SearchHistoryAdapter;->sSeparator:Ljava/lang/String;

    .line 29
    const v0, 0x7f0e06b7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/adapters/SearchHistoryAdapter;->sRangeSeparator:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/text/SimpleDateFormat;

    const v1, 0x7f0e013d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/adapters/SearchHistoryAdapter;->sDateFormat:Ljava/text/DateFormat;

    .line 31
    return-void
.end method

.method private showSearchDetailsIfNeeded(Landroid/view/View;ILjava/lang/StringBuilder;)V
    .registers 9
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "detailsViewId"    # I
    .param p3, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 98
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 99
    .local v0, "detailsLine1":Landroid/widget/TextView;
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1e

    move v1, v2

    .line 100
    .local v1, "hasDetails":Z
    :goto_f
    if-eqz v1, :cond_18

    .line 101
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :cond_18
    if-nez v1, :cond_20

    :goto_1a
    invoke-static {v0, v2}, Lcom/airbnb/android/utils/MiscUtils;->setGoneIf(Landroid/view/View;Z)V

    .line 104
    return-void

    .end local v1    # "hasDetails":Z
    :cond_1e
    move v1, v3

    .line 99
    goto :goto_f

    .restart local v1    # "hasDetails":Z
    :cond_20
    move v2, v3

    .line 103
    goto :goto_1a
.end method


# virtual methods
.method protected appendSeparatorIfNeeded(Ljava/lang/StringBuilder;)V
    .registers 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 107
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_c

    sget-object v0, Lcom/airbnb/android/adapters/SearchHistoryAdapter;->sSeparator:Ljava/lang/String;

    :goto_8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    return-void

    .line 107
    :cond_c
    const-string/jumbo v0, ""

    goto :goto_8
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 112
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 26
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 35
    invoke-super/range {p0 .. p3}, Landroid/support/v4/widget/SimpleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 36
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 38
    .local v16, "res":Landroid/content/res/Resources;
    const v18, 0x7f0200d0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/adapters/SearchHistoryAdapter;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/adapters/SearchHistoryAdapter;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const-string/jumbo v20, "checkin_date"

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 42
    .local v4, "checkin":J
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .local v17, "sb":Ljava/lang/StringBuilder;
    const-wide/16 v18, 0x0

    cmp-long v18, v4, v18

    if-lez v18, :cond_48

    .line 44
    sget-object v18, Lcom/airbnb/android/adapters/SearchHistoryAdapter;->sDateFormat:Ljava/text/DateFormat;

    new-instance v19, Ljava/util/Date;

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v18 .. v19}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/adapters/SearchHistoryAdapter;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/adapters/SearchHistoryAdapter;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const-string/jumbo v20, "checkout_date"

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 47
    .local v6, "checkout":J
    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-lez v18, :cond_7b

    .line 48
    sget-object v18, Lcom/airbnb/android/adapters/SearchHistoryAdapter;->sRangeSeparator:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/airbnb/android/adapters/SearchHistoryAdapter;->sDateFormat:Ljava/text/DateFormat;

    new-instance v20, Ljava/util/Date;

    move-object/from16 v0, v20

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v19 .. v20}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    :cond_7b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/adapters/SearchHistoryAdapter;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/adapters/SearchHistoryAdapter;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const-string/jumbo v20, "num_guests"

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 51
    .local v15, "numGuests":I
    if-lez v15, :cond_bb

    .line 52
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/SearchHistoryAdapter;->appendSeparatorIfNeeded(Ljava/lang/StringBuilder;)V

    .line 53
    const v18, 0x7f0d002d

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v16

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v15, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    :cond_bb
    const v18, 0x7f0803a4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/adapters/SearchHistoryAdapter;->showSearchDetailsIfNeeded(Landroid/view/View;ILjava/lang/StringBuilder;)V

    .line 58
    new-instance v17, Ljava/lang/StringBuilder;

    .end local v17    # "sb":Ljava/lang/StringBuilder;
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .restart local v17    # "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/adapters/SearchHistoryAdapter;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/adapters/SearchHistoryAdapter;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const-string/jumbo v20, "min_price"

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 60
    .local v13, "minPrice":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/adapters/SearchHistoryAdapter;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/adapters/SearchHistoryAdapter;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const-string/jumbo v20, "max_price"

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 61
    .local v12, "maxPrice":I
    if-gtz v13, :cond_100

    if-lez v12, :cond_12e

    .line 62
    :cond_100
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v8

    .line 63
    .local v8, "currency":Lcom/airbnb/android/utils/CurrencyHelper;
    int-to-double v0, v13

    move-wide/from16 v18, v0

    const/16 v20, 0x1

    move-wide/from16 v0, v18

    move/from16 v2, v20

    invoke-virtual {v8, v0, v1, v2}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    sget-object v18, Lcom/airbnb/android/adapters/SearchHistoryAdapter;->sRangeSeparator:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    int-to-double v0, v12

    move-wide/from16 v19, v0

    const/16 v21, 0x1

    move-wide/from16 v0, v19

    move/from16 v2, v21

    invoke-virtual {v8, v0, v1, v2}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .end local v8    # "currency":Lcom/airbnb/android/utils/CurrencyHelper;
    :cond_12e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/adapters/SearchHistoryAdapter;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/adapters/SearchHistoryAdapter;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const-string/jumbo v20, "private_room"

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    if-lez v18, :cond_1d5

    const/4 v10, 0x1

    .line 68
    .local v10, "includePrivateRoom":Z
    :goto_148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/adapters/SearchHistoryAdapter;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/adapters/SearchHistoryAdapter;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const-string/jumbo v20, "shared_room"

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    if-lez v18, :cond_1d8

    const/4 v11, 0x1

    .line 69
    .local v11, "includeSharedRoom":Z
    :goto_162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/adapters/SearchHistoryAdapter;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/adapters/SearchHistoryAdapter;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const-string/jumbo v20, "entire_place"

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    if-lez v18, :cond_1da

    const/4 v9, 0x1

    .line 71
    .local v9, "includeEntirePlace":Z
    :goto_17c
    if-eqz v10, :cond_1dc

    if-eqz v11, :cond_1dc

    if-eqz v9, :cond_1dc

    .line 88
    :cond_182
    :goto_182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/adapters/SearchHistoryAdapter;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/adapters/SearchHistoryAdapter;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const-string/jumbo v20, "num_beds"

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 89
    .local v14, "numBeds":I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v14, v0, :cond_1c6

    .line 90
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/SearchHistoryAdapter;->appendSeparatorIfNeeded(Ljava/lang/StringBuilder;)V

    .line 91
    const v18, 0x7f0d0004

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v16

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v14, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :cond_1c6
    const v18, 0x7f0803a5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/adapters/SearchHistoryAdapter;->showSearchDetailsIfNeeded(Landroid/view/View;ILjava/lang/StringBuilder;)V

    .line 94
    return-object p2

    .line 67
    .end local v9    # "includeEntirePlace":Z
    .end local v10    # "includePrivateRoom":Z
    .end local v11    # "includeSharedRoom":Z
    .end local v14    # "numBeds":I
    :cond_1d5
    const/4 v10, 0x0

    goto/16 :goto_148

    .line 68
    .restart local v10    # "includePrivateRoom":Z
    :cond_1d8
    const/4 v11, 0x0

    goto :goto_162

    .line 69
    .restart local v11    # "includeSharedRoom":Z
    :cond_1da
    const/4 v9, 0x0

    goto :goto_17c

    .line 74
    .restart local v9    # "includeEntirePlace":Z
    :cond_1dc
    if-eqz v10, :cond_1f3

    .line 75
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/SearchHistoryAdapter;->appendSeparatorIfNeeded(Ljava/lang/StringBuilder;)V

    .line 76
    const v18, 0x7f0e05d9

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_1f3
    if-eqz v11, :cond_20a

    .line 79
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/SearchHistoryAdapter;->appendSeparatorIfNeeded(Ljava/lang/StringBuilder;)V

    .line 80
    const v18, 0x7f0e0702

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :cond_20a
    if-eqz v9, :cond_182

    .line 83
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/SearchHistoryAdapter;->appendSeparatorIfNeeded(Ljava/lang/StringBuilder;)V

    .line 84
    const v18, 0x7f0e01ab

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_182
.end method
