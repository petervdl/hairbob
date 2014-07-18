.class public Lcom/airbnb/android/fragments/ContactsFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "ContactsFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/ContactsFragment$SendReferralsToServerRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/fragments/AirFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/SearchView$OnCloseListener;",
        "Landroid/widget/SearchView$OnQueryTextListener;"
    }
.end annotation


# static fields
.field private static final ACTION_EMAIL:I = 0x2

.field private static final ACTION_SMS:I = 0x1

.field private static final ARG_SMS_MSG:Ljava/lang/String; = "title_res"

.field static final CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

.field private static final DIALOG_REQ_SEND:I = 0x2008

.field private static final KEY_CONTACT_ID_TO_POSITION:Ljava/lang/String; = "contact_id_to_position"

.field private static final KEY_SELECTED_CONTACTS:Ljava/lang/String; = "selected_contacts"

.field private static final KEY_SELECTED_RECOMMENDED_CONTACTS:Ljava/lang/String; = "recommended_contacts"

.field private static final MAX_ALL_CONTACTS:I = -0x1

.field private static final MAX_RECOMMENDED_CONTACTS:I = 0xa

.field private static final SMS_INTENT:I = 0x2


# instance fields
.field private mAdapter:Lcom/airbnb/android/adapters/ContactsAdapter;

.field private mAdapterRecommendedContacts:Lcom/airbnb/android/adapters/ContactsAdapter;

.field private mChildListener:Landroid/widget/ExpandableListView$OnChildClickListener;

.field private mContactIdToPosition:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContactView:Landroid/widget/ExpandableListView;

.field private mContactsCursor:Landroid/database/Cursor;

.field private mContactsCursorLoaded:Z

.field private mCurFilter:Ljava/lang/String;

.field private mGroupListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

.field private mLoadedRecommendedContacts:Z

.field private mRecommendedChildrenViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRecommendedContactArea:Landroid/view/View;

.field private mRecommendedContactLabel:Landroid/widget/TextView;

.field private mRecommendedContactView:Landroid/widget/LinearLayout;

.field private mRecommendedContactsCursor:Landroid/database/Cursor;

.field private mRecommendedContactsCursorLoaded:Z

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

.field private mSelectedRecommendedContacts:Ljava/util/HashMap;
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

.field mStickyButton:Lcom/airbnb/android/views/StickyButton;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 353
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/airbnb/android/fragments/ContactsFragment;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    .line 498
    new-instance v0, Lcom/airbnb/android/fragments/ContactsFragment$6;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/ContactsFragment$6;-><init>(Lcom/airbnb/android/fragments/ContactsFragment;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mChildListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    .line 668
    new-instance v0, Lcom/airbnb/android/fragments/ContactsFragment$7;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/ContactsFragment$7;-><init>(Lcom/airbnb/android/fragments/ContactsFragment;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mGroupListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    .line 684
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/ContactsFragment;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ContactsFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mSelectedContacts:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/ContactsFragment;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ContactsFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mSelectedRecommendedContacts:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/ContactsFragment;Landroid/view/View;I)Z
    .registers 4
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ContactsFragment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/fragments/ContactsFragment;->handleRecommendedGroupClick(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/ContactsFragment;Landroid/view/View;II)Z
    .registers 5
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ContactsFragment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/ContactsFragment;->handleRecommendedChildClick(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/ContactsFragment;Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .registers 8
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ContactsFragment;
    .param p1, "x1"    # Landroid/widget/ExpandableListView;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # J

    .prologue
    .line 61
    invoke-direct/range {p0 .. p6}, Lcom/airbnb/android/fragments/ContactsFragment;->handleChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/airbnb/android/fragments/ContactsFragment;Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .registers 7
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ContactsFragment;
    .param p1, "x1"    # Landroid/widget/ExpandableListView;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # I
    .param p4, "x4"    # J

    .prologue
    .line 61
    invoke-direct/range {p0 .. p5}, Lcom/airbnb/android/fragments/ContactsFragment;->handleGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method private handleChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .registers 15
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    const/4 v4, 0x1

    .line 507
    const v5, 0x7f08009a

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 508
    .local v0, "check":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-nez v5, :cond_3f

    move v1, v4

    .line 509
    .local v1, "checkboxValue":Z
    :goto_11
    if-eqz v0, :cond_39

    .line 510
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 511
    if-eqz v1, :cond_41

    .line 513
    iget-object v5, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mContactsCursor:Landroid/database/Cursor;

    invoke-interface {v5, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 514
    iget-object v5, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mContactsCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mContactsCursor:Landroid/database/Cursor;

    const-string/jumbo v7, "_ID"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 515
    .local v2, "contactId":J
    iget-object v5, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mAdapter:Lcom/airbnb/android/adapters/ContactsAdapter;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v2, v3, v6, v7}, Lcom/airbnb/android/adapters/ContactsAdapter;->rememberContact(JLjava/lang/Integer;Ljava/lang/Integer;)V

    .line 523
    .end local v2    # "contactId":J
    :cond_39
    :goto_39
    iget-object v5, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mAdapter:Lcom/airbnb/android/adapters/ContactsAdapter;

    invoke-virtual {v5}, Lcom/airbnb/android/adapters/ContactsAdapter;->notifyDataSetChanged()V

    .line 524
    return v4

    .line 508
    .end local v1    # "checkboxValue":Z
    :cond_3f
    const/4 v1, 0x0

    goto :goto_11

    .line 518
    .restart local v1    # "checkboxValue":Z
    :cond_41
    iget-object v5, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mContactsCursor:Landroid/database/Cursor;

    invoke-interface {v5, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 519
    iget-object v5, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mContactsCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mContactsCursor:Landroid/database/Cursor;

    const-string/jumbo v7, "_ID"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 520
    .restart local v2    # "contactId":J
    iget-object v5, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mAdapter:Lcom/airbnb/android/adapters/ContactsAdapter;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v2, v3, v6, v7}, Lcom/airbnb/android/adapters/ContactsAdapter;->removeContact(JLjava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_39
.end method

.method private handleGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .registers 10
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v2, 0x1

    .line 654
    invoke-virtual {p1, p3}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v0

    .line 656
    .local v0, "expanded":Z
    if-eqz v0, :cond_18

    .line 657
    invoke-virtual {p1, p3}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 662
    :goto_a
    if-nez v0, :cond_1c

    move v1, v2

    :goto_d
    iget-object v3, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mContactView:Landroid/widget/ExpandableListView;

    invoke-direct {p0, v1, p3, v3}, Lcom/airbnb/android/fragments/ContactsFragment;->setGroupInternalState(ZILandroid/widget/ExpandableListView;)V

    .line 664
    iget-object v1, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mAdapter:Lcom/airbnb/android/adapters/ContactsAdapter;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/ContactsAdapter;->notifyDataSetChanged()V

    .line 665
    return v2

    .line 659
    :cond_18
    invoke-virtual {p1, p3}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    goto :goto_a

    .line 662
    :cond_1c
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private handleRecommendedChildClick(Landroid/view/View;II)Z
    .registers 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "groupPosition"    # I
    .param p3, "childPosition"    # I

    .prologue
    const/4 v6, 0x1

    .line 529
    const v5, 0x7f08009a

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 530
    .local v0, "check":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-nez v5, :cond_75

    move v1, v6

    .line 532
    .local v1, "checkboxValue":Z
    :goto_11
    iget-object v5, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mRecommendedContactsCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1d

    iget-object v5, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mRecommendedContactsCursor:Landroid/database/Cursor;

    if-nez v5, :cond_25

    .line 533
    :cond_1d
    iget-object v5, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mAdapterRecommendedContacts:Lcom/airbnb/android/adapters/ContactsAdapter;

    invoke-virtual {v5}, Lcom/airbnb/android/adapters/ContactsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mRecommendedContactsCursor:Landroid/database/Cursor;

    .line 535
    :cond_25
    iget-object v5, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mRecommendedContactsCursor:Landroid/database/Cursor;

    invoke-interface {v5, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 537
    iget-object v5, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mRecommendedContactsCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mRecommendedContactsCursor:Landroid/database/Cursor;

    const-string/jumbo v8, "_ID"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 538
    .local v2, "contactId":J
    iget-object v5, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mContactIdToPosition:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 540
    .local v4, "overallContactPosition":I
    if-eqz v0, :cond_6f

    .line 541
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 542
    if-eqz v1, :cond_77

    .line 545
    iget-object v5, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mRecommendedContactsCursor:Landroid/database/Cursor;

    invoke-interface {v5, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 546
    iget-object v5, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mAdapterRecommendedContacts:Lcom/airbnb/android/adapters/ContactsAdapter;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v2, v3, v7, v8}, Lcom/airbnb/android/adapters/ContactsAdapter;->rememberContact(JLjava/lang/Integer;Ljava/lang/Integer;)V

    .line 547
    iget-object v5, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mAdapter:Lcom/airbnb/android/adapters/ContactsAdapter;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v2, v3, v7, v8}, Lcom/airbnb/android/adapters/ContactsAdapter;->rememberContact(JLjava/lang/Integer;Ljava/lang/Integer;)V

    .line 556
    :cond_6f
    :goto_6f
    iget-object v5, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mAdapterRecommendedContacts:Lcom/airbnb/android/adapters/ContactsAdapter;

    invoke-virtual {v5}, Lcom/airbnb/android/adapters/ContactsAdapter;->notifyDataSetChanged()V

    .line 557
    return v6

    .line 530
    .end local v1    # "checkboxValue":Z
    .end local v2    # "contactId":J
    .end local v4    # "overallContactPosition":I
    :cond_75
    const/4 v1, 0x0

    goto :goto_11

    .line 551
    .restart local v1    # "checkboxValue":Z
    .restart local v2    # "contactId":J
    .restart local v4    # "overallContactPosition":I
    :cond_77
    iget-object v5, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mContactsCursor:Landroid/database/Cursor;

    invoke-interface {v5, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 552
    iget-object v5, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mAdapterRecommendedContacts:Lcom/airbnb/android/adapters/ContactsAdapter;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v2, v3, v7, v8}, Lcom/airbnb/android/adapters/ContactsAdapter;->removeContact(JLjava/lang/Integer;Ljava/lang/Integer;)V

    .line 553
    iget-object v5, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mAdapter:Lcom/airbnb/android/adapters/ContactsAdapter;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v2, v3, v7, v8}, Lcom/airbnb/android/adapters/ContactsAdapter;->removeContact(JLjava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_6f
.end method

.method private handleRecommendedGroupClick(Landroid/view/View;I)Z
    .registers 15
    .param p1, "v"    # Landroid/view/View;
    .param p2, "groupPosition"    # I

    .prologue
    .line 561
    const v9, 0x7f08009a

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 562
    .local v1, "check":Landroid/widget/CheckBox;
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    if-nez v9, :cond_9c

    const/4 v9, 0x1

    :goto_10
    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 563
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    .line 567
    .local v3, "click":Z
    iget-object v9, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mRecommendedContactsCursor:Landroid/database/Cursor;

    invoke-interface {v9, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 568
    iget-object v9, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mRecommendedContactsCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_28

    iget-object v9, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mRecommendedContactsCursor:Landroid/database/Cursor;

    if-nez v9, :cond_30

    .line 569
    :cond_28
    iget-object v9, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mAdapterRecommendedContacts:Lcom/airbnb/android/adapters/ContactsAdapter;

    invoke-virtual {v9}, Lcom/airbnb/android/adapters/ContactsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v9

    iput-object v9, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mRecommendedContactsCursor:Landroid/database/Cursor;

    .line 571
    :cond_30
    iget-object v9, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mRecommendedContactsCursor:Landroid/database/Cursor;

    iget-object v10, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mRecommendedContactsCursor:Landroid/database/Cursor;

    const-string/jumbo v11, "_ID"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 573
    .local v4, "contactId":J
    iget-object v9, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mContactIdToPosition:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 575
    .local v8, "overallContactPosition":I
    if-eqz v3, :cond_fc

    .line 582
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_52
    iget-object v9, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mRecommendedChildrenViews:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_ab

    .line 583
    iget-object v9, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mRecommendedChildrenViews:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 584
    .local v2, "childView":Landroid/view/View;
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 586
    iget-object v9, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mAdapterRecommendedContacts:Lcom/airbnb/android/adapters/ContactsAdapter;

    invoke-virtual {v9, p2}, Lcom/airbnb/android/adapters/ContactsAdapter;->getChildrenCount(I)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v7, v9, :cond_9f

    iget-object v9, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mAdapterRecommendedContacts:Lcom/airbnb/android/adapters/ContactsAdapter;

    invoke-virtual {v9}, Lcom/airbnb/android/adapters/ContactsAdapter;->getGroupCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq p2, v9, :cond_9f

    .line 587
    const v9, 0x7f08009c

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 582
    :goto_99
    add-int/lit8 v7, v7, 0x1

    goto :goto_52

    .line 562
    .end local v2    # "childView":Landroid/view/View;
    .end local v3    # "click":Z
    .end local v4    # "contactId":J
    .end local v7    # "i":I
    .end local v8    # "overallContactPosition":I
    :cond_9c
    const/4 v9, 0x0

    goto/16 :goto_10

    .line 589
    .restart local v2    # "childView":Landroid/view/View;
    .restart local v3    # "click":Z
    .restart local v4    # "contactId":J
    .restart local v7    # "i":I
    .restart local v8    # "overallContactPosition":I
    :cond_9f
    const v9, 0x7f08009c

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_99

    .line 594
    .end local v2    # "childView":Landroid/view/View;
    :cond_ab
    iget-object v9, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mRecommendedChildrenViews:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_ea

    .line 595
    iget-object v9, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mRecommendedChildrenViews:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 596
    .local v6, "firstChildView":Landroid/view/View;
    const v9, 0x7f08009a

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 597
    .local v0, "cb":Landroid/widget/CheckBox;
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 600
    iget-object v9, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mAdapterRecommendedContacts:Lcom/airbnb/android/adapters/ContactsAdapter;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v4, v5, v10, v11}, Lcom/airbnb/android/adapters/ContactsAdapter;->rememberContact(JLjava/lang/Integer;Ljava/lang/Integer;)V

    .line 604
    .end local v0    # "cb":Landroid/widget/CheckBox;
    .end local v6    # "firstChildView":Landroid/view/View;
    :cond_ea
    const v9, 0x7f0800a0

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 629
    :cond_f5
    :goto_f5
    iget-object v9, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mContactView:Landroid/widget/ExpandableListView;

    invoke-direct {p0, v3, v8, v9}, Lcom/airbnb/android/fragments/ContactsFragment;->setGroupInternalState(ZILandroid/widget/ExpandableListView;)V

    .line 631
    const/4 v9, 0x1

    return v9

    .line 610
    .end local v7    # "i":I
    :cond_fc
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_fd
    iget-object v9, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mRecommendedChildrenViews:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_129

    .line 611
    iget-object v9, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mRecommendedChildrenViews:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 612
    .restart local v2    # "childView":Landroid/view/View;
    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 610
    add-int/lit8 v7, v7, 0x1

    goto :goto_fd

    .line 615
    .end local v2    # "childView":Landroid/view/View;
    :cond_129
    const/4 v7, 0x0

    :goto_12a
    iget-object v9, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mAdapterRecommendedContacts:Lcom/airbnb/android/adapters/ContactsAdapter;

    invoke-virtual {v9, p2}, Lcom/airbnb/android/adapters/ContactsAdapter;->getChildrenCount(I)I

    move-result v9

    if-ge v7, v9, :cond_142

    .line 616
    iget-object v9, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mAdapterRecommendedContacts:Lcom/airbnb/android/adapters/ContactsAdapter;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v4, v5, v10, v11}, Lcom/airbnb/android/adapters/ContactsAdapter;->removeContact(JLjava/lang/Integer;Ljava/lang/Integer;)V

    .line 615
    add-int/lit8 v7, v7, 0x1

    goto :goto_12a

    .line 620
    :cond_142
    iget-object v9, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mAdapterRecommendedContacts:Lcom/airbnb/android/adapters/ContactsAdapter;

    invoke-virtual {v9}, Lcom/airbnb/android/adapters/ContactsAdapter;->getGroupCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq p2, v9, :cond_f5

    .line 621
    const v9, 0x7f0800a0

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f5
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/airbnb/android/fragments/ContactsFragment;
    .registers 4
    .param p0, "smsMessage"    # Ljava/lang/String;

    .prologue
    .line 111
    new-instance v1, Lcom/airbnb/android/fragments/ContactsFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/ContactsFragment;-><init>()V

    .line 112
    .local v1, "f":Lcom/airbnb/android/fragments/ContactsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 113
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "title_res"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/ContactsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 116
    return-object v1
.end method

.method private sendReferralMessage()V
    .registers 27

    .prologue
    .line 262
    const-string/jumbo v21, ""

    .line 263
    .local v21, "phoneNumbersString":Ljava/lang/String;
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 265
    .local v11, "contacts":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/fragments/ContactsFragment;->mSelectedContacts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_14
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_82

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/airbnb/android/models/Contact;

    .line 266
    .local v15, "contact":Lcom/airbnb/android/models/Contact;
    invoke-virtual {v15}, Lcom/airbnb/android/models/Contact;->selectedContactInfo()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_28
    :goto_28
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 268
    .local v7, "s":Ljava/lang/String;
    invoke-static {v7}, Lcom/airbnb/android/utils/TextHelper;->isValidEmail(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 269
    invoke-virtual {v15}, Lcom/airbnb/android/models/Contact;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Lcom/airbnb/android/models/Contact;->getContactId()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v8, 0x2

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/airbnb/android/fragments/ContactsFragment;->convertContactToJson(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v11, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_28

    .line 270
    :cond_4e
    invoke-static {v7}, Lcom/airbnb/android/utils/TextHelper;->isValidPhoneNumber(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 272
    invoke-virtual {v15}, Lcom/airbnb/android/models/Contact;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15}, Lcom/airbnb/android/models/Contact;->getContactId()J

    move-result-wide v5

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/airbnb/android/fragments/ContactsFragment;->convertContactToJson(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v11, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_28

    .line 277
    .end local v7    # "s":Ljava/lang/String;
    .end local v15    # "contact":Lcom/airbnb/android/models/Contact;
    .end local v18    # "i$":Ljava/util/Iterator;
    :cond_82
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_124

    const/16 v20, 0x1

    .line 280
    .local v20, "phoneNumbersPresent":Z
    :goto_8a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v24

    .line 282
    .local v24, "userId":J
    const v2, 0x7f0e061b

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->newInstance(II)Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    move-result-object v22

    .line 284
    .local v22, "progressDialog":Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;
    new-instance v2, Lcom/airbnb/android/fragments/ContactsFragment$2;

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v2, v0, v1}, Lcom/airbnb/android/fragments/ContactsFragment$2;-><init>(Lcom/airbnb/android/fragments/ContactsFragment;Z)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->setProgressDialogListener(Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$ProgressDialogListener;)V

    .line 298
    new-instance v8, Lcom/airbnb/android/fragments/ContactsFragment$SendReferralsToServerRequest;

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    new-instance v12, Lcom/airbnb/android/fragments/ContactsFragment$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v12, v0, v1}, Lcom/airbnb/android/fragments/ContactsFragment$3;-><init>(Lcom/airbnb/android/fragments/ContactsFragment;Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;)V

    const/4 v13, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/airbnb/android/fragments/ContactsFragment$SendReferralsToServerRequest;-><init>(Lcom/airbnb/android/fragments/ContactsFragment;Ljava/lang/String;Lorg/json/JSONArray;Lcom/airbnb/android/requests/RequestListener;Lcom/airbnb/android/fragments/ContactsFragment$1;)V

    .line 318
    .local v8, "sendContactsRequest":Lcom/airbnb/android/fragments/ContactsFragment$SendReferralsToServerRequest;
    if-eqz v20, :cond_10a

    .line 319
    new-instance v19, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sms:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 320
    .local v19, "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/ContactsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v14

    .line 322
    .local v14, "args":Landroid/os/Bundle;
    if-eqz v14, :cond_128

    .line 323
    const-string/jumbo v2, "title_res"

    invoke-virtual {v14, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 327
    .local v23, "smsMessage":Ljava/lang/String;
    :goto_f8
    const-string/jumbo v2, "sms_body"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    const/4 v2, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ContactsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 331
    .end local v14    # "args":Landroid/os/Bundle;
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v23    # "smsMessage":Ljava/lang/String;
    :cond_10a
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_123

    .line 332
    invoke-virtual {v8}, Lcom/airbnb/android/fragments/ContactsFragment$SendReferralsToServerRequest;->execute()V

    .line 333
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/ContactsFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v16

    .line 334
    .local v16, "ft":Landroid/support/v4/app/FragmentTransaction;
    const/4 v2, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 337
    .end local v16    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_123
    return-void

    .line 277
    .end local v8    # "sendContactsRequest":Lcom/airbnb/android/fragments/ContactsFragment$SendReferralsToServerRequest;
    .end local v20    # "phoneNumbersPresent":Z
    .end local v22    # "progressDialog":Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;
    .end local v24    # "userId":J
    :cond_124
    const/16 v20, 0x0

    goto/16 :goto_8a

    .line 325
    .restart local v8    # "sendContactsRequest":Lcom/airbnb/android/fragments/ContactsFragment$SendReferralsToServerRequest;
    .restart local v14    # "args":Landroid/os/Bundle;
    .restart local v19    # "intent":Landroid/content/Intent;
    .restart local v20    # "phoneNumbersPresent":Z
    .restart local v22    # "progressDialog":Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;
    .restart local v24    # "userId":J
    :cond_128
    const v2, 0x7f0e061e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/airbnb/android/fragments/ContactsFragment;->getString(I)Ljava/lang/String;

    move-result-object v23

    .restart local v23    # "smsMessage":Ljava/lang/String;
    goto :goto_f8
.end method

.method private setGroupInternalState(ZILandroid/widget/ExpandableListView;)V
    .registers 10
    .param p1, "checked"    # Z
    .param p2, "groupPosition"    # I
    .param p3, "parent"    # Landroid/widget/ExpandableListView;

    .prologue
    .line 637
    iget-object v3, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mContactsCursor:Landroid/database/Cursor;

    invoke-interface {v3, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 638
    iget-object v3, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mContactsCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mContactsCursor:Landroid/database/Cursor;

    const-string/jumbo v5, "_ID"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 640
    .local v1, "contactId":J
    if-eqz p1, :cond_40

    .line 645
    iget-object v3, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mSelectedContacts:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Contact;

    .line 647
    .local v0, "contact":Lcom/airbnb/android/models/Contact;
    iget-object v3, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mAdapter:Lcom/airbnb/android/adapters/ContactsAdapter;

    invoke-virtual {v3, p2}, Lcom/airbnb/android/adapters/ContactsAdapter;->getChildrenCount(I)I

    move-result v3

    if-lez v3, :cond_40

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Lcom/airbnb/android/models/Contact;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 648
    :cond_32
    iget-object v3, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mAdapter:Lcom/airbnb/android/adapters/ContactsAdapter;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/airbnb/android/adapters/ContactsAdapter;->rememberContact(JLjava/lang/Integer;Ljava/lang/Integer;)V

    .line 651
    .end local v0    # "contact":Lcom/airbnb/android/models/Contact;
    :cond_40
    return-void
.end method


# virtual methods
.method public convertContactToJson(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)Lorg/json/JSONObject;
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "externalContactId"    # J
    .param p4, "phone"    # Ljava/lang/String;
    .param p5, "email"    # Ljava/lang/String;
    .param p6, "action"    # I

    .prologue
    .line 249
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 251
    .local v0, "obj":Lorg/json/JSONObject;
    :try_start_5
    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    const-string/jumbo v1, "external_contact_id"

    invoke-virtual {v0, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 253
    const-string/jumbo v1, "referred_phone"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    const-string/jumbo v1, "referred_email"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_23} :catch_24

    .line 258
    :goto_23
    return-object v0

    .line 256
    :catch_24
    move-exception v1

    goto :goto_23
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 343
    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    .line 344
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 350
    :goto_a
    return-void

    .line 345
    :cond_b
    const/16 v0, 0x2008

    if-ne p1, v0, :cond_13

    .line 346
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ContactsFragment;->sendReferralMessage()V

    goto :goto_a

    .line 348
    :cond_13
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/AirFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_a
.end method

.method public onClose()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 679
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mRecommendedContactView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 680
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mRecommendedContactLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 681
    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onCreate(Landroid/os/Bundle;)V

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/ContactsFragment;->setHasOptionsMenu(Z)V

    .line 124
    if-eqz p1, :cond_39

    .line 125
    const-string/jumbo v0, "selected_contacts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mSelectedContacts:Ljava/util/HashMap;

    .line 126
    const-string/jumbo v0, "recommended_contacts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mSelectedRecommendedContacts:Ljava/util/HashMap;

    .line 127
    const-string/jumbo v0, "contact_id_to_position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mContactIdToPosition:Ljava/util/HashMap;

    .line 134
    :goto_2b
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mRecommendedChildrenViews:Ljava/util/HashMap;

    .line 135
    iput-boolean v1, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mLoadedRecommendedContacts:Z

    .line 136
    iput-boolean v1, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mContactsCursorLoaded:Z

    .line 137
    iput-boolean v1, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mRecommendedContactsCursorLoaded:Z

    .line 138
    return-void

    .line 129
    :cond_39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mSelectedContacts:Ljava/util/HashMap;

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mSelectedRecommendedContacts:Ljava/util/HashMap;

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mContactIdToPosition:Ljava/util/HashMap;

    goto :goto_2b
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 10
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 367
    if-nez p1, :cond_28

    .line 368
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mCurFilter:Ljava/lang/String;

    if-eqz v0, :cond_25

    .line 369
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mCurFilter:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 377
    .local v2, "baseUri":Landroid/net/Uri;
    :goto_13
    const-string/jumbo v4, "((display_name NOTNULL) AND (has_phone_number=1) AND (display_name != \'\' ))"

    .line 381
    .local v4, "select":Ljava/lang/String;
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/airbnb/android/fragments/ContactsFragment;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v6, "display_name COLLATE LOCALIZED ASC"

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :goto_24
    return-object v0

    .line 372
    .end local v2    # "baseUri":Landroid/net/Uri;
    .end local v4    # "select":Ljava/lang/String;
    :cond_25
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .restart local v2    # "baseUri":Landroid/net/Uri;
    goto :goto_13

    .line 388
    .end local v2    # "baseUri":Landroid/net/Uri;
    :cond_28
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "frequent"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 395
    .restart local v2    # "baseUri":Landroid/net/Uri;
    const-string/jumbo v4, "((display_name NOTNULL) AND (has_phone_number=1) AND (display_name != \'\'))"

    .line 398
    .restart local v4    # "select":Ljava/lang/String;
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/airbnb/android/fragments/ContactsFragment;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v6, "display_name COLLATE LOCALIZED ASC"

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 220
    const-string/jumbo v2, "Search"

    invoke-interface {p1, v2}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 221
    .local v0, "item":Landroid/view/MenuItem;
    const v2, 0x108004f

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 222
    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 223
    new-instance v1, Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    .line 224
    .local v1, "sv":Landroid/widget/SearchView;
    invoke-virtual {v1, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 225
    invoke-virtual {v1, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 226
    invoke-static {v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    .line 227
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 21
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 151
    if-nez p2, :cond_5

    .line 152
    const/16 v16, 0x0

    .line 214
    :goto_4
    return-object v16

    .line 155
    :cond_5
    const-string/jumbo v2, "referrals"

    const-string/jumbo v3, "sms_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/airbnb/android/utils/Trebuchet;->launch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/airbnb/android/fragments/ContactsFragment;->mShowSMS:Z

    .line 157
    const v2, 0x7f030083

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 158
    .local v16, "v":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 159
    const v2, 0x7f0301aa

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    .line 160
    .local v15, "recommendedHeader":Landroid/view/View;
    const v2, 0x7f080450

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airbnb/android/fragments/ContactsFragment;->mRecommendedContactView:Landroid/widget/LinearLayout;

    .line 161
    const v2, 0x7f08009d

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airbnb/android/fragments/ContactsFragment;->mRecommendedContactArea:Landroid/view/View;

    .line 162
    const v2, 0x7f08044f

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airbnb/android/fragments/ContactsFragment;->mRecommendedContactLabel:Landroid/widget/TextView;

    .line 165
    new-instance v2, Lcom/airbnb/android/adapters/ContactsAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f03003a

    const v5, 0x7f030039

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "display_name"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "photo_thumb_uri"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "data1"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    new-array v9, v9, [I

    fill-array-data v9, :array_162

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    const v12, 0x7f08009b

    aput v12, v10, v11

    const/4 v11, -0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/ContactsFragment;->mSelectedContacts:Ljava/util/HashMap;

    invoke-direct/range {v2 .. v12}, Lcom/airbnb/android/adapters/ContactsAdapter;-><init>(Landroid/content/Context;IILandroid/database/Cursor;[Ljava/lang/String;[Ljava/lang/String;[I[IILjava/util/HashMap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airbnb/android/fragments/ContactsFragment;->mAdapter:Lcom/airbnb/android/adapters/ContactsAdapter;

    .line 171
    new-instance v2, Lcom/airbnb/android/adapters/ContactsAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f03003a

    const v5, 0x7f030039

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "display_name"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "photo_thumb_uri"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "data1"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    new-array v9, v9, [I

    fill-array-data v9, :array_16a

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    const v12, 0x7f08009b

    aput v12, v10, v11

    const/16 v11, 0xa

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/ContactsFragment;->mSelectedRecommendedContacts:Ljava/util/HashMap;

    invoke-direct/range {v2 .. v12}, Lcom/airbnb/android/adapters/ContactsAdapter;-><init>(Landroid/content/Context;IILandroid/database/Cursor;[Ljava/lang/String;[Ljava/lang/String;[I[IILjava/util/HashMap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airbnb/android/fragments/ContactsFragment;->mAdapterRecommendedContacts:Lcom/airbnb/android/adapters/ContactsAdapter;

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/ContactsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v3, v4, v0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/ContactsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v3, v4, v0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 180
    const v2, 0x7f080188

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ExpandableListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airbnb/android/fragments/ContactsFragment;->mContactView:Landroid/widget/ExpandableListView;

    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/fragments/ContactsFragment;->mContactView:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v15}, Landroid/widget/ExpandableListView;->addHeaderView(Landroid/view/View;)V

    .line 184
    new-instance v13, Landroid/view/View;

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v13, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 185
    .local v13, "buttonFooter":Landroid/view/View;
    new-instance v14, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/ContactsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00b9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v14, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 186
    .local v14, "params":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v13, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/fragments/ContactsFragment;->mContactView:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v13}, Landroid/widget/ExpandableListView;->addFooterView(Landroid/view/View;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/fragments/ContactsFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    new-instance v3, Lcom/airbnb/android/fragments/ContactsFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/airbnb/android/fragments/ContactsFragment$1;-><init>(Lcom/airbnb/android/fragments/ContactsFragment;)V

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/StickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/fragments/ContactsFragment;->mContactView:Landroid/widget/ExpandableListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airbnb/android/fragments/ContactsFragment;->mAdapter:Lcom/airbnb/android/adapters/ContactsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/fragments/ContactsFragment;->mContactView:Landroid/widget/ExpandableListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setChoiceMode(I)V

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/fragments/ContactsFragment;->mContactView:Landroid/widget/ExpandableListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airbnb/android/fragments/ContactsFragment;->mChildListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/fragments/ContactsFragment;->mContactView:Landroid/widget/ExpandableListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airbnb/android/fragments/ContactsFragment;->mGroupListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    goto/16 :goto_4

    .line 165
    nop

    :array_162
    .array-data 4
        0x7f08009b
        0x7f08009e
    .end array-data

    .line 171
    :array_16a
    .array-data 4
        0x7f08009b
        0x7f08009e
    .end array-data
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 16
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 409
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    if-nez v0, :cond_5f

    .line 410
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mAdapter:Lcom/airbnb/android/adapters/ContactsAdapter;

    invoke-virtual {v0, p2}, Lcom/airbnb/android/adapters/ContactsAdapter;->setGroupCursor(Landroid/database/Cursor;)V

    .line 411
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mAdapter:Lcom/airbnb/android/adapters/ContactsAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/ContactsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mContactsCursor:Landroid/database/Cursor;

    .line 413
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mAdapter:Lcom/airbnb/android/adapters/ContactsAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/ContactsAdapter;->getGroupCount()I

    move-result v0

    if-ge v1, v0, :cond_40

    .line 414
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mContactsCursor:Landroid/database/Cursor;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 415
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mContactsCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mContactsCursor:Landroid/database/Cursor;

    const-string/jumbo v4, "_ID"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 416
    .local v7, "contactId":J
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mContactIdToPosition:Ljava/util/HashMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 419
    .end local v7    # "contactId":J
    :cond_40
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mRecommendedContactsCursorLoaded:Z

    if-eqz v0, :cond_5b

    .line 420
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mAdapter:Lcom/airbnb/android/adapters/ContactsAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/ContactsAdapter;->getGroupCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mAdapterRecommendedContacts:Lcom/airbnb/android/adapters/ContactsAdapter;

    invoke-virtual {v3}, Lcom/airbnb/android/adapters/ContactsAdapter;->getGroupCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/airbnb/android/analytics/ReferralsAnalytics;->trackInviteListImpression(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :cond_5b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mContactsCursorLoaded:Z

    .line 483
    .end local v1    # "i":I
    :cond_5e
    :goto_5e
    return-void

    .line 425
    :cond_5f
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5e

    .line 427
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mAdapterRecommendedContacts:Lcom/airbnb/android/adapters/ContactsAdapter;

    invoke-virtual {v0, p2}, Lcom/airbnb/android/adapters/ContactsAdapter;->setGroupCursor(Landroid/database/Cursor;)V

    .line 428
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mAdapterRecommendedContacts:Lcom/airbnb/android/adapters/ContactsAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/ContactsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mRecommendedContactsCursor:Landroid/database/Cursor;

    .line 432
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mLoadedRecommendedContacts:Z

    if-nez v0, :cond_5e

    .line 433
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mAdapterRecommendedContacts:Lcom/airbnb/android/adapters/ContactsAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/ContactsAdapter;->getGroupCount()I

    move-result v0

    const/4 v3, 0x1

    if-ge v0, v3, :cond_a6

    .line 434
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mRecommendedContactArea:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 476
    :cond_87
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mContactsCursorLoaded:Z

    if-eqz v0, :cond_a2

    .line 477
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mAdapter:Lcom/airbnb/android/adapters/ContactsAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/ContactsAdapter;->getGroupCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mAdapterRecommendedContacts:Lcom/airbnb/android/adapters/ContactsAdapter;

    invoke-virtual {v3}, Lcom/airbnb/android/adapters/ContactsAdapter;->getGroupCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/airbnb/android/analytics/ReferralsAnalytics;->trackInviteListImpression(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :cond_a2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mLoadedRecommendedContacts:Z

    goto :goto_5e

    .line 436
    :cond_a6
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_a7
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mAdapterRecommendedContacts:Lcom/airbnb/android/adapters/ContactsAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/ContactsAdapter;->getGroupCount()I

    move-result v0

    if-ge v1, v0, :cond_87

    .line 438
    move v12, v1

    .line 439
    .local v12, "groupPosition":I
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mAdapterRecommendedContacts:Lcom/airbnb/android/adapters/ContactsAdapter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/airbnb/android/adapters/ContactsAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 440
    .local v11, "currentView":Landroid/view/View;
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mRecommendedContactView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 442
    new-instance v0, Lcom/airbnb/android/fragments/ContactsFragment$4;

    invoke-direct {v0, p0, v12}, Lcom/airbnb/android/fragments/ContactsFragment$4;-><init>(Lcom/airbnb/android/fragments/ContactsFragment;I)V

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mAdapterRecommendedContacts:Lcom/airbnb/android/adapters/ContactsAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/ContactsAdapter;->getGroupCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_127

    .line 451
    const v0, 0x7f0800a0

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 456
    :goto_db
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mRecommendedChildrenViews:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mRecommendedChildrenViews:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 460
    .local v10, "currentChildrenViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_f6
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mAdapterRecommendedContacts:Lcom/airbnb/android/adapters/ContactsAdapter;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/ContactsAdapter;->getChildrenCount(I)I

    move-result v0

    if-ge v2, v0, :cond_133

    .line 461
    move v6, v2

    .line 462
    .local v6, "childPosition":I
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mAdapterRecommendedContacts:Lcom/airbnb/android/adapters/ContactsAdapter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/airbnb/android/adapters/ContactsAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 463
    .local v9, "currentChildView":Landroid/view/View;
    const v0, 0x7f08009f

    invoke-static {v11, v0}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 464
    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 465
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    new-instance v0, Lcom/airbnb/android/fragments/ContactsFragment$5;

    invoke-direct {v0, p0, v12, v6}, Lcom/airbnb/android/fragments/ContactsFragment$5;-><init>(Lcom/airbnb/android/fragments/ContactsFragment;II)V

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    add-int/lit8 v2, v2, 0x1

    goto :goto_f6

    .line 453
    .end local v2    # "j":I
    .end local v6    # "childPosition":I
    .end local v9    # "currentChildView":Landroid/view/View;
    .end local v10    # "currentChildrenViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_127
    const v0, 0x7f0800a0

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_db

    .line 436
    .restart local v2    # "j":I
    .restart local v10    # "currentChildrenViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_133
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a7
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 61
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/fragments/ContactsFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v2, 0x0

    .line 490
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    if-nez v0, :cond_d

    .line 491
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mAdapter:Lcom/airbnb/android/adapters/ContactsAdapter;

    invoke-virtual {v0, v2}, Lcom/airbnb/android/adapters/ContactsAdapter;->setGroupCursor(Landroid/database/Cursor;)V

    .line 496
    :cond_c
    :goto_c
    return-void

    .line 492
    :cond_d
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 493
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mAdapterRecommendedContacts:Lcom/airbnb/android/adapters/ContactsAdapter;

    invoke-virtual {v0, v2}, Lcom/airbnb/android/adapters/ContactsAdapter;->setGroupCursor(Landroid/database/Cursor;)V

    goto :goto_c
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .registers 5
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/16 v2, 0x8

    .line 235
    iget-object v1, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mRecommendedContactView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 236
    iget-object v1, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mRecommendedContactLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .end local p1    # "newText":Ljava/lang/String;
    :goto_13
    iput-object p1, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mCurFilter:Ljava/lang/String;

    .line 238
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ContactsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 239
    const/4 v0, 0x1

    return v0

    .restart local p1    # "newText":Ljava/lang/String;
    :cond_1f
    move-object p1, v0

    .line 237
    goto :goto_13
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 245
    const/4 v0, 0x1

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 144
    const-string/jumbo v0, "selected_contacts"

    iget-object v1, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mSelectedContacts:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 145
    const-string/jumbo v0, "recommended_contacts"

    iget-object v1, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mSelectedRecommendedContacts:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 146
    const-string/jumbo v0, "contact_id_to_position"

    iget-object v1, p0, Lcom/airbnb/android/fragments/ContactsFragment;->mContactIdToPosition:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 147
    return-void
.end method
