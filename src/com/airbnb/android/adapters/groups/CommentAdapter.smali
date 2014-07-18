.class public Lcom/airbnb/android/adapters/groups/CommentAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CommentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/airbnb/android/models/groups/Comment;",
        ">;"
    }
.end annotation


# instance fields
.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mGroup:Lcom/airbnb/android/models/groups/Group;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/support/v4/app/FragmentManager;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/groups/Comment;",
            ">;",
            "Landroid/support/v4/app/FragmentManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/groups/Comment;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 32
    iput-object p3, p0, Lcom/airbnb/android/adapters/groups/CommentAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/adapters/groups/CommentAdapter;)Lcom/airbnb/android/models/groups/Group;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/adapters/groups/CommentAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/airbnb/android/adapters/groups/CommentAdapter;->mGroup:Lcom/airbnb/android/models/groups/Group;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/adapters/groups/CommentAdapter;)Landroid/support/v4/app/FragmentManager;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/adapters/groups/CommentAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/airbnb/android/adapters/groups/CommentAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 20
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 37
    invoke-virtual/range {p0 .. p1}, Lcom/airbnb/android/adapters/groups/CommentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/groups/Comment;

    .line 38
    .local v2, "comment":Lcom/airbnb/android/models/groups/Comment;
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 40
    .local v4, "context":Landroid/content/Context;
    if-nez p2, :cond_1a

    .line 41
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    const v14, 0x7f030139

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 44
    :cond_1a
    const v13, 0x7f08035a

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/views/groups/ExpandableTextView;

    .line 45
    .local v3, "commentText":Lcom/airbnb/android/views/groups/ExpandableTextView;
    invoke-virtual {v2}, Lcom/airbnb/android/models/groups/Comment;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/airbnb/android/views/groups/ExpandableTextView;->setText(Ljava/lang/String;)V

    .line 47
    const v13, 0x7f0802ed

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/airbnb/android/views/groups/ContentStatusCounts;

    .line 48
    .local v8, "likeCommentCount":Lcom/airbnb/android/views/groups/ContentStatusCounts;
    invoke-virtual {v2}, Lcom/airbnb/android/models/groups/Comment;->getLikes()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v8, v13}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->setNumLikes(I)V

    .line 49
    invoke-virtual {v2}, Lcom/airbnb/android/models/groups/Comment;->getReplies()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v8, v13}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->setNumReplies(I)V

    .line 51
    invoke-virtual {v8}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_d2

    .line 52
    const/16 v13, 0x8

    invoke-virtual {v8, v13}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->setVisibility(I)V

    .line 57
    :goto_58
    const v13, 0x7f0802e0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 58
    .local v9, "mAuthorPostedTextView":Landroid/widget/TextView;
    const v13, 0x7f0802e1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 59
    .local v11, "mPostedAgoTextView":Landroid/widget/TextView;
    const v13, 0x7f0802df

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/airbnb/android/views/HaloImageView;

    .line 61
    .local v10, "mAvatar":Lcom/airbnb/android/views/HaloImageView;
    invoke-virtual {v2}, Lcom/airbnb/android/models/groups/Comment;->getAuthor()Lcom/airbnb/android/models/groups/Author;

    move-result-object v13

    invoke-virtual {v13}, Lcom/airbnb/android/models/groups/Author;->getUser()Lcom/airbnb/android/models/User;

    move-result-object v13

    invoke-virtual {v13}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "authorName":Ljava/lang/String;
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {v2}, Lcom/airbnb/android/models/groups/Comment;->getCreatedAt()Ljava/util/Date;

    move-result-object v5

    .line 65
    .local v5, "createdAt":Ljava/util/Date;
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/adapters/groups/CommentAdapter;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v5}, Lcom/airbnb/android/utils/DateHelper;->getRelativeDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 66
    .local v12, "timeAgo":Ljava/lang/CharSequence;
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {v2}, Lcom/airbnb/android/models/groups/Comment;->getAuthor()Lcom/airbnb/android/models/groups/Author;

    move-result-object v13

    invoke-virtual {v13}, Lcom/airbnb/android/models/groups/Author;->getUser()Lcom/airbnb/android/models/User;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/airbnb/android/views/HaloImageView;->setImageUrlForUser(Lcom/airbnb/android/models/User;)V

    .line 69
    new-instance v13, Lcom/airbnb/android/adapters/groups/CommentAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v2}, Lcom/airbnb/android/adapters/groups/CommentAdapter$1;-><init>(Lcom/airbnb/android/adapters/groups/CommentAdapter;Lcom/airbnb/android/models/groups/Comment;)V

    invoke-virtual {v10, v13}, Lcom/airbnb/android/views/HaloImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v13, 0x7f08035b

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 78
    .local v6, "divider":Landroid/view/View;
    const v13, 0x7f08035c

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 79
    .local v7, "dropShadow":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/adapters/groups/CommentAdapter;->getCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_d7

    .line 80
    const/16 v13, 0x8

    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    .line 81
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/view/View;->setVisibility(I)V

    .line 87
    :goto_d1
    return-object p2

    .line 54
    .end local v1    # "authorName":Ljava/lang/String;
    .end local v5    # "createdAt":Ljava/util/Date;
    .end local v6    # "divider":Landroid/view/View;
    .end local v7    # "dropShadow":Landroid/view/View;
    .end local v9    # "mAuthorPostedTextView":Landroid/widget/TextView;
    .end local v10    # "mAvatar":Lcom/airbnb/android/views/HaloImageView;
    .end local v11    # "mPostedAgoTextView":Landroid/widget/TextView;
    .end local v12    # "timeAgo":Ljava/lang/CharSequence;
    :cond_d2
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->setVisibility(I)V

    goto :goto_58

    .line 83
    .restart local v1    # "authorName":Ljava/lang/String;
    .restart local v5    # "createdAt":Ljava/util/Date;
    .restart local v6    # "divider":Landroid/view/View;
    .restart local v7    # "dropShadow":Landroid/view/View;
    .restart local v9    # "mAuthorPostedTextView":Landroid/widget/TextView;
    .restart local v10    # "mAvatar":Lcom/airbnb/android/views/HaloImageView;
    .restart local v11    # "mPostedAgoTextView":Landroid/widget/TextView;
    .restart local v12    # "timeAgo":Ljava/lang/CharSequence;
    :cond_d7
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    .line 84
    const/16 v13, 0x8

    invoke-virtual {v7, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d1
.end method

.method public setGroup(Lcom/airbnb/android/models/groups/Group;)V
    .registers 2
    .param p1, "group"    # Lcom/airbnb/android/models/groups/Group;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/airbnb/android/adapters/groups/CommentAdapter;->mGroup:Lcom/airbnb/android/models/groups/Group;

    .line 92
    return-void
.end method
