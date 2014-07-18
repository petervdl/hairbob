.class public Lcom/airbnb/android/views/SocialConnectionsCard;
.super Landroid/widget/LinearLayout;
.source "SocialConnectionsCard.java"


# static fields
.field private static final TYPE_FRIENDS:I = 0x2

.field private static final TYPE_INVALID:I = -0x1

.field private static final TYPE_MIXED:I = 0x3e8

.field private static final TYPE_REVIEW:I = 0x1


# instance fields
.field private mConnectionsRequest:Lcom/airbnb/android/requests/SocialConnectionsRequest;

.field private mShowBottomDivider:Z

.field private mShowTopDivider:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-direct {p0}, Lcom/airbnb/android/views/SocialConnectionsCard;->setupViews()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/airbnb/android/requests/SocialConnectionsRequest;ZZ)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connectionRequest"    # Lcom/airbnb/android/requests/SocialConnectionsRequest;
    .param p3, "showTopDivider"    # Z
    .param p4, "showBottomDivider"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    if-eqz p2, :cond_9

    iget-object v0, p2, Lcom/airbnb/android/requests/SocialConnectionsRequest;->connections:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    .line 36
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Connections cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_12
    iput-object p2, p0, Lcom/airbnb/android/views/SocialConnectionsCard;->mConnectionsRequest:Lcom/airbnb/android/requests/SocialConnectionsRequest;

    .line 39
    iput-boolean p3, p0, Lcom/airbnb/android/views/SocialConnectionsCard;->mShowTopDivider:Z

    .line 40
    iput-boolean p4, p0, Lcom/airbnb/android/views/SocialConnectionsCard;->mShowBottomDivider:Z

    .line 41
    invoke-direct {p0}, Lcom/airbnb/android/views/SocialConnectionsCard;->setupViews()V

    .line 42
    return-void
.end method

.method private generateTopLevelCaption()Ljava/lang/String;
    .registers 19

    .prologue
    .line 69
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/airbnb/android/views/SocialConnectionsCard;->mConnectionsRequest:Lcom/airbnb/android/requests/SocialConnectionsRequest;

    iget-object v12, v14, Lcom/airbnb/android/requests/SocialConnectionsRequest;->targetUserName:Ljava/lang/String;

    .line 70
    .local v12, "targetUserName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/airbnb/android/views/SocialConnectionsCard;->mConnectionsRequest:Lcom/airbnb/android/requests/SocialConnectionsRequest;

    iget-object v4, v14, Lcom/airbnb/android/requests/SocialConnectionsRequest;->connections:Ljava/util/ArrayList;

    .line 71
    .local v4, "connections":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/SocialConnection;>;"
    const/4 v3, -0x1

    .line 72
    .local v3, "connectionType":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/SocialConnection;

    .line 73
    .local v2, "connection":Lcom/airbnb/android/models/SocialConnection;
    invoke-virtual {v2}, Lcom/airbnb/android/models/SocialConnection;->getConnectionType()I

    move-result v13

    .line 74
    .local v13, "type":I
    const/4 v14, -0x1

    if-ne v3, v14, :cond_26

    .line 75
    move v3, v13

    goto :goto_11

    .line 76
    :cond_26
    if-eq v3, v13, :cond_11

    .line 77
    const/16 v3, 0x3e8

    goto :goto_11

    .line 82
    .end local v2    # "connection":Lcom/airbnb/android/models/SocialConnection;
    .end local v13    # "type":I
    :cond_2b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 83
    .local v5, "connectionsCount":I
    const/4 v14, 0x0

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/airbnb/android/models/SocialConnection;

    .line 84
    .local v7, "firstConnection":Lcom/airbnb/android/models/SocialConnection;
    invoke-virtual {v7}, Lcom/airbnb/android/models/SocialConnection;->getConnectionName()Ljava/lang/String;

    move-result-object v8

    .line 86
    .local v8, "firstConnectionName":Ljava/lang/String;
    const/4 v14, 0x1

    if-ne v5, v14, :cond_42

    .line 88
    invoke-virtual {v7}, Lcom/airbnb/android/models/SocialConnection;->getCaption()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "caption":Ljava/lang/String;
    :goto_41
    return-object v1

    .line 90
    .end local v1    # "caption":Ljava/lang/String;
    :cond_42
    const/4 v14, 0x2

    if-ne v5, v14, :cond_79

    .line 92
    const/4 v14, 0x1

    if-ne v3, v14, :cond_6e

    .line 93
    const v10, 0x7f0e0124

    .line 99
    .local v10, "resId":I
    :goto_4b
    const/4 v14, 0x1

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/airbnb/android/models/SocialConnection;

    invoke-virtual {v14}, Lcom/airbnb/android/models/SocialConnection;->getConnectionName()Ljava/lang/String;

    move-result-object v11

    .line 100
    .local v11, "secondConnectionName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/views/SocialConnectionsCard;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v8, v15, v16

    const/16 v16, 0x1

    aput-object v11, v15, v16

    const/16 v16, 0x2

    aput-object v12, v15, v16

    invoke-virtual {v14, v10, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .restart local v1    # "caption":Ljava/lang/String;
    goto :goto_41

    .line 94
    .end local v1    # "caption":Ljava/lang/String;
    .end local v10    # "resId":I
    .end local v11    # "secondConnectionName":Ljava/lang/String;
    :cond_6e
    const/4 v14, 0x1

    if-ne v3, v14, :cond_75

    .line 95
    const v10, 0x7f0e0129

    .restart local v10    # "resId":I
    goto :goto_4b

    .line 97
    .end local v10    # "resId":I
    :cond_75
    const v10, 0x7f0e011f

    .restart local v10    # "resId":I
    goto :goto_4b

    .line 104
    .end local v10    # "resId":I
    :cond_79
    const/4 v14, 0x2

    if-ne v3, v14, :cond_9d

    .line 105
    const v10, 0x7f0d0006

    .line 111
    .restart local v10    # "resId":I
    :goto_7f
    add-int/lit8 v6, v5, -0x1

    .line 112
    .local v6, "displayCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/views/SocialConnectionsCard;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v8, v15, v16

    const/16 v16, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    aput-object v12, v15, v16

    invoke-virtual {v14, v10, v6, v15}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "caption":Ljava/lang/String;
    goto :goto_41

    .line 106
    .end local v1    # "caption":Ljava/lang/String;
    .end local v6    # "displayCount":I
    .end local v10    # "resId":I
    :cond_9d
    const/4 v14, 0x1

    if-ne v3, v14, :cond_a4

    .line 107
    const v10, 0x7f0d0007

    .restart local v10    # "resId":I
    goto :goto_7f

    .line 109
    .end local v10    # "resId":I
    :cond_a4
    const v10, 0x7f0d0005

    .restart local v10    # "resId":I
    goto :goto_7f
.end method

.method private setupViews()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 50
    iget-object v2, p0, Lcom/airbnb/android/views/SocialConnectionsCard;->mConnectionsRequest:Lcom/airbnb/android/requests/SocialConnectionsRequest;

    iget v1, v2, Lcom/airbnb/android/requests/SocialConnectionsRequest;->connectionsCount:I

    .line 51
    .local v1, "numConnections":I
    invoke-virtual {p0}, Lcom/airbnb/android/views/SocialConnectionsCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0301d3

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 53
    iget-object v2, p0, Lcom/airbnb/android/views/SocialConnectionsCard;->mConnectionsRequest:Lcom/airbnb/android/requests/SocialConnectionsRequest;

    iget-object v2, v2, Lcom/airbnb/android/requests/SocialConnectionsRequest;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/SocialConnection;

    .line 55
    .local v0, "firstConnection":Lcom/airbnb/android/models/SocialConnection;
    const v2, 0x7f080502

    invoke-static {p0, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/airbnb/android/views/SocialConnectionsCard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0028

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    const v2, 0x7f0803ab

    invoke-static {p0, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/views/HaloImageView;

    invoke-virtual {v0}, Lcom/airbnb/android/models/SocialConnection;->getPicUrlLarge()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/HaloImageView;->setImageUrl(Ljava/lang/String;)V

    .line 61
    const v2, 0x7f080503

    invoke-static {p0, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/airbnb/android/views/SocialConnectionsCard;->mConnectionsRequest:Lcom/airbnb/android/requests/SocialConnectionsRequest;

    iget-object v3, v3, Lcom/airbnb/android/requests/SocialConnectionsRequest;->caption:Ljava/lang/String;

    if-eqz v3, :cond_7c

    iget-object v3, p0, Lcom/airbnb/android/views/SocialConnectionsCard;->mConnectionsRequest:Lcom/airbnb/android/requests/SocialConnectionsRequest;

    iget-object v3, v3, Lcom/airbnb/android/requests/SocialConnectionsRequest;->caption:Ljava/lang/String;

    :goto_60
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    const v2, 0x7f080501

    invoke-static {p0, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, Lcom/airbnb/android/views/SocialConnectionsCard;->mShowTopDivider:Z

    invoke-static {v2, v3}, Lcom/airbnb/android/utils/MiscUtils;->setVisibleIf(Landroid/view/View;Z)V

    .line 64
    const v2, 0x7f080504

    invoke-static {p0, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, Lcom/airbnb/android/views/SocialConnectionsCard;->mShowBottomDivider:Z

    invoke-static {v2, v3}, Lcom/airbnb/android/utils/MiscUtils;->setVisibleIf(Landroid/view/View;Z)V

    .line 65
    return-void

    .line 61
    :cond_7c
    invoke-direct {p0}, Lcom/airbnb/android/views/SocialConnectionsCard;->generateTopLevelCaption()Ljava/lang/String;

    move-result-object v3

    goto :goto_60
.end method
