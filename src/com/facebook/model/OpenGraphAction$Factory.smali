.class public final Lcom/facebook/model/OpenGraphAction$Factory;
.super Ljava/lang/Object;
.source "OpenGraphAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/model/OpenGraphAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createForPost()Lcom/facebook/model/OpenGraphAction;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 278
    const-class v0, Lcom/facebook/model/OpenGraphAction;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/model/OpenGraphAction$Factory;->createForPost(Ljava/lang/Class;Ljava/lang/String;)Lcom/facebook/model/OpenGraphAction;

    move-result-object v0

    return-object v0
.end method

.method public static createForPost(Ljava/lang/Class;Ljava/lang/String;)Lcom/facebook/model/OpenGraphAction;
    .registers 3
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/OpenGraphAction;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lcom/facebook/model/GraphObject$Factory;->create(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object v0

    check-cast v0, Lcom/facebook/model/OpenGraphAction;

    .line 299
    .local v0, "object":Lcom/facebook/model/OpenGraphAction;, "TT;"
    if-eqz p1, :cond_b

    .line 300
    invoke-interface {v0, p1}, Lcom/facebook/model/OpenGraphAction;->setType(Ljava/lang/String;)V

    .line 303
    :cond_b
    return-object v0
.end method

.method public static createForPost(Ljava/lang/String;)Lcom/facebook/model/OpenGraphAction;
    .registers 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 287
    const-class v0, Lcom/facebook/model/OpenGraphAction;

    invoke-static {v0, p0}, Lcom/facebook/model/OpenGraphAction$Factory;->createForPost(Ljava/lang/Class;Ljava/lang/String;)Lcom/facebook/model/OpenGraphAction;

    move-result-object v0

    return-object v0
.end method
