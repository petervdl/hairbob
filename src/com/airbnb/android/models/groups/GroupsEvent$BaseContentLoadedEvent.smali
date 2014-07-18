.class public Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;
.super Ljava/lang/Object;
.source "GroupsEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/models/groups/GroupsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseContentLoadedEvent"
.end annotation


# instance fields
.field public mContent:Lcom/airbnb/android/models/groups/BaseContent;

.field public mForNewComment:Z

.field public mGroup:Lcom/airbnb/android/models/groups/Group;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/BaseContent;)V
    .registers 4
    .param p1, "group"    # Lcom/airbnb/android/models/groups/Group;
    .param p2, "content"    # Lcom/airbnb/android/models/groups/BaseContent;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;->mForNewComment:Z

    .line 23
    iput-object p1, p0, Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;->mGroup:Lcom/airbnb/android/models/groups/Group;

    .line 24
    iput-object p2, p0, Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    .line 25
    return-void
.end method
