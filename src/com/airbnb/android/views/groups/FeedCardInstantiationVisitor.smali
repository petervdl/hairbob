.class public Lcom/airbnb/android/views/groups/FeedCardInstantiationVisitor;
.super Ljava/lang/Object;
.source "FeedCardInstantiationVisitor.java"

# interfaces
.implements Lcom/airbnb/android/models/groups/GroupContentVisitor;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGroup:Lcom/airbnb/android/models/groups/Group;

.field private mView:Lcom/airbnb/android/views/groups/BaseFeedCard;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/airbnb/android/models/groups/Group;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Lcom/airbnb/android/models/groups/Group;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/airbnb/android/views/groups/FeedCardInstantiationVisitor;->mContext:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/airbnb/android/views/groups/FeedCardInstantiationVisitor;->mGroup:Lcom/airbnb/android/models/groups/Group;

    .line 21
    return-void
.end method


# virtual methods
.method public getView()Lcom/airbnb/android/views/groups/BaseFeedCard;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/airbnb/android/views/groups/FeedCardInstantiationVisitor;->mView:Lcom/airbnb/android/views/groups/BaseFeedCard;

    return-object v0
.end method

.method public visit(Lcom/airbnb/android/models/groups/Content;)V
    .registers 5
    .param p1, "content"    # Lcom/airbnb/android/models/groups/Content;

    .prologue
    .line 34
    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Content;->hasPhotos()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 35
    new-instance v0, Lcom/airbnb/android/views/groups/ContentPhotoCard;

    iget-object v1, p0, Lcom/airbnb/android/views/groups/FeedCardInstantiationVisitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/airbnb/android/views/groups/FeedCardInstantiationVisitor;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-direct {v0, v1, v2, p1}, Lcom/airbnb/android/views/groups/ContentPhotoCard;-><init>(Landroid/content/Context;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/Content;)V

    iput-object v0, p0, Lcom/airbnb/android/views/groups/FeedCardInstantiationVisitor;->mView:Lcom/airbnb/android/views/groups/BaseFeedCard;

    .line 39
    :goto_11
    return-void

    .line 37
    :cond_12
    new-instance v0, Lcom/airbnb/android/views/groups/ContentCard;

    iget-object v1, p0, Lcom/airbnb/android/views/groups/FeedCardInstantiationVisitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/airbnb/android/views/groups/FeedCardInstantiationVisitor;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-direct {v0, v1, v2, p1}, Lcom/airbnb/android/views/groups/ContentCard;-><init>(Landroid/content/Context;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/Content;)V

    iput-object v0, p0, Lcom/airbnb/android/views/groups/FeedCardInstantiationVisitor;->mView:Lcom/airbnb/android/views/groups/BaseFeedCard;

    goto :goto_11
.end method

.method public visit(Lcom/airbnb/android/models/groups/Event;)V
    .registers 5
    .param p1, "event"    # Lcom/airbnb/android/models/groups/Event;

    .prologue
    .line 29
    new-instance v0, Lcom/airbnb/android/views/groups/EventCard;

    iget-object v1, p0, Lcom/airbnb/android/views/groups/FeedCardInstantiationVisitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/airbnb/android/views/groups/FeedCardInstantiationVisitor;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-direct {v0, v1, v2, p1}, Lcom/airbnb/android/views/groups/EventCard;-><init>(Landroid/content/Context;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/Event;)V

    iput-object v0, p0, Lcom/airbnb/android/views/groups/FeedCardInstantiationVisitor;->mView:Lcom/airbnb/android/views/groups/BaseFeedCard;

    .line 30
    return-void
.end method
