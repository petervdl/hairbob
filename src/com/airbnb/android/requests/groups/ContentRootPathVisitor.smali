.class public Lcom/airbnb/android/requests/groups/ContentRootPathVisitor;
.super Ljava/lang/Object;
.source "ContentRootPathVisitor.java"

# interfaces
.implements Lcom/airbnb/android/models/groups/GroupContentVisitor;


# instance fields
.field private rootPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRootPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 11
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/ContentRootPathVisitor;->rootPath:Ljava/lang/String;

    return-object v0
.end method

.method public visit(Lcom/airbnb/android/models/groups/Content;)V
    .registers 6
    .param p1, "content"    # Lcom/airbnb/android/models/groups/Content;

    .prologue
    .line 21
    const-string/jumbo v0, "groups/content/content-%d/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Content;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/requests/groups/ContentRootPathVisitor;->rootPath:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public visit(Lcom/airbnb/android/models/groups/Event;)V
    .registers 6
    .param p1, "event"    # Lcom/airbnb/android/models/groups/Event;

    .prologue
    .line 16
    const-string/jumbo v0, "groups/content/event-%d/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Event;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/requests/groups/ContentRootPathVisitor;->rootPath:Ljava/lang/String;

    .line 17
    return-void
.end method
