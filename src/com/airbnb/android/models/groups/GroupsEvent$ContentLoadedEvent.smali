.class public Lcom/airbnb/android/models/groups/GroupsEvent$ContentLoadedEvent;
.super Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;
.source "GroupsEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/models/groups/GroupsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentLoadedEvent"
.end annotation


# direct methods
.method public constructor <init>(Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/BaseContent;)V
    .registers 3
    .param p1, "group"    # Lcom/airbnb/android/models/groups/Group;
    .param p2, "content"    # Lcom/airbnb/android/models/groups/BaseContent;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;-><init>(Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/BaseContent;)V

    .line 31
    return-void
.end method
