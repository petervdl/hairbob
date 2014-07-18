.class public Lcom/airbnb/android/adapters/ContactsAdapter;
.super Landroid/widget/SimpleCursorTreeAdapter;
.source "ContactsAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMaxCount:I

.field private mSelectedContacts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/airbnb/android/models/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private mShowSMS:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IILandroid/database/Cursor;[Ljava/lang/String;[Ljava/lang/String;[I[IILjava/util/HashMap;)V
    .registers 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "layout2"    # I
    .param p4, "c"    # Landroid/database/Cursor;
    .param p5, "groupFrom"    # [Ljava/lang/String;
    .param p6, "childFrom"    # [Ljava/lang/String;
    .param p7, "to"    # [I
    .param p8, "childTo"    # [I
    .param p9, "maxCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Landroid/database/Cursor;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[I[II",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/airbnb/android/models/Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p10, "selectedContacts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/airbnb/android/models/Contact;>;"
    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move v4, p2

    move v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    move v8, p3

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Landroid/widget/SimpleCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;II[Ljava/lang/String;[II[Ljava/lang/String;[I)V

    .line 36
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/airbnb/android/adapters/ContactsAdapter;->mSelectedContacts:Ljava/util/HashMap;

    .line 37
    iput-object p1, p0, Lcom/airbnb/android/adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    .line 38
    move/from16 v0, p9

    iput v0, p0, Lcom/airbnb/android/adapters/ContactsAdapter;->mMaxCount:I

    .line 39
    const-string/jumbo v1, "referrals"

    const-string/jumbo v2, "sms_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/utils/Trebuchet;->launch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/airbnb/android/adapters/ContactsAdapter;->mShowSMS:Z

    .line 40
    return-void
.end method

.method private getContactIdFromPosition(I)J
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/ContactsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 44
    .local v0, "contactCursor":Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 45
    const-string/jumbo v3, "_ID"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 46
    .local v1, "contactId":J
    return-wide v1
.end method


# virtual methods
.method protected bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "isLastChild"    # Z

    .prologue
    .line 183
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SimpleCursorTreeAdapter;->bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 185
    const v0, 0x7f08009a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string/jumbo v0, "_id"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-gez v0, :cond_1c

    const/4 v0, 0x1

    :goto_18
    invoke-static {v1, v0}, Lcom/airbnb/android/utils/MiscUtils;->setGoneIf(Landroid/view/View;Z)V

    .line 186
    return-void

    .line 185
    :cond_1c
    const/4 v0, 0x0

    goto :goto_18
.end method

.method protected bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "isExpanded"    # Z

    .prologue
    .line 51
    const-string/jumbo v1, "_ID"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 52
    .local v0, "contactId":Ljava/lang/Long;
    const v1, 0x7f08009e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 54
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SimpleCursorTreeAdapter;->bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 55
    return-void
.end method

.method public getChild(II)Landroid/database/Cursor;
    .registers 4
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 216
    invoke-super {p0, p1, p2}, Landroid/widget/SimpleCursorTreeAdapter;->getChild(II)Landroid/database/Cursor;

    move-result-object v0

    .line 217
    .local v0, "child":Landroid/database/Cursor;
    return-object v0
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/adapters/ContactsAdapter;->getChild(II)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 192
    invoke-super/range {p0 .. p5}, Landroid/widget/SimpleCursorTreeAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 194
    .local v3, "v":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/airbnb/android/adapters/ContactsAdapter;->getContactIdFromPosition(I)J

    move-result-wide v0

    .line 195
    .local v0, "contactId":J
    const v4, 0x7f08009a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 198
    .local v2, "selectedCheckbox":Landroid/widget/CheckBox;
    iget-object v4, p0, Lcom/airbnb/android/adapters/ContactsAdapter;->mSelectedContacts:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 199
    iget-object v4, p0, Lcom/airbnb/android/adapters/ContactsAdapter;->mSelectedContacts:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/models/Contact;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/airbnb/android/models/Contact;->containsContactInfo(Ljava/lang/Integer;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 200
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 209
    :goto_38
    const v4, 0x7f08009c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz p3, :cond_4e

    move v4, v5

    :goto_42
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 211
    return-object v3

    .line 202
    :cond_46
    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_38

    .line 205
    :cond_4a
    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_38

    .line 209
    :cond_4e
    const/16 v4, 0x8

    goto :goto_42
.end method

.method public getChildrenCount(I)I
    .registers 3
    .param p1, "groupPosition"    # I

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorTreeAdapter;->getChildrenCount(I)I

    move-result v0

    .line 178
    .local v0, "childCount":I
    return v0
.end method

.method protected getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 14
    .param p1, "groupCursor"    # Landroid/database/Cursor;

    .prologue
    .line 156
    const-string/jumbo v1, "_ID"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 157
    .local v6, "contactId":J
    iget-object v1, p0, Lcom/airbnb/android/adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 158
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v10, "contact_id"

    .line 159
    .local v10, "selectDataId":Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "data1"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "mimetype"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " = ? AND ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v3, p0, Lcom/airbnb/android/adapters/ContactsAdapter;->mShowSMS:Z

    if-eqz v3, :cond_bb

    const-string/jumbo v3, "mimetype=? OR "

    :goto_42
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mimetype"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "=?)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/airbnb/android/adapters/ContactsAdapter;->mShowSMS:Z

    if-eqz v4, :cond_bf

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v11, "vnd.android.cursor.item/email_v2"

    aput-object v11, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v11, "vnd.android.cursor.item/phone_v2"

    aput-object v11, v4, v5

    :goto_72
    const-string/jumbo v5, "data1 COLLATE LOCALIZED ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 165
    .local v9, "phoneCursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_ba

    .line 167
    new-instance v8, Landroid/database/MatrixCursor;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "_id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "data1"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "mimetype"

    aput-object v3, v1, v2

    invoke-direct {v8, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 169
    .local v8, "matrixCursor":Landroid/database/MatrixCursor;
    invoke-virtual {v8}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0616

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    const-string/jumbo v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 170
    move-object v9, v8

    .line 172
    .end local v8    # "matrixCursor":Landroid/database/MatrixCursor;
    :cond_ba
    return-object v9

    .line 159
    .end local v9    # "phoneCursor":Landroid/database/Cursor;
    :cond_bb
    const-string/jumbo v3, ""

    goto :goto_42

    :cond_bf
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v11, "vnd.android.cursor.item/email_v2"

    aput-object v11, v4, v5

    goto :goto_72
.end method

.method public getGroupCount()I
    .registers 3

    .prologue
    .line 107
    iget v0, p0, Lcom/airbnb/android/adapters/ContactsAdapter;->mMaxCount:I

    if-gez v0, :cond_9

    invoke-super {p0}, Landroid/widget/SimpleCursorTreeAdapter;->getGroupCount()I

    move-result v0

    :goto_8
    return v0

    :cond_9
    iget v0, p0, Lcom/airbnb/android/adapters/ContactsAdapter;->mMaxCount:I

    invoke-super {p0}, Landroid/widget/SimpleCursorTreeAdapter;->getGroupCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_8
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .param p1, "position"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v10, 0x7f0800a0

    const/16 v9, 0x8

    const/4 v7, 0x0

    .line 60
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SimpleCursorTreeAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 62
    .local v5, "v":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/airbnb/android/adapters/ContactsAdapter;->getContactIdFromPosition(I)J

    move-result-wide v1

    .line 63
    .local v1, "contactId":J
    const v6, 0x7f08009a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 65
    .local v4, "selectedCheckbox":Landroid/widget/CheckBox;
    iget-object v6, p0, Lcom/airbnb/android/adapters/ContactsAdapter;->mSelectedContacts:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_65

    .line 66
    const/4 v0, 0x0

    .line 69
    .local v0, "checkCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_25
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/ContactsAdapter;->getChildrenCount(I)I

    move-result v6

    if-ge v3, v6, :cond_46

    .line 70
    iget-object v6, p0, Lcom/airbnb/android/adapters/ContactsAdapter;->mSelectedContacts:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/android/models/Contact;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/airbnb/android/models/Contact;->containsContactInfo(Ljava/lang/Integer;)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 71
    add-int/lit8 v0, v0, 0x1

    .line 69
    :cond_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 74
    :cond_46
    if-lez v0, :cond_63

    const/4 v6, 0x1

    :goto_49
    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 80
    .end local v0    # "checkCount":I
    .end local v3    # "i":I
    :goto_4c
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/ContactsAdapter;->getGroupCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq p1, v6, :cond_56

    if-eqz p2, :cond_69

    .line 81
    :cond_56
    if-eqz p2, :cond_5b

    .line 82
    invoke-virtual {v4, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 84
    :cond_5b
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 90
    :goto_62
    return-object v5

    .restart local v0    # "checkCount":I
    .restart local v3    # "i":I
    :cond_63
    move v6, v7

    .line 74
    goto :goto_49

    .line 76
    .end local v0    # "checkCount":I
    .end local v3    # "i":I
    :cond_65
    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_4c

    .line 86
    :cond_69
    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 87
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_62
.end method

.method public rememberContact(JLjava/lang/Integer;Ljava/lang/Integer;)V
    .registers 14
    .param p1, "contactId"    # J
    .param p3, "groupPosition"    # Ljava/lang/Integer;
    .param p4, "childPosition"    # Ljava/lang/Integer;

    .prologue
    .line 112
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/airbnb/android/adapters/ContactsAdapter;->getGroup(I)Landroid/database/Cursor;

    move-result-object v2

    .line 113
    .local v2, "groupCursor":Landroid/database/Cursor;
    invoke-virtual {p0, v2}, Lcom/airbnb/android/adapters/ContactsAdapter;->getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v3

    .line 114
    .local v3, "phoneCursor":Landroid/database/Cursor;
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 116
    const-string/jumbo v6, "data1"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, "phoneNumberToSave":Ljava/lang/String;
    const-string/jumbo v6, "_id"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 118
    .local v4, "phoneNumberId":I
    if-gez v4, :cond_2c

    .line 133
    :goto_2b
    return-void

    .line 123
    :cond_2c
    iget-object v6, p0, Lcom/airbnb/android/adapters/ContactsAdapter;->mSelectedContacts:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Contact;

    .line 124
    .local v1, "currentContact":Lcom/airbnb/android/models/Contact;
    iget-object v6, p0, Lcom/airbnb/android/adapters/ContactsAdapter;->mSelectedContacts:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6c

    .line 125
    iget-object v6, p0, Lcom/airbnb/android/adapters/ContactsAdapter;->mSelectedContacts:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    new-instance v8, Lcom/airbnb/android/models/Contact;

    invoke-direct {v8, p1, p2}, Lcom/airbnb/android/models/Contact;-><init>(J)V

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string/jumbo v6, "display_name"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "contactName":Ljava/lang/String;
    iget-object v6, p0, Lcom/airbnb/android/adapters/ContactsAdapter;->mSelectedContacts:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "currentContact":Lcom/airbnb/android/models/Contact;
    check-cast v1, Lcom/airbnb/android/models/Contact;

    .line 128
    .restart local v1    # "currentContact":Lcom/airbnb/android/models/Contact;
    invoke-virtual {v1, v0}, Lcom/airbnb/android/models/Contact;->setName(Ljava/lang/String;)V

    .line 130
    .end local v0    # "contactName":Ljava/lang/String;
    :cond_6c
    invoke-virtual {v1, p4}, Lcom/airbnb/android/models/Contact;->selectContactInfo(Ljava/lang/Integer;)V

    .line 131
    invoke-virtual {v1, v5}, Lcom/airbnb/android/models/Contact;->saveContactInfo(Ljava/lang/String;)V

    goto :goto_2b
.end method

.method public removeContact(JLjava/lang/Integer;Ljava/lang/Integer;)V
    .registers 10
    .param p1, "contactId"    # J
    .param p3, "groupPosition"    # Ljava/lang/Integer;
    .param p4, "childPosition"    # Ljava/lang/Integer;

    .prologue
    .line 138
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/airbnb/android/adapters/ContactsAdapter;->getGroup(I)Landroid/database/Cursor;

    move-result-object v0

    .line 139
    .local v0, "groupCursor":Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/airbnb/android/adapters/ContactsAdapter;->getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    .line 140
    .local v1, "phoneCursor":Landroid/database/Cursor;
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 142
    const-string/jumbo v3, "data1"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "phoneNumberToForget":Ljava/lang/String;
    iget-object v3, p0, Lcom/airbnb/android/adapters/ContactsAdapter;->mSelectedContacts:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 145
    iget-object v3, p0, Lcom/airbnb/android/adapters/ContactsAdapter;->mSelectedContacts:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/models/Contact;

    invoke-virtual {v3, p4}, Lcom/airbnb/android/models/Contact;->deselectContactInfo(Ljava/lang/Integer;)V

    .line 146
    iget-object v3, p0, Lcom/airbnb/android/adapters/ContactsAdapter;->mSelectedContacts:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/models/Contact;

    invoke-virtual {v3, v2}, Lcom/airbnb/android/models/Contact;->removeContactInfo(Ljava/lang/String;)V

    .line 147
    iget-object v3, p0, Lcom/airbnb/android/adapters/ContactsAdapter;->mSelectedContacts:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/models/Contact;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Contact;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_63

    .line 148
    iget-object v3, p0, Lcom/airbnb/android/adapters/ContactsAdapter;->mSelectedContacts:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_63
    return-void
.end method

.method protected setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 6
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 95
    instance-of v1, p1, Lcom/airbnb/android/views/HaloImageView;

    if-eqz v1, :cond_14

    .line 96
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 97
    .local v0, "contactId":Ljava/lang/Long;
    check-cast p1, Lcom/airbnb/android/views/HaloImageView;

    .end local p1    # "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {p1, p2, v1}, Lcom/airbnb/android/views/HaloImageView;->setImageUriForUser(Ljava/lang/String;I)V

    .line 103
    .end local v0    # "contactId":Ljava/lang/Long;
    :cond_13
    return-void

    .line 99
    .restart local p1    # "imageView":Landroid/widget/ImageView;
    :cond_14
    invoke-static {}, Lcom/airbnb/android/utils/BuildHelper;->isProduction()Z

    move-result v1

    if-nez v1, :cond_13

    .line 100
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "expected a halo image. debug this!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
