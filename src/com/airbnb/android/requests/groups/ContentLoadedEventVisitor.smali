.class public Lcom/airbnb/android/requests/groups/ContentLoadedEventVisitor;
.super Ljava/lang/Object;
.source "ContentLoadedEventVisitor.java"

# interfaces
.implements Lcom/airbnb/android/models/groups/GroupContentVisitor;


# instance fields
.field private loadedEvent:Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;

.field private mGroup:Lcom/airbnb/android/models/groups/Group;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/models/groups/Group;)V
    .registers 2
    .param p1, "group"    # Lcom/airbnb/android/models/groups/Group;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/airbnb/android/requests/groups/ContentLoadedEventVisitor;->mGroup:Lcom/airbnb/android/models/groups/Group;

    .line 17
    return-void
.end method


# virtual methods
.method public getLoadedEvent()Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/ContentLoadedEventVisitor;->loadedEvent:Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;

    return-object v0
.end method

.method public visit(Lcom/airbnb/android/models/groups/Content;)V
    .registers 4
    .param p1, "content"    # Lcom/airbnb/android/models/groups/Content;

    .prologue
    .line 26
    new-instance v0, Lcom/airbnb/android/models/groups/GroupsEvent$ContentLoadedEvent;

    iget-object v1, p0, Lcom/airbnb/android/requests/groups/ContentLoadedEventVisitor;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-direct {v0, v1, p1}, Lcom/airbnb/android/models/groups/GroupsEvent$ContentLoadedEvent;-><init>(Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/BaseContent;)V

    iput-object v0, p0, Lcom/airbnb/android/requests/groups/ContentLoadedEventVisitor;->loadedEvent:Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;

    .line 27
    return-void
.end method

.method public visit(Lcom/airbnb/android/models/groups/Event;)V
    .registers 4
    .param p1, "event"    # Lcom/airbnb/android/models/groups/Event;

    .prologue
    .line 21
    new-instance v0, Lcom/airbnb/android/models/groups/GroupsEvent$EventLoadedEvent;

    iget-object v1, p0, Lcom/airbnb/android/requests/groups/ContentLoadedEventVisitor;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-direct {v0, v1, p1}, Lcom/airbnb/android/models/groups/GroupsEvent$EventLoadedEvent;-><init>(Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/BaseContent;)V

    iput-object v0, p0, Lcom/airbnb/android/requests/groups/ContentLoadedEventVisitor;->loadedEvent:Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;

    .line 22
    return-void
.end method
