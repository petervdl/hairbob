.class public Lcom/airbnb/android/models/groups/ContentDeepCopyVisitor;
.super Ljava/lang/Object;
.source "ContentDeepCopyVisitor.java"

# interfaces
.implements Lcom/airbnb/android/models/groups/GroupContentVisitor;


# instance fields
.field private mContent:Lcom/airbnb/android/models/groups/BaseContent;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Lcom/airbnb/android/models/groups/BaseContent;
    .registers 2

    .prologue
    .line 9
    iget-object v0, p0, Lcom/airbnb/android/models/groups/ContentDeepCopyVisitor;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    return-object v0
.end method

.method public visit(Lcom/airbnb/android/models/groups/Content;)V
    .registers 3
    .param p1, "content"    # Lcom/airbnb/android/models/groups/Content;

    .prologue
    .line 19
    invoke-static {p1}, Lcom/airbnb/android/models/groups/Content;->of(Lcom/airbnb/android/models/groups/Content;)Lcom/airbnb/android/models/groups/Content;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/groups/ContentDeepCopyVisitor;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    .line 20
    return-void
.end method

.method public visit(Lcom/airbnb/android/models/groups/Event;)V
    .registers 3
    .param p1, "event"    # Lcom/airbnb/android/models/groups/Event;

    .prologue
    .line 14
    invoke-static {p1}, Lcom/airbnb/android/models/groups/Event;->of(Lcom/airbnb/android/models/groups/Event;)Lcom/airbnb/android/models/groups/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/groups/ContentDeepCopyVisitor;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    .line 15
    return-void
.end method
