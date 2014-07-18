.class public Lcom/airbnb/android/models/groups/GroupsEvent$GroupLoadedEvent;
.super Ljava/lang/Object;
.source "GroupsEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/models/groups/GroupsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupLoadedEvent"
.end annotation


# instance fields
.field public mGroup:Lcom/airbnb/android/models/groups/Group;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/models/groups/Group;)V
    .registers 2
    .param p1, "group"    # Lcom/airbnb/android/models/groups/Group;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/airbnb/android/models/groups/GroupsEvent$GroupLoadedEvent;->mGroup:Lcom/airbnb/android/models/groups/Group;

    .line 10
    return-void
.end method
