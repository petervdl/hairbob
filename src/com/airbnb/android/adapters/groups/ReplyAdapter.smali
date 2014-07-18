.class public Lcom/airbnb/android/adapters/groups/ReplyAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ReplyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/airbnb/android/models/groups/Reply;",
        ">;"
    }
.end annotation


# instance fields
.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mGroup:Lcom/airbnb/android/models/groups/Group;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/groups/Reply;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p3, "replies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/groups/Reply;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 30
    iput-object p2, p0, Lcom/airbnb/android/adapters/groups/ReplyAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/adapters/groups/ReplyAdapter;)Lcom/airbnb/android/models/groups/Group;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/adapters/groups/ReplyAdapter;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/airbnb/android/adapters/groups/ReplyAdapter;->mGroup:Lcom/airbnb/android/models/groups/Group;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/adapters/groups/ReplyAdapter;)Landroid/support/v4/app/FragmentManager;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/adapters/groups/ReplyAdapter;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/airbnb/android/adapters/groups/ReplyAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 19
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 35
    invoke-virtual/range {p0 .. p1}, Lcom/airbnb/android/adapters/groups/ReplyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/airbnb/android/models/groups/Reply;

    .line 36
    .local v9, "reply":Lcom/airbnb/android/models/groups/Reply;
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 38
    .local v2, "context":Landroid/content/Context;
    if-nez p2, :cond_1a

    .line 39
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    const v13, 0x7f03013f

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 42
    :cond_1a
    const v12, 0x7f080366

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 43
    .local v10, "replyText":Landroid/widget/TextView;
    invoke-virtual {v9}, Lcom/airbnb/android/models/groups/Reply;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    const v12, 0x7f0802e0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 46
    .local v6, "mAuthorPostedTextView":Landroid/widget/TextView;
    const v12, 0x7f0802e1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 47
    .local v8, "mPostedAgoTextView":Landroid/widget/TextView;
    const v12, 0x7f0802df

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/airbnb/android/views/HaloImageView;

    .line 49
    .local v7, "mAvatar":Lcom/airbnb/android/views/HaloImageView;
    invoke-virtual {v9}, Lcom/airbnb/android/models/groups/Reply;->getAuthor()Lcom/airbnb/android/models/groups/Author;

    move-result-object v12

    invoke-virtual {v12}, Lcom/airbnb/android/models/groups/Author;->getUser()Lcom/airbnb/android/models/User;

    move-result-object v12

    invoke-virtual {v12}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "authorName":Ljava/lang/String;
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {v9}, Lcom/airbnb/android/models/groups/Reply;->getCreatedAt()Ljava/util/Date;

    move-result-object v3

    .line 53
    .local v3, "createdAt":Ljava/util/Date;
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/groups/ReplyAdapter;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v3}, Lcom/airbnb/android/utils/DateHelper;->getRelativeDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 54
    .local v11, "timeAgo":Ljava/lang/CharSequence;
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {v9}, Lcom/airbnb/android/models/groups/Reply;->getAuthor()Lcom/airbnb/android/models/groups/Author;

    move-result-object v12

    invoke-virtual {v12}, Lcom/airbnb/android/models/groups/Author;->getUser()Lcom/airbnb/android/models/User;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/airbnb/android/views/HaloImageView;->setImageUrlForUser(Lcom/airbnb/android/models/User;)V

    .line 57
    new-instance v12, Lcom/airbnb/android/adapters/groups/ReplyAdapter$1;

    invoke-direct {v12, p0, v9}, Lcom/airbnb/android/adapters/groups/ReplyAdapter$1;-><init>(Lcom/airbnb/android/adapters/groups/ReplyAdapter;Lcom/airbnb/android/models/groups/Reply;)V

    invoke-virtual {v7, v12}, Lcom/airbnb/android/views/HaloImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v12, 0x7f08035b

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 66
    .local v4, "divider":Landroid/view/View;
    const v12, 0x7f08035c

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 67
    .local v5, "dropShadow":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/groups/ReplyAdapter;->getCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    move/from16 v0, p1

    if-ne v0, v12, :cond_a4

    .line 68
    const/16 v12, 0x8

    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    .line 69
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    .line 75
    :goto_a3
    return-object p2

    .line 71
    :cond_a4
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    .line 72
    const/16 v12, 0x8

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a3
.end method

.method public setGroup(Lcom/airbnb/android/models/groups/Group;)V
    .registers 2
    .param p1, "group"    # Lcom/airbnb/android/models/groups/Group;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/airbnb/android/adapters/groups/ReplyAdapter;->mGroup:Lcom/airbnb/android/models/groups/Group;

    .line 80
    return-void
.end method
